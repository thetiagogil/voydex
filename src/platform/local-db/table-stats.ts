import { runQuery, type LocalDb } from "@/platform/local-db/local-db";

/*
 * Postgres picks how to run each read from what it knows about the tables:
 * how many rows they hold and which values are common. A server learns
 * that on its own, in the background; the device database never does
 * (PGlite runs no background work), so without it the Play views take the
 * slow way round. With the 44 Plays of the fixture account, getting the
 * app's tabs ready took 12 s instead of about 1.5 s.
 *
 * So the device looks at its tables (`ANALYZE`): the game data's once game
 * data goes in, yours once a backup or a file goes in, and all of them when
 * it opens with a table it never looked at, or one that was empty when it
 * last looked and has rows now (a device from before this, a device update
 * that added a table, your first Play). Everyday saves don't need it: once
 * a table has rows, what Postgres learnt keeps up as it grows.
 */

/* The schemas of each kind of table. */
const tableSchemas = {
  game: ["reference"],
  yours: ["gameplay", "planning", "public", "tracking"],
} as const;

const appSchemas = ["device", ...tableSchemas.game, ...tableSchemas.yours];

/*
 * Looks at the game data's tables or yours again. Never fails: without it
 * the app is slower, not wrong.
 */
export const refreshTableStats = async (
  db: Pick<LocalDb, "exec" | "query">,
  kind: keyof typeof tableSchemas,
) => {
  try {
    const tables = await runQuery<{ name: string }>(
      db,
      `SELECT c.oid::regclass::text AS name FROM pg_class c
       JOIN pg_namespace n ON n.oid = c.relnamespace
       WHERE c.relkind = 'r' AND n.nspname = ANY ($1)
       ORDER BY 1`,
      [tableSchemas[kind]],
    );

    if (tables.length) {
      await db.exec(`ANALYZE ${tables.map((table) => table.name).join(", ")}`);
    }
  } catch {
    /* Slower reads until the next time it looks. */
  }
};

/*
 * Whether a table of the app's was never looked at (Postgres marks one
 * with -1 rows until it is), or was empty when it was and has rows now.
 */
const hasUnseenTables = async (db: Pick<LocalDb, "query">) => {
  const [row] = await runQuery<{ unseen: boolean }>(
    db,
    `SELECT EXISTS (
       SELECT 1 FROM pg_class c
       JOIN pg_namespace n ON n.oid = c.relnamespace
       WHERE c.relkind = 'r' AND n.nspname = ANY ($1)
         AND (c.reltuples < 0 OR (c.relpages = 0 AND pg_relation_size(c.oid) > 0))
     ) AS unseen`,
    [appSchemas],
  );

  return row?.unseen ?? false;
};

/*
 * Looks at every table if one is unseen (see above), as the device opens.
 * Never fails.
 */
export const ensureTableStats = async (db: Pick<LocalDb, "exec" | "query">) => {
  const unseen = await hasUnseenTables(db).catch(() => false);

  if (unseen) await db.exec("ANALYZE").catch(() => undefined);
};
