import { z } from "zod";

import {
  LocalDbError,
  runQuery,
  toLocalDbError,
  type LocalDb,
} from "@/platform/local-db/local-db";

/*
 * A game data file, built from the seeds by `npm run local-db:game-file`:
 * every seeded row of the shared tables plus one game's rows (its version
 * group and expansions), as Postgres COPY text per table. Format 1 holds the
 * shared rows too, so a device takes one game file; splitting a shared base
 * file from the per-game files comes with the release build.
 */
export const gameFileFormat = 1;

const tableNamePattern =
  /^(public|reference|tracking|gameplay|planning)\.[a-z_][a-z0-9_]*$/;
const columnNamePattern = /^[a-z_][a-z0-9_]*$/;

const gameFileSchema = z.object({
  builtAt: z.iso.datetime(),
  format: z.literal(gameFileFormat),
  slug: z.string().regex(/^[a-z0-9]+(?:-[a-z0-9]+)*$/),
  tables: z.array(
    z.object({
      columns: z.array(z.string().regex(columnNamePattern)).min(1),
      copy: z.string(),
      name: z.string().regex(tableNamePattern),
      rows: z.number().int().nonnegative(),
    }),
  ),
  versionGroupIds: z.array(z.number().int().positive()).min(1),
});

export type GameFile = z.infer<typeof gameFileSchema>;

export const parseGameFile = (value: unknown): GameFile => {
  const result = gameFileSchema.safeParse(value);

  if (!result.success) {
    throw new LocalDbError("That game data file is broken or too new.", {
      cause: result.error,
    });
  }

  return result.data;
};

const isGzip = (bytes: Uint8Array) => bytes[0] === 0x1f && bytes[1] === 0x8b;

/*
 * Reads a downloaded game file. It is gzipped on disk; a server that already
 * unzipped it on the way (Content-Encoding) hands over plain JSON instead.
 */
export const readGameFileBytes = async (bytes: Uint8Array) => {
  const text = isGzip(bytes)
    ? await new Response(
        new Blob([bytes as BlobPart])
          .stream()
          .pipeThrough(new DecompressionStream("gzip")),
      ).text()
    : new TextDecoder().decode(bytes);

  return parseGameFile(JSON.parse(text));
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

export type GameFileImport =
  | { status: "already-imported" }
  | { rows: number; status: "imported" };

export const readImportedGameSlugs = async (db: LocalDb) => {
  const rows = await runQuery<{ slug: string }>(
    db,
    "SELECT slug FROM device.game_files ORDER BY imported_at",
  );

  return rows.map((row) => row.slug);
};

/*
 * Copies a game file into the device database in one transaction. Rows go in
 * with triggers and foreign key checks off (the release build already checked
 * them), which is what makes a large file fast to import.
 */
export const importGameFile = async (
  db: LocalDb,
  file: GameFile,
): Promise<GameFileImport> => {
  const imported = await readImportedGameSlugs(db);

  if (imported.includes(file.slug)) return { status: "already-imported" };

  if (imported.length) {
    throw new LocalDbError(
      `This device already has ${imported.join(", ")}; format ${gameFileFormat} game files hold the shared rows too, so a device takes only one.`,
    );
  }

  let rows = 0;

  try {
    await db.transaction(async (tx) => {
      await tx.exec("SET LOCAL session_replication_role = replica");

      for (const table of file.tables) {
        if (!table.rows) continue;

        /* exec, not query: one round trip, so one IndexedDB write per table. */
        await tx.exec(
          `COPY ${table.name} (${table.columns.join(", ")}) FROM '/dev/blob'`,
          { blob: new Blob([table.copy]) },
        );
        rows += table.rows;
      }

      await tx.exec(resetSequencesSql);
      await tx.query(
        "INSERT INTO device.game_files (slug, format, built_at) VALUES ($1, $2, $3)",
        [file.slug, file.format, file.builtAt],
      );
    });
    /* Lets Postgres reuse the log the import wrote instead of keeping it. */
    await db.exec("CHECKPOINT");
  } catch (error) {
    throw toLocalDbError(error);
  }

  return { rows, status: "imported" };
};
