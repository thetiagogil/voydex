import { z } from "zod";

import {
  LocalDbError,
  runQuery,
  toLocalDbError,
  type LocalDb,
} from "@/platform/local-db/local-db";

/*
 * The game data files, built from the seeds by `npm run game-data:build` and
 * served from /game-data/: one shared base file, one file per game (a version
 * group with its expansions), one learnsets file per game, and the version
 * list, versions.json, that names them. A device installs the base and a
 * game's file when it needs the game, and the game's learnsets after, in the
 * background. File names carry a hash of their content, so a file that
 * didn't change is never downloaded again.
 */
export const gameDataFormat = 2;

const gameDataUrl = "/game-data";

const slugPattern = /^[a-z0-9]+(?:-[a-z0-9]+)*$/;
const tableNamePattern =
  /^(public|reference|tracking|gameplay|planning)\.[a-z_][a-z0-9_]*$/;
const columnNamePattern = /^[a-z_][a-z0-9_]*$/;

const fileEntrySchema = z.object({
  bytes: z.number().int().positive(),
  hash: z.string().regex(/^[0-9a-f]{64}$/),
  name: z.string().regex(slugPattern),
  path: z.string().regex(/^[a-z0-9-]+\.[0-9a-f]{16}\.json\.gz$/),
  rows: z.number().int().nonnegative(),
});

const versionsSchema = z.object({
  base: fileEntrySchema,
  builtAt: z.iso.datetime(),
  format: z.literal(gameDataFormat),
  games: z.array(
    z.object({
      data: fileEntrySchema,
      learnsets: fileEntrySchema,
      slug: z.string().regex(slugPattern),
      versionGroupIds: z.array(z.number().int().positive()).min(1),
    }),
  ),
  /* What became of each removed or reused ID, applied to saved Plays. */
  idChanges: z.array(
    z.object({
      becomes: z.string().nullable(),
      id: z.string(),
      reason: z.string(),
      table: z.string().regex(tableNamePattern),
    }),
  ),
  /* The device schema these files fit. */
  schemaHash: z.string().regex(/^[0-9a-f]{64}$/),
});

const fileSchema = z.object({
  format: z.literal(gameDataFormat),
  kind: z.enum(["base", "game", "learnsets"]),
  slug: z.string().regex(slugPattern),
  tables: z.array(
    z.object({
      columns: z.array(z.string().regex(columnNamePattern)).min(1),
      copy: z.string(),
      name: z.string().regex(tableNamePattern),
      rows: z.number().int().nonnegative(),
    }),
  ),
});

export type GameDataVersions = z.infer<typeof versionsSchema>;
export type GameDataFileEntry = z.infer<typeof fileEntrySchema>;
export type GameDataFile = z.infer<typeof fileSchema>;

export const parseGameDataVersions = (value: unknown): GameDataVersions => {
  const result = versionsSchema.safeParse(value);

  if (!result.success) {
    throw new LocalDbError("The game data list is broken or too new.", {
      cause: result.error,
    });
  }

  return result.data;
};

const parseGameDataFile = (value: unknown): GameDataFile => {
  const result = fileSchema.safeParse(value);

  if (!result.success) {
    throw new LocalDbError("That game data file is broken or too new.", {
      cause: result.error,
    });
  }

  return result.data;
};

const isGzip = (bytes: Uint8Array) => bytes[0] === 0x1f && bytes[1] === 0x8b;

const sha256Hex = async (text: string) => {
  const digest = await crypto.subtle.digest(
    "SHA-256",
    new TextEncoder().encode(text),
  );

  return Array.from(new Uint8Array(digest), (byte) =>
    byte.toString(16).padStart(2, "0"),
  ).join("");
};

/*
 * Reads a downloaded game data file and checks it is the one the version
 * list names. It is gzipped on disk; a server that already unzipped it on
 * the way (Content-Encoding) hands over plain JSON instead.
 */
export const readGameDataFile = async (
  bytes: Uint8Array,
  entry: Pick<GameDataFileEntry, "hash" | "name">,
): Promise<GameDataFile> => {
  const text = isGzip(bytes)
    ? await new Response(
        new Blob([bytes as BlobPart])
          .stream()
          .pipeThrough(new DecompressionStream("gzip")),
      ).text()
    : new TextDecoder().decode(bytes);

  if ((await sha256Hex(text)) !== entry.hash) {
    throw new LocalDbError(
      `The ${entry.name} game data file didn't download whole; try again.`,
    );
  }

  return parseGameDataFile(JSON.parse(text));
};

