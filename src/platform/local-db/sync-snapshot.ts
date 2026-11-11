import {
  LocalDbError,
  runQuery,
  type LocalDb,
} from "@/platform/local-db/local-db";
import {
  type ChangeRecord,
  type ForeignKey,
  type SchemaShape,
  type SyncSnapshot,
} from "@/platform/local-db/sync-merge";
import {
  readUserData,
  replaceUserData,
  userTables,
  type Transaction,
} from "@/platform/local-db/user-data";

/*
 * This device's side of a sync: its rows with their change records, the
 * shape of its tables for the merge, and putting a merged snapshot in
 * place.
 */

/* Some change landed after the snapshot was read; sync again. */
export class SyncMovedOnError extends LocalDbError {
  constructor() {
    super("Something changed while syncing; it syncs again in a moment.");
    this.name = "SyncMovedOnError";
  }
}

const userTableNames = userTables.map((table) => table.name);

const deleteActions: Record<string, ForeignKey["onDelete"]> = {
  c: "cascade",
  n: "set-null",
};

/* The tables of yours as this device's schema has them. */
export const readSchemaShape = async (db: LocalDb): Promise<SchemaShape> => {
  const columnsOf = (attnums: string, table: string) =>
    `(SELECT array_agg(a.attname::text ORDER BY k.position)
        FROM unnest(${attnums}) WITH ORDINALITY k(attnum, position)
        JOIN pg_attribute a ON a.attrelid = ${table} AND a.attnum = k.attnum)`;
  /* "public.profiles", never the bare name the search path allows. */
  const nameOf = (oid: string) =>
    `(SELECT n.nspname || '.' || r.relname FROM pg_class r
        JOIN pg_namespace n ON n.oid = r.relnamespace WHERE r.oid = ${oid})`;
  const constraints = await runQuery<{
    child: string;
    child_columns: string[];
    kind: string;
    on_delete: string;
    parent: string | null;
    parent_columns: string[] | null;
  }>(
    db,
    `SELECT * FROM (
     SELECT ${nameOf("c.conrelid")} AS child, c.contype AS kind,
       c.confdeltype AS on_delete,
       ${nameOf("NULLIF(c.confrelid, 0)")} AS parent,
       ${columnsOf("c.conkey", "c.conrelid")} AS child_columns,
       ${columnsOf("c.confkey", "c.confrelid")} AS parent_columns
     FROM pg_constraint c
     WHERE c.contype IN ('p', 'u', 'f')
     UNION ALL
     SELECT ${nameOf("i.indrelid")}, 'i', '', NULL,
       ${columnsOf("i.indkey::int2[]", "i.indrelid")}, NULL
     FROM pg_index i
     WHERE i.indisunique AND NOT i.indisprimary AND i.indexprs IS NULL
       AND NOT EXISTS (SELECT 1 FROM pg_constraint c WHERE c.conindid = i.indexrelid)
     ) found WHERE child = ANY ($1)`,
    [userTableNames],
  );
  const keyColumns = new Map(
    constraints
      .filter((constraint) => constraint.kind === "p")
      .map((constraint) => [constraint.child, constraint.child_columns]),
  );

  return {
    foreignKeys: constraints
      .filter((constraint) => constraint.kind === "f")
      .map((constraint) => ({
        child: constraint.child,
        childColumns: constraint.child_columns,
        onDelete: deleteActions[constraint.on_delete] ?? "restrict",
        parent: constraint.parent!,
        parentColumns: constraint.parent_columns ?? [],
      })),
    tables: userTableNames.map((name) => {
      const columns = keyColumns.get(name);

      if (!columns) throw new LocalDbError(`${name} has no primary key.`);

      return { keyColumns: columns, name };
    }),
    uniqueKeys: constraints
      .filter((constraint) => ["i", "u"].includes(constraint.kind))
      .map((constraint) => ({
        columns: constraint.child_columns,
        table: constraint.child,
      })),
  };
};

/* Times as ISO text, the way the rows carry theirs. */
const recordColumns = `table_name AS "table", row_key AS "key",
  column_name AS "column", deleted,
  to_jsonb(changed_at) #>> '{}' AS "changedAt",
  to_jsonb(base_changed_at) #>> '{}' AS "baseChangedAt"`;

