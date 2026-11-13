import { z } from "zod";

import {
  deleteGameRows,
  findMissingReferences,
  followIdChanges,
} from "@/platform/local-db/game-data-swap";
import { recordIdChanges } from "@/platform/local-db/device-id-changes";
import { IdChangeError } from "@/platform/local-db/id-changes";
import { readMaybeGzippedText } from "@/platform/local-db/gzip";
import {
  LocalDbError,
  runQuery,
  toLocalDbError,
  type LocalDb,
} from "@/platform/local-db/local-db";
import { movePageReadRevision } from "@/platform/local-db/page-reads";
import type { Transaction } from "@/platform/local-db/user-data";

/*
 * The game data files, built from the seeds by `npm run game-data:build` and
 * served from /game-data/: one shared base file, one file per game (a version
 * group with its expansions), one learnsets file per game, and the version
 * list, versions.json, that names them. A device installs the base and a
 * game's file when it needs the game, and the game's learnsets after, in the
 * background. File names carry a hash of their content, so a file that
 * didn't change is never downloaded again. When a release changes any file
 * the device has, the device swaps all its game data for the new release at
 * once (`replaceGameData`), so its files always come from one release.
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
  const text = await readMaybeGzippedText(bytes);

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
 * Copies a file's rows in, with triggers and foreign key checks off (the
 * release build already checked the rows), which is what makes a large
 * file fast. The caller turns the checks off for its transaction.
 */
const copyFile = async (
  tx: Transaction,
  file: GameDataFile,
  onRows: (rows: number) => void,
) => {
  for (const table of file.tables) {
    if (!table.rows) continue;

    /* exec, not query: one round trip, so one IndexedDB write per table. */
    await tx.exec(
      `COPY ${table.name} (${table.columns.join(", ")}) FROM '/dev/blob'`,
      { blob: new Blob([table.copy]) },
    );
    onRows(table.rows);
  }
};

const recordFile = (
  tx: Transaction,
  entry: GameDataFileEntry,
  format: number,
) =>
  tx.query(
    "INSERT INTO device.game_data_files (name, hash, format) VALUES ($1, $2, $3)",
    [entry.name, entry.hash, format],
  );

/*
 * Installs one file in one transaction. A file another tab installed
 * meanwhile is left alone. Returns false, changing nothing, when another
 * tab moved the device to another release since: one release never mixes
 * with another.
 */
const installFile = async (
  db: LocalDb,
  entry: GameDataFileEntry,
  file: GameDataFile,
  versions: GameDataVersions,
  onRows: (rows: number) => void,
) => {
  try {
    const sameRelease = await db.transaction(async (tx) => {
      const { rows } = await tx.query<{ hash: string; name: string }>(
        "SELECT name, hash FROM device.game_data_files",
      );
      const installed = new Map(rows.map((row) => [row.name, row.hash]));

      if (isGameDataOutdated(installed, versions)) return false;
      if (installed.has(entry.name)) return true;

      await tx.exec("SET LOCAL session_replication_role = replica");
      await copyFile(tx, file, onRows);
      await tx.exec(resetSequencesSql);
      await recordFile(tx, entry, file.format);

      return true;
    });

    /* Lets Postgres reuse the log the import wrote instead of keeping it. */
    if (sameRelease) await db.exec("CHECKPOINT");

    return sameRelease;
  } catch (error) {
    throw toLocalDbError(error);
  }
};

/*
 * A release the device can't take: it leaves out game data your rows point
 * at. The device keeps the release it has.
 */
export class GameDataRefusedError extends LocalDbError {
  constructor(missing: string[]) {
    super(
      "This game data update leaves out something your Plays or Plans use, so this device keeps the game data it has.",
      { cause: new Error(missing.join("; ")) },
    );
    this.name = "GameDataRefusedError";
  }
}

/*
 * Your rows can't follow the release's ID changes: one is refused, or one
 * breaks a rule (a check, a key) once followed. Anything else (storage, a
 * dropped worker) is no refusal and is tried again.
 */
const asRefusal = (error: unknown) => {
  const cause = toLocalDbError(error);

  return error instanceof IdChangeError ||
    /^(23\d{3}|P0001)$/.test(cause.code ?? "")
    ? new GameDataRefusedError([cause.message])
    : cause;
};

/*
 * A device on the list's release follows the list's ID changes it hasn't
 * had: a release may list entries for a game file the device doesn't
 * have, and its rows must have them before that file goes in. A device
 * with no game data yet has no rows that point at any, so it takes the
 * list as followed. Returns false, changing nothing, when the device is on
 * another release (the update follows them).
 */
const catchUpIdChanges = async (db: LocalDb, versions: GameDataVersions) => {
  try {
    return await db.transaction(async (tx) => {
      const { rows } = await tx.query<{ hash: string; name: string }>(
        "SELECT name, hash FROM device.game_data_files",
      );
      const installed = new Map(rows.map((row) => [row.name, row.hash]));

      if (isGameDataOutdated(installed, versions)) return false;

      if (!installed.size) {
        await tx.exec("DELETE FROM device.id_changes");
        await recordIdChanges(tx, versions.idChanges);
      } else {
        await followIdChanges(tx, versions.idChanges);
      }

      return true;
    });
  } catch (error) {
    throw asRefusal(error);
  }
};

