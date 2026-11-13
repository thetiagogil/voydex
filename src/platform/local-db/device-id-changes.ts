import {
  applyIdChanges,
  IdChangeError,
  targetId,
  type GameLink,
  type IdChange,
  type IdChangeShape,
  type IdChangeTargets,
  type UserLink,
  type VersionedSnapshot,
} from "@/platform/local-db/id-changes";
import {
  LocalDbError,
  runQuery,
  type LocalDb,
} from "@/platform/local-db/local-db";
import { readUserConstraints } from "@/platform/local-db/user-constraints";
import {
  readNeededVersionGroups,
  userTables,
  type UserRow,
} from "@/platform/local-db/user-data";

/*
 * The device's side of ID changes (see id-changes.ts): the links of your
 * tables as its schema has them, the game data rows new IDs name, the
 * entries it followed (device.id_changes), and bringing snapshots from
 * elsewhere up to date.
 */

/* Something that runs SQL: the device database or a transaction on it. */
export type Queryable = Pick<LocalDb, "query">;

const userTableFilters = new Map(
  userTables.map((table) => [table.name, table.where ?? null]),
);

/* The links of your tables, as this device's schema has them. */
export const readIdChangeShape = async (
  db: Queryable,
): Promise<IdChangeShape> => {
  const constraints = await readUserConstraints(db);
  const foreignKeys = constraints.filter((item) => item.kind === "f");
  const gameLinks: GameLink[] = [];
  const userLinks: UserLink[] = [];

  for (const item of foreignKeys) {
    const parent = item.parent!;

    /* A table of yours (Voydex's own rules too): its rows follow yours. */
    if (userTableFilters.has(parent)) {
      userLinks.push({
        child: item.child,
        childColumns: item.childColumns,
        onDelete:
          item.onDelete === "c"
            ? { kind: "cascade" }
            : item.onDelete === "n"
              ? { columns: item.setNullColumns, kind: "set-null" }
              : { kind: "restrict" },
        parent,
        parentColumns: item.parentColumns,
      });
    }

    /* Game data, addressed by its primary key, which an ID change names. */
    const keyColumns = item.parentKeyColumns;

    if (
      userTableFilters.get(parent) !== null &&
      keyColumns?.every((column) => item.parentColumns.includes(column))
    ) {
      gameLinks.push({
        child: item.child,
        childColumns: item.childColumns,
        nullable: keyColumns.every(
          (column) => item.childNullable[item.parentColumns.indexOf(column)],
        ),
        parent,
        parentColumns: item.parentColumns,
        parentKeyColumns: keyColumns,
      });
    }
  }

  return {
    gameLinks,
    tables: userTables.map(({ name }) => {
      const key = constraints.find(
        (item) => item.kind === "p" && item.child === name,
      );

      if (!key) throw new LocalDbError(`${name} has no primary key.`);

      return { keyColumns: key.childColumns, name };
    }),
    uniqueKeys: constraints
      .filter((item) => item.kind !== "f")
      .map((item) => ({ columns: item.childColumns, table: item.child })),
    userLinks,
  };
};

/* The game data rows the changes' new IDs name, where the device has them. */
export const readIdChangeTargets = async (
  db: Queryable,
  changes: readonly IdChange[],
  shape: IdChangeShape,
): Promise<IdChangeTargets> => {
  const targets: IdChangeTargets = new Map();
  const wanted = new Map<string, Set<string>>();

  for (const change of changes) {
    if (change.becomes === null) continue;

    wanted.set(
      change.table,
      (wanted.get(change.table) ?? new Set()).add(change.becomes),
    );
  }

  for (const [table, ids] of wanted) {
    /* Only tables your rows point at; the name is never trusted as SQL. */
    const link = shape.gameLinks.find((item) => item.parent === table);

    if (!link) continue;

    const key = link.parentKeyColumns
      .map((column) => `t."${column}"::text`)
      .join(", ");
    const rows = await runQuery<{ id: string; row: UserRow }>(
      db,
      `SELECT concat_ws(':', ${key}) AS id, to_jsonb(t) AS row
       FROM ${link.parent} t WHERE concat_ws(':', ${key}) = ANY ($1)`,
      [[...ids]],
    );

    for (const row of rows) targets.set(targetId(table, row.id), row.row);
  }

  return targets;
};