/* The game file that holds a version group (an expansion is in its game's). */
export const findGameData = (
  versions: GameDataVersions,
  versionGroupId: number,
) =>
  versions.games.find((game) =>
    game.versionGroupIds.includes(versionGroupId),
  ) ?? null;

/* The files on this device, by name, with the hash of what was installed. */
export const readInstalledGameData = async (db: LocalDb) => {
  const rows = await runQuery<{ hash: string; name: string }>(
    db,
    "SELECT name, hash FROM device.game_data_files ORDER BY imported_at, name",
  );

  return new Map(rows.map((row) => [row.name, row.hash]));
};

/* After COPY, sequences sit behind the copied ids; move them past. */
const resetSequencesSql = `
DO $$
DECLARE
    item record;
BEGIN
    FOR item IN
        SELECT n.nspname AS schema_name, c.relname AS table_name, a.attname AS column_name,
            pg_get_serial_sequence(format('%I.%I', n.nspname, c.relname), a.attname) AS sequence_name
        FROM pg_attribute a
        JOIN pg_class c ON c.oid = a.attrelid
        JOIN pg_namespace n ON n.oid = c.relnamespace
        WHERE n.nspname IN ('public', 'reference', 'tracking', 'gameplay', 'planning')
            AND c.relkind = 'r' AND a.attnum > 0 AND NOT a.attisdropped
            AND pg_get_serial_sequence(format('%I.%I', n.nspname, c.relname), a.attname) IS NOT NULL
    LOOP
        EXECUTE format('SELECT setval(%L, coalesce((SELECT max(%I) FROM %I.%I), 0) + 1, false)',
            item.sequence_name, item.column_name, item.schema_name, item.table_name);
    END LOOP;
END
$$;`;

/*
 * Copies one file into the device database in one transaction, with
 * triggers and foreign key checks off (the release build already checked
 * the rows), which is what makes a large file fast. A file another tab
 * installed meanwhile is left alone.
 */
const installFile = async (
  db: LocalDb,
  entry: GameDataFileEntry,
  file: GameDataFile,
  onRows: (rows: number) => void,
) => {
  try {
    await db.transaction(async (tx) => {
      const { rows: installed } = await tx.query(
        "SELECT 1 FROM device.game_data_files WHERE name = $1",
        [entry.name],
      );

      if (installed.length) return;

      await tx.exec("SET LOCAL session_replication_role = replica");

      for (const table of file.tables) {
        if (!table.rows) continue;

        /* exec, not query: one round trip, so one IndexedDB write per table. */
        await tx.exec(
          `COPY ${table.name} (${table.columns.join(", ")}) FROM '/dev/blob'`,
          { blob: new Blob([table.copy]) },
        );
        onRows(table.rows);
      }

      await tx.exec(resetSequencesSql);
      await tx.query(
        "INSERT INTO device.game_data_files (name, hash, format) VALUES ($1, $2, $3)",
        [entry.name, entry.hash, file.format],
      );
    });
    /* Lets Postgres reuse the log the import wrote instead of keeping it. */
    await db.exec("CHECKPOINT");
  } catch (error) {
    throw toLocalDbError(error);
  }
};

export type GameDataProgress = {
  /* Bytes while downloading, rows while installing. */
  done: number;
  step: "downloading" | "installing";
  total: number;
};

/* Downloads one file; reports each chunk's size as it arrives. */
export type DownloadGameDataFile = (
  path: string,
  onBytes: (bytes: number) => void,
) => Promise<Uint8Array>;

export type GameDataInstall =
  | { status: "already-installed" }
  | { bytes: number; files: string[]; rows: number; status: "installed" };

type InstallOptions = {
  download?: DownloadGameDataFile;
  onProgress?: (progress: GameDataProgress) => void;
  versions: GameDataVersions;
};

const readInstalledSchemaHash = async (db: LocalDb) => {
  const [row] = await runQuery<{ schema_hash: string }>(
    db,
    "SELECT schema_hash FROM device.installs",
  );

  return row?.schema_hash ?? null;
};

