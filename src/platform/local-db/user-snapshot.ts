import {
  LocalDbError,
  runQuery,
  type LocalDb,
} from "@/platform/local-db/local-db";
import { countAppliedIdChanges } from "@/platform/local-db/device-id-changes";
import type { VersionedSnapshot } from "@/platform/local-db/id-changes";
import { readUserConstraints } from "@/platform/local-db/user-constraints";
import {
  readUserData,
  replaceUserData,
  userTables,
  type Transaction,
  type UserData,
  type UserRow,
} from "@/platform/local-db/user-data";

/*
 * Your rows on this device with their change records: what a backup holds,
 * the shape of your tables, and putting a snapshot in place.
 */

export type ChangeRecord = {
  /* When this device last backed up to its account, the record's changedAt then; null if never. */
  baseChangedAt: string | null;
  changedAt: string;
  /* "" for the row itself (added, or deleted when `deleted`). */
  column: string;
  deleted: boolean;
  /* The row's primary key as JSON text, as `device.row_key` writes it. */
  key: string;
  table: string;
};

export type UserSnapshot = { changes: ChangeRecord[]; tables: UserData };

export type ForeignKey = {
  child: string;
  childColumns: string[];
  onDelete: "cascade" | "restrict" | "set-null";
  parent: string;
  parentColumns: string[];
};

/* The tables of yours, as the device's schema shapes them. */
export type SchemaShape = {
  foreignKeys: ForeignKey[];
  /* Each table's primary key columns, in insert order. */
  tables: { keyColumns: string[]; name: string }[];
  /* Other unique column sets (constraints and plain unique indexes). */
  uniqueKeys: { columns: string[]; table: string }[];
};

/* Postgres's own JSON text for a key, so keys match `device.row_key`. */
const toJsonText = (value: unknown): string => {
  if (Array.isArray(value)) return `[${value.map(toJsonText).join(", ")}]`;

  if (value !== null && typeof value === "object") {
    return `{${Object.entries(value)
      .sort(([left], [right]) => left.localeCompare(right))
      .map(([key, item]) => `${JSON.stringify(key)}: ${toJsonText(item)}`)
      .join(", ")}}`;
  }

  return JSON.stringify(value) ?? "null";
};

export const rowKeyOf = (row: UserRow, keyColumns: string[]) =>
  toJsonText(keyColumns.map((column) => row[column] ?? null));

/* Some change landed after the snapshot was read; try again. */
export class MovedOnError extends LocalDbError {
  constructor() {
    super("Something changed meanwhile; it tries again in a moment.");
    this.name = "MovedOnError";
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
 * Everything of yours on this device, with `seq`: the last write the device
 * had counted when it was read (null before any). Later writes count
 * higher, whatever the clocks of the devices it came from say. Read in one
 * transaction, so its rows, records and ID changes count agree.
 */
export type DeviceSnapshot = VersionedSnapshot & { seq: number | null };

export const readUserSnapshot = (db: LocalDb): Promise<DeviceSnapshot> =>
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

/* The device's write count now: the `seq` a later read compares with. */
export const readWriteCount = async (db: Pick<LocalDb, "query">) => {
  const [row] = await runQuery<{ seq: number | null }>(
    db,
    "SELECT max(seq)::float8 AS seq FROM device.changes",
  );

  return row?.seq ?? null;
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
 * Puts a snapshot (an account backup) in place of the device's data, with
 * its records as given, in one transaction; `after` runs in it last.
 * `readSeq` is the device's write count when it was read: a later write
 * means you saved (or restored) meanwhile, and nothing changes
 * (MovedOnError). So does a game data update that followed ID changes the
 * snapshot hasn't.
 */
export const applyUserSnapshot = async (
  db: LocalDb,
  snapshot: VersionedSnapshot,
  readSeq: number | null,
  after?: (tx: Transaction) => Promise<void>,
) => {
  await replaceUserData(db, snapshot.tables, {
    after: async (tx) => {
      await writeRecords(tx, snapshot.changes);
      await after?.(tx);
    },
    inside: async (tx) => {
      if (
        (await movedOn(tx, readSeq)) ||
        (await countAppliedIdChanges(tx)) !== snapshot.idChanges
      ) {
        throw new MovedOnError();
      }
    },
  });
};

/* Every write up to the one `seq` counted is in the account's backup. */
export const markBackedUp = async (
  db: Pick<LocalDb, "query">,
  seq: number | null,
) => {
  if (seq === null) return;

  await db.query(
    `UPDATE device.changes SET base_changed_at = changed_at
     WHERE seq <= $1::bigint`,
    [seq],
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