/* The ID changes this device's rows have had, in order. */
export const readAppliedIdChanges = async (db: Queryable) =>
  runQuery<IdChange>(
    db,
    `SELECT table_name AS "table", id, becomes
     FROM device.id_changes ORDER BY position`,
  );

/* How many ID changes this device's rows have had. */
export const countAppliedIdChanges = async (db: Queryable) => {
  const [{ count }] = await runQuery<{ count: number }>(
    db,
    "SELECT count(*)::int AS count FROM device.id_changes",
  );

  return count;
};

/* Records `list`'s entries the device doesn't have yet as applied. */
export const recordIdChanges = async (
  db: Queryable,
  list: readonly IdChange[],
) => {
  if (!list.length) return;

  await db.query(
    `INSERT INTO device.id_changes (position, table_name, id, becomes)
     SELECT position, change ->> 'table', change ->> 'id', change ->> 'becomes'
     FROM jsonb_array_elements($1::jsonb) WITH ORDINALITY AS list (change, position)
     ON CONFLICT (position) DO NOTHING`,
    [
      JSON.stringify(
        list.map(({ becomes, id, table }) => ({ becomes, id, table })),
      ),
    ],
  );
};

/* Rows from newer game data than the device has: it takes that release first. */
const newerGameData = () =>
  new IdChangeError(
    "These rows use newer game data than this device has. Reopen Voydex to update it, then try again.",
  );

/*
 * Brings a snapshot saved before some of this device's ID changes up to
 * date. One from a newer release can't be: the device needs that release
 * first.
 */
export const bringSnapshotUpToDate = async (
  db: Queryable,
  snapshot: VersionedSnapshot,
  applied: readonly IdChange[],
): Promise<VersionedSnapshot> => {
  if (snapshot.idChanges > applied.length) throw newerGameData();

  const pending = applied.slice(snapshot.idChanges);

  if (!pending.length) return snapshot;

  const shape = await readIdChangeShape(db);
  const targets = await readIdChangeTargets(db, pending, shape);

  return {
    ...applyIdChanges(snapshot, pending, { shape, targets }),
    idChanges: applied.length,
  };
};

/*
 * Gets a snapshot from elsewhere (a backup file, the account's backup)
 * ready to go in on this device: the games its Plays and Plans need on the
 * device (`ensureGame`, which may take a newer release first), then its
 * rows brought up to this device's ID changes, with those games' rows at
 * hand for the columns a link carries. The caller checks the count still
 * holds when it writes the rows.
 */
export const prepareSnapshot = async (
  db: LocalDb,
  snapshot: VersionedSnapshot,
  ensureGame: (versionGroupId: number) => Promise<void>,
): Promise<VersionedSnapshot> => {
  const ensured = new Set<number>();

  /*
   * Each round may take a newer release (new ID changes to follow) or a
   * game the brought-up rows need (rows to follow them with): it starts
   * again from the snapshot as it came until neither happens.
   */
  for (let attempt = 1; attempt <= 4; attempt += 1) {
    const applied = await readAppliedIdChanges(db);
    const current =
      snapshot.idChanges > applied.length
        ? snapshot
        : await bringSnapshotUpToDate(db, snapshot, applied);
    const needed = readNeededVersionGroups(current.tables).filter(
      (versionGroupId) => !ensured.has(versionGroupId),
    );

    for (const versionGroupId of needed) {
      await ensureGame(versionGroupId);
      ensured.add(versionGroupId);
    }

    if ((await countAppliedIdChanges(db)) !== applied.length) continue;
    if (needed.length && current !== snapshot) continue;
    if (current.idChanges !== applied.length) throw newerGameData();

    return current;
  }

  throw new IdChangeError(
    "The game data on this device kept changing; try again.",
  );
};