/*
 * Releases refused this visit, by their files' hashes and ID changes: not
 * downloaded again until the app is opened anew.
 */
const refusedReleases = new Map<string, GameDataRefusedError>();

/*
 * Swaps all the game data on the device for `entries`, the newer release of
 * the files it has (and any it asked for), in one transaction: game data
 * rows can't be told apart by file, so every one goes and the new files
 * come in whole. Your rows stay, following the release's new ID changes,
 * and a release that would leave one of them pointing at nothing (or
 * can't be followed) is refused, with the device left as it was.
 * Returns null when another tab changed the files after `before` was read.
 */
const replaceGameData = async (
  db: LocalDb,
  entries: GameDataFileEntry[],
  before: Map<string, string>,
  options: InstallOptions,
): Promise<GameDataInstall | null> => {
  const { files, totalBytes } = await downloadFiles(entries, options);
  const totalRows = entries.reduce((sum, entry) => sum + entry.rows, 0);
  let installedRows = 0;

  options.onProgress?.({ done: 0, step: "installing", total: totalRows });

  try {
    const replaced = await db.transaction(async (tx) => {
      const { rows: current } = await tx.query<{ hash: string; name: string }>(
        "SELECT name, hash FROM device.game_data_files",
      );

      if (
        current.length !== before.size ||
        current.some((row) => before.get(row.name) !== row.hash)
      ) {
        return false;
      }

      await tx.exec("SET LOCAL session_replication_role = replica");
      await deleteGameRows(tx);
      await tx.exec("DELETE FROM device.game_data_files");

      for (const [index, entry] of entries.entries()) {
        await copyFile(tx, files[index], (rows) => {
          installedRows += rows;
          options.onProgress?.({
            done: installedRows,
            step: "installing",
            total: totalRows,
          });
        });
        await recordFile(tx, entry, files[index].format);
      }

      await tx.exec(resetSequencesSql);

      try {
        await followIdChanges(tx, options.versions.idChanges);
      } catch (error) {
        throw asRefusal(error);
      }

      const missing = await findMissingReferences(tx);

      if (missing.length) throw new GameDataRefusedError(missing);

      return true;
    });

    if (!replaced) return null;

    await db.exec("CHECKPOINT");
  } catch (error) {
    throw toLocalDbError(error);
  }

  return {
    bytes: totalBytes,
    files: entries.map((entry) => entry.name),
    rows: totalRows,
    status: "updated",
  };
};

export type GameDataProgress = {
  /* Bytes while downloading, rows while installing. */
  done: number;
  step: "downloading" | "installing";
  total: number;
};

/* How far a download or install is, 0 to 100, for a progress bar. */
export const getGameDataPercent = ({ done, total }: GameDataProgress) =>
  total > 0 ? Math.min(100, Math.round((done / total) * 100)) : 0;

/* Downloads one file; reports each chunk's size as it arrives. */
export type DownloadGameDataFile = (
  path: string,
  onBytes: (bytes: number) => void,
) => Promise<Uint8Array>;

export type GameDataInstall =
  | { status: "already-installed" }
  | {
      bytes: number;
      files: string[];
      rows: number;
      /* Added to the device, or every file swapped for a newer release. */
      status: "installed" | "updated";
    };

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

/* Every file the version list names, base first, each game's learnsets after it. */
const listGameDataFiles = (versions: GameDataVersions) => [
  versions.base,
  ...versions.games.flatMap((game) => [game.data, game.learnsets]),
];

/*
 * Whether any file on the device is from another release than the list's:
 * changed since, or no longer in it.
 */
export const isGameDataOutdated = (
  installed: Map<string, string>,
  versions: GameDataVersions,
) => {
  const latest = new Map(
    listGameDataFiles(versions).map((entry) => [entry.name, entry.hash]),
  );

  return [...installed].some(([name, hash]) => latest.get(name) !== hash);
};