export const readChangeRecords = (db: LocalDb) =>
  runQuery<ChangeRecord>(
    db,
    `SELECT ${recordColumns} FROM device.changes ORDER BY 1, 2, 3`,
  );

/*
 * This device's side of a sync, with `seq`: the last write the device had
 * counted when it was read (null before any). Later writes count higher,
 * whatever the clocks of the devices merged into it say.
 */
export type DeviceSnapshot = SyncSnapshot & { seq: number | null };

export const readSyncSnapshot = async (
  db: LocalDb,
): Promise<DeviceSnapshot> => {
  /* The count first: a write that lands after it still counts as new. */
  const [{ seq }] = await runQuery<{ seq: number | null }>(
    db,
    "SELECT max(seq)::float8 AS seq FROM device.changes",
  );
  const changes = await readChangeRecords(db);

  return { changes, seq, tables: await readUserData(db) };
};

const writeRecords = async (tx: Transaction, changes: ChangeRecord[]) => {
  await tx.exec("DELETE FROM device.changes");

  if (!changes.length) return;

  await tx.query(
    `INSERT INTO device.changes
       (table_name, row_key, column_name, changed_at, base_changed_at, deleted)
     SELECT r."table", r."key", r."column", r."changedAt",
       r."baseChangedAt", r.deleted
     FROM jsonb_to_recordset($1::jsonb) AS r ("table" text, "key" text,
       "column" text, "changedAt" timestamptz, "baseChangedAt" timestamptz,
       deleted boolean)`,
    [JSON.stringify(changes)],
  );
};

/* Whether a write landed on the device after the one `seq` counted. */
const movedOn = async (tx: Transaction, seq: number | null) => {
  const { rows } = await tx.query<{ moved: boolean }>(
    `SELECT EXISTS (SELECT 1 FROM device.changes
       WHERE $1::bigint IS NULL OR seq > $1::bigint) AS moved`,
    [seq],
  );

  return rows[0]?.moved ?? false;
};

/*
 * Puts a merged snapshot in place of the device's data, with its records
 * as given (their base is the account's version they were merged with),
 * in one transaction. `readSeq` is the device's write count when the
 * merge read it: a later write means you saved (or restored) meanwhile,
 * and nothing changes (SyncMovedOnError) so the next sync takes it in.
 */
export const applySyncSnapshot = async (
  db: LocalDb,
  snapshot: SyncSnapshot,
  readSeq: number | null,
) => {
  await replaceUserData(db, snapshot.tables, {
    after: (tx) => writeRecords(tx, snapshot.changes),
    inside: async (tx) => {
      if (await movedOn(tx, readSeq)) throw new SyncMovedOnError();
    },
  });
};

/* Every write up to the one `seq` counted reached the account. */
export const markSynced = async (db: LocalDb, seq: number | null) => {
  if (seq === null) return;

  await db.query(
    `UPDATE device.changes SET base_changed_at = changed_at
     WHERE seq <= $1::bigint`,
    [seq],
  );
};

/*
 * Records the deletion, now, of rows this device doesn't have: what a
 * restored backup sends the account in place of what it held.
 */
export const recordDeletions = async (
  db: LocalDb,
  keys: { key: string; table: string }[],
) => {
  if (!keys.length) return;

  await db.query(
    `INSERT INTO device.changes (table_name, row_key, column_name, changed_at, deleted)
     SELECT r."table", r."key", '', clock_timestamp(), TRUE
     FROM jsonb_to_recordset($1::jsonb) AS r ("table" text, "key" text)
     ON CONFLICT (table_name, row_key, column_name) DO UPDATE SET
       changed_at = EXCLUDED.changed_at, deleted = TRUE,
       base_changed_at = NULL, seq = EXCLUDED.seq`,
    [JSON.stringify(keys)],
  );
};

/*
 * After a file restore: the rows in place, and the file's records with
 * them (rows without one count as added when the file was saved).
 */
export const restoreChangeRecords = async (
  tx: Transaction,
  changes: ChangeRecord[],
) => {
  await writeRecords(tx, changes);
};
