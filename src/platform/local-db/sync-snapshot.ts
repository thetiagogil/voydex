import {
  LocalDbError,
  runQuery,
  type LocalDb,
} from "@/platform/local-db/local-db";
import { countAppliedIdChanges } from "@/platform/local-db/device-id-changes";
import type { VersionedSnapshot } from "@/platform/local-db/id-changes";
import {
  type ChangeRecord,
  type ForeignKey,
  type SchemaShape,
} from "@/platform/local-db/sync-merge";
import { readUserConstraints } from "@/platform/local-db/user-constraints";
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
  const constraints = await readUserConstraints(db);
  const keyColumns = new Map(
    constraints
      .filter((constraint) => constraint.kind === "p")
      .map((constraint) => [constraint.child, constraint.childColumns]),
  );

  return {
    foreignKeys: constraints
      .filter((constraint) => constraint.kind === "f")
      .map((constraint) => ({
        child: constraint.child,
        childColumns: constraint.childColumns,
        onDelete: deleteActions[constraint.onDelete] ?? "restrict",
        parent: constraint.parent!,
        parentColumns: constraint.parentColumns,
      })),
    tables: userTableNames.map((name) => {
      const columns = keyColumns.get(name);

      if (!columns) throw new LocalDbError(`${name} has no primary key.`);

      return { keyColumns: columns, name };
    }),
    uniqueKeys: constraints
      .filter((constraint) => ["i", "u"].includes(constraint.kind))
      .map((constraint) => ({
        columns: constraint.childColumns,
        table: constraint.child,
      })),
  };
};

/* Times as ISO text, the way the rows carry theirs. */
const recordColumns = `table_name AS "table", row_key AS "key",
  column_name AS "column", deleted,
  to_jsonb(changed_at) #>> '{}' AS "changedAt",
  to_jsonb(base_changed_at) #>> '{}' AS "baseChangedAt"`;

export const readChangeRecords = (db: Pick<LocalDb, "query">) =>
  runQuery<ChangeRecord>(
    db,
    `SELECT ${recordColumns} FROM device.changes ORDER BY 1, 2, 3`,
  );

/*
 * This device's side of a sync, with `seq`: the last write the device had
 * counted when it was read (null before any). Later writes count higher,
 * whatever the clocks of the devices merged into it say. Read in one
 * transaction, so its rows, records and ID changes count agree.
 */
export type DeviceSnapshot = VersionedSnapshot & { seq: number | null };

export const readSyncSnapshot = (db: LocalDb): Promise<DeviceSnapshot> =>
  db.transaction(async (tx) => {
    const [{ idChanges, seq }] = await runQuery<{
      idChanges: number;
      seq: number | null;
    }>(
      tx,
      `SELECT (SELECT max(seq)::float8 FROM device.changes) AS seq,
         (SELECT count(*)::int FROM device.id_changes) AS "idChanges"`,
    );
    const changes = await readChangeRecords(tx);

    return { changes, idChanges, seq, tables: await readUserData(tx) };
  });

/* Puts `changes` in place of every change record, inside `tx`. */
export const writeRecords = async (
  tx: Transaction,
  changes: ChangeRecord[],
) => {
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
 * and nothing changes (SyncMovedOnError) so the next sync takes it in. So
 * does a game data update that followed ID changes the snapshot hasn't.
 */
export const applySyncSnapshot = async (
  db: LocalDb,
  snapshot: VersionedSnapshot,
  readSeq: number | null,
) => {
  await replaceUserData(db, snapshot.tables, {
    after: (tx) => writeRecords(tx, snapshot.changes),
    inside: async (tx) => {
      if (
        (await movedOn(tx, readSeq)) ||
        (await countAppliedIdChanges(tx)) !== snapshot.idChanges
      ) {
        throw new SyncMovedOnError();
      }
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