/* Downloads files one by one and checks each is the one the list names. */
const downloadFiles = async (
  entries: GameDataFileEntry[],
  { download = downloadGameDataFile, onProgress }: InstallOptions,
) => {
  const totalBytes = entries.reduce((sum, entry) => sum + entry.bytes, 0);
  let downloadedBytes = 0;
  const files: GameDataFile[] = [];

  onProgress?.({ done: 0, step: "downloading", total: totalBytes });

  for (const entry of entries) {
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

  return { files, totalBytes };
};

/*
 * Installs the files the device doesn't have; nothing on it changes.
 * Returns null when another tab moved the device to another release.
 */
const installMissing = async (
  db: LocalDb,
  missing: GameDataFileEntry[],
  options: InstallOptions,
): Promise<GameDataInstall | null> => {
  if (!missing.length) return { status: "already-installed" };

  const { files, totalBytes } = await downloadFiles(missing, options);
  const totalRows = missing.reduce((sum, entry) => sum + entry.rows, 0);
  let installedRows = 0;

  options.onProgress?.({ done: 0, step: "installing", total: totalRows });

  for (const [index, entry] of missing.entries()) {
    const installed = await installFile(
      db,
      entry,
      files[index],
      options.versions,
      (rows) => {
        installedRows += rows;
        options.onProgress?.({
          done: installedRows,
          step: "installing",
          total: totalRows,
        });
      },
    );

    if (!installed) return null;
  }

  return {
    bytes: totalBytes,
    files: missing.map((entry) => entry.name),
    rows: totalRows,
    status: "installed",
  };
};

/*
 * Installs `entries` from the list's release. A device on another release
 * takes the list's whole, unless `update` is false (a caller whose list may
 * be older than the device's).
 */
const installFiles = async (
  db: LocalDb,
  entries: GameDataFileEntry[],
  options: InstallOptions,
  { update = true }: { update?: boolean } = {},
): Promise<GameDataInstall> => {
  let changed = true;

  try {
    const result = await installFilesOnce(db, entries, options, { update });

    changed = result.status !== "already-installed";

    return result;
  } finally {
    /*
     * Pages read before the game was on the device read it again; so do
     * they after a failure, which may have put in some files.
     */
    if (changed) movePageReadRevision();
  }
};

const installFilesOnce = async (
  db: LocalDb,
  entries: GameDataFileEntry[],
  options: InstallOptions,
  { update }: { update: boolean },
): Promise<GameDataInstall> => {
  if ((await readInstalledSchemaHash(db)) !== options.versions.schemaHash) {
    throw new LocalDbError(
      "This game data is for another version of Voydex; reload the app first.",
    );
  }

  /* Another tab can change the files meanwhile; then this one looks again. */
  for (let attempt = 1; attempt <= 3; attempt += 1) {
    const installed = await readInstalledGameData(db);

    if (!isGameDataOutdated(installed, options.versions)) {
      if (!(await catchUpIdChanges(db, options.versions))) continue;

      const result = await installMissing(
        db,
        entries.filter((entry) => !installed.has(entry.name)),
        options,
      );

      if (result) return result;
      continue;
    }

    if (!update) {
      throw new LocalDbError(
        "The game data on this device is from another release; this waits for the update.",
      );
    }

    /* The same files with a longer ID changes list are another release. */
    const release = [
      ...listGameDataFiles(options.versions).map((entry) => entry.hash),
      JSON.stringify(options.versions.idChanges),
    ].join(" ");
    const refused = refusedReleases.get(release);

    if (refused) throw refused;

    const wanted = new Set([
      ...installed.keys(),
      ...entries.map((entry) => entry.name),
    ]);
    const result = await replaceGameData(
      db,
      listGameDataFiles(options.versions).filter((entry) =>
        wanted.has(entry.name),
      ),
      installed,
      options,
    ).catch((error: unknown) => {
      if (error instanceof GameDataRefusedError) {
        refusedReleases.set(release, error);
      }

      throw error;
    });

    if (result) return result;
  }

  throw new LocalDbError(
    "The game data on this device kept changing in another tab; try again.",
  );
};

const findGame = (versions: GameDataVersions, slug: string) => {
  const game = versions.games.find((item) => item.slug === slug);

  if (!game) throw new LocalDbError(`There is no game data for "${slug}".`);

  return game;
};

/*
 * The base file alone: games, Pokémon, moves and the other lists every game
 * shares, so Voydex can show Plays and pick a game before any game file is
 * on the device.
 */
export const installGameBase = (db: LocalDb, options: InstallOptions) =>
  installFiles(db, [options.versions.base], options);

/*
 * Makes a game ready to play on this device: the base file (once per device)
 * and the game's own file. A game already on the device downloads nothing.
 * With `update` false it never swaps the device's release, and refuses
 * instead when the device is on another one (the background downloads).
 */
export const installGame = async (
  db: LocalDb,
  slug: string,
  options: InstallOptions,
  { update = true }: { update?: boolean } = {},
) => {
  const game = findGame(options.versions, slug);

  return installFiles(db, [options.versions.base, game.data], options, {
    update,
  });
};

/*
 * A game's learnsets, after the game itself; meant for the background. It
 * never swaps releases: its list may be older than the device's.
 */
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

  return installFiles(db, [game.learnsets], options, { update: false });
};

/*
 * Brings the files on the device to the list's release, downloading the new
 * release of each one it has; a device that is current downloads nothing.
 */
export const updateGameData = (db: LocalDb, options: InstallOptions) =>
  installFiles(db, [], options);

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
export const downloadGameDataFile: DownloadGameDataFile = (path, onBytes) =>
  fetchGameDataFile(path, onBytes);

/*
 * The same, given up after `ms` (the body included), for a download nobody
 * waits on: a stalled one would otherwise hold the background for the
 * whole visit.
 */
export const downloadGameDataFileWithin =
  (ms: number): DownloadGameDataFile =>
  (path, onBytes) =>
    fetchGameDataFile(path, onBytes, AbortSignal.timeout(ms));

const fetchGameDataFile = async (
  path: string,
  onBytes: (bytes: number) => void,
  signal?: AbortSignal,
) => {
  const response = await fetch(`${gameDataUrl}/${path}`, { signal });

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