const installFiles = async (
  db: LocalDb,
  entries: GameDataFileEntry[],
  { download = downloadGameDataFile, onProgress, versions }: InstallOptions,
): Promise<GameDataInstall> => {
  if ((await readInstalledSchemaHash(db)) !== versions.schemaHash) {
    throw new LocalDbError(
      "This game data is for another version of Voydex; reload the app first.",
    );
  }

  const installed = await readInstalledGameData(db);
  const outdated = entries.find(
    (entry) =>
      installed.has(entry.name) && installed.get(entry.name) !== entry.hash,
  );

  if (outdated) {
    throw new LocalDbError(
      `The ${outdated.name} game data on this device is older than this app's; updating it comes with device updates.`,
    );
  }

  const missing = entries.filter((entry) => !installed.has(entry.name));

  if (!missing.length) return { status: "already-installed" };

  const totalBytes = missing.reduce((sum, entry) => sum + entry.bytes, 0);
  const totalRows = missing.reduce((sum, entry) => sum + entry.rows, 0);
  let downloadedBytes = 0;
  let installedRows = 0;
  const files: GameDataFile[] = [];

  onProgress?.({ done: 0, step: "downloading", total: totalBytes });

  for (const entry of missing) {
    const bytes = await download(entry.path, (chunk) => {
      downloadedBytes += chunk;
      onProgress?.({
        done: Math.min(downloadedBytes, totalBytes),
        step: "downloading",
        total: totalBytes,
      });
    });

    files.push(await readGameDataFile(bytes, entry));
  }

  onProgress?.({ done: 0, step: "installing", total: totalRows });

  for (const [index, entry] of missing.entries()) {
    await installFile(db, entry, files[index], (rows) => {
      installedRows += rows;
      onProgress?.({
        done: installedRows,
        step: "installing",
        total: totalRows,
      });
    });
  }

  return {
    bytes: totalBytes,
    files: missing.map((entry) => entry.name),
    rows: totalRows,
    status: "installed",
  };
};

const findGame = (versions: GameDataVersions, slug: string) => {
  const game = versions.games.find((item) => item.slug === slug);

  if (!game) throw new LocalDbError(`There is no game data for "${slug}".`);

  return game;
};

/*
 * Makes a game ready to play on this device: the base file (once per device)
 * and the game's own file. A game already on the device downloads nothing.
 */
export const installGame = async (
  db: LocalDb,
  slug: string,
  options: InstallOptions,
) => {
  const game = findGame(options.versions, slug);

  return installFiles(db, [options.versions.base, game.data], options);
};

/* A game's learnsets, after the game itself; meant for the background. */
export const installGameLearnsets = async (
  db: LocalDb,
  slug: string,
  options: InstallOptions,
) => {
  const game = findGame(options.versions, slug);
  const installed = await readInstalledGameData(db);

  if (!installed.has(game.data.name)) {
    throw new LocalDbError(`Install ${slug} before its learnsets.`);
  }

  return installFiles(db, [game.learnsets], options);
};

/* The version list; always asked fresh, it is small and names the files. */
export const fetchGameDataVersions = async () => {
  const response = await fetch(`${gameDataUrl}/versions.json`, {
    cache: "no-cache",
  });

  if (!response.ok) {
    throw new LocalDbError(
      "The game data list didn't download. Check the connection and try again.",
    );
  }

  return parseGameDataVersions(await response.json());
};

/*
 * Downloads a file in chunks, so the progress bar moves. A file's name
 * changes with its content, so the browser may keep it as long as it likes.
 */
export const downloadGameDataFile: DownloadGameDataFile = async (
  path,
  onBytes,
) => {
  const response = await fetch(`${gameDataUrl}/${path}`);

  if (!response.ok || !response.body) {
    throw new LocalDbError(
      "The game data didn't download. Check the connection and try again.",
    );
  }

  const reader = response.body.getReader();
  const chunks: Uint8Array[] = [];
  let length = 0;

  for (;;) {
    const { done, value } = await reader.read();

    if (done) break;

    chunks.push(value);
    length += value.byteLength;
    onBytes(value.byteLength);
  }

  const bytes = new Uint8Array(length);
  let offset = 0;

  for (const chunk of chunks) {
    bytes.set(chunk, offset);
    offset += chunk.byteLength;
  }

  return bytes;
};
