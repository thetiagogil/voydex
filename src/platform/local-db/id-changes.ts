import idChangeDrops from "@/platform/local-db/id-change-drops.json";
import { LocalDbError } from "@/platform/local-db/local-db";
import {
  rowKeyOf,
  type ChangeRecord,
  type SyncSnapshot,
} from "@/platform/local-db/sync-merge";
import {
  userTables,
  type UserData,
  type UserRow,
} from "@/platform/local-db/user-data";

/*
 * ID changes: what became of each game data ID a release removed or
 * reused, from the ordered list every release ships
 * (database/game-data/id-changes.json). Your rows follow them, in order:
 *
 * - An ID that becomes another: every row that pointed at it points at the
 *   new one. When the row already on the new one is in the way (both
 *   milestones ticked), that one stays and this one clears its link, or
 *   goes if it only marks progress.
 * - An ID that becomes nothing: a link that can be empty is cleared (a
 *   History moment keeps its title), a row that only marks progress goes,
 *   and anything else can't follow (the release checks stop that list).
 *
 * An ID change isn't an edit of yours: the change records move with the
 * rows and keep their times, so a sync never takes it for one. The device
 * remembers the entries its rows have had (device.id_changes), and a
 * backup carries how many its rows have had, so one saved before a change
 * is brought up to date before it is restored or merged.
 */

export type IdChange = { becomes: string | null; id: string; table: string };

/* A snapshot with how many ID changes its rows have had. */
export type VersionedSnapshot = SyncSnapshot & { idChanges: number };

/* A foreign key from a table of yours to game data. */
export type GameLink = {
  child: string;
  childColumns: string[];
  parent: string;
  parentColumns: string[];
  /* The parent's primary key, which an ID change names ("31:18"). */
  parentKeyColumns: string[];
  /* Whether every child column on the parent's key may be empty. */
  nullable: boolean;
};

/* A foreign key between tables of yours. */
export type UserLink = {
  child: string;
  childColumns: string[];
  /* The columns emptied when the parent row goes; null for all of them. */
  onDelete:
    | { kind: "cascade" | "restrict" }
    | { columns: string[] | null; kind: "set-null" };
  parent: string;
  parentColumns: string[];
};

export type IdChangeShape = {
  gameLinks: GameLink[];
  tables: { keyColumns: string[]; name: string }[];
  /* Primary keys and other unique column sets of your tables. */
  uniqueKeys: { columns: string[]; table: string }[];
  userLinks: UserLink[];
};

/* The rows IDs become, by `table\u0000id`, as the device's game data has them. */
export type IdChangeTargets = Map<string, UserRow>;

/* Your rows can't follow an ID change; nothing changes. */
export class IdChangeError extends LocalDbError {
  constructor(message: string) {
    super(message);
    this.name = "IdChangeError";
  }
}

export const droppableTables: ReadonlySet<string> = new Set(
  idChangeDrops.tables,
);

const recordId = (table: string, key: string) => `${table}\u0000${key}`;

export const targetId = (table: string, id: string) => `${table}\u0000${id}`;

const isEmpty = (value: unknown) => value === null || value === undefined;

/* Whether a row's columns hold an ID's parts ("31:18" is two). */
const holds = (row: UserRow, columns: string[], parts: string[]) =>
  columns.every(
    (column, index) =>
      !isEmpty(row[column]) && String(row[column]) === parts[index],
  );

/* An ID's part as the column holds it: a number stays a number. */
const asValue = (sample: unknown, part: string) =>
  typeof sample === "number" ? Number(part) : part;

const sameValues = (left: unknown[], right: unknown[]) =>
  JSON.stringify(left) === JSON.stringify(right);

/* Your rows and records, changed in place by the steps below. */
class Rows {
  /* Whether any row or record changed. */
  changed = false;
  private readonly keyColumns: Map<string, string[]>;
  private readonly records = new Map<string, ChangeRecord[]>();
  private readonly tables = new Map<string, UserRow[]>();

  constructor(
    snapshot: SyncSnapshot,
    private readonly shape: IdChangeShape,
  ) {
    this.keyColumns = new Map(
      shape.tables.map((table) => [table.name, table.keyColumns]),
    );

    for (const [name, rows] of Object.entries(snapshot.tables)) {
      this.tables.set(name, [...rows]);
    }

    for (const record of snapshot.changes) {
      const id = recordId(record.table, record.key);

      this.records.set(id, [...(this.records.get(id) ?? []), record]);
    }
  }

  rowsOf(table: string) {
    return this.tables.get(table) ?? [];
  }

  keyOf(table: string, row: UserRow) {
    const columns = this.keyColumns.get(table);

    return columns ? rowKeyOf(row, columns) : null;
  }

  /* Row records ("" column) of deleted rows: they carry only their key. */
  deletedKeys(table: string) {
    const deleted: { key: string; row: UserRow }[] = [];
    const columns = this.keyColumns.get(table);

    if (!columns) return deleted;

    for (const records of this.records.values()) {
      const record = records.find(
        (item) => item.table === table && item.column === "" && item.deleted,
      );

      if (!record) continue;

      const values = JSON.parse(record.key) as unknown[];

      deleted.push({
        key: record.key,
        row: Object.fromEntries(
          columns.map((column, index) => [column, values[index]]),
        ),
      });
    }

    return deleted;
  }

  /* Whether another row of the table holds the same values on a unique key. */
  clashes(table: string, row: UserRow, moved: UserRow, changed: string[]) {
    const keys = this.shape.uniqueKeys.filter(
      (key) =>
        key.table === table &&
        key.columns.some((column) => changed.includes(column)),
    );

    return keys.some((key) => {
      const values = key.columns.map((column) => moved[column] ?? null);

      if (values.some(isEmpty)) return false;

      return this.rowsOf(table).some(
        (other) =>
          other !== row &&
          sameValues(
            key.columns.map((column) => other[column] ?? null),
            values,
          ),
      );
    });
  }

  /* Puts `moved` in place of `row`; its records follow a new key. */
  replace(table: string, row: UserRow, moved: UserRow) {
    const rows = this.rowsOf(table);
    const index = rows.indexOf(row);

    if (index < 0) throw new IdChangeError(`A row of ${table} moved twice.`);

    rows[index] = moved;
    this.changed = true;

    const oldKey = this.keyOf(table, row);
    const newKey = this.keyOf(table, moved);

    if (oldKey !== null && newKey !== null && oldKey !== newKey) {
      this.moveRecords(table, oldKey, newKey);
    }
  }

  remove(table: string, row: UserRow) {
    const rows = this.rowsOf(table);
    const index = rows.indexOf(row);

    if (index < 0) return;

    rows.splice(index, 1);
    this.changed = true;

    const key = this.keyOf(table, row);

    if (key !== null) this.records.delete(recordId(table, key));
  }

  /* A deleted row's record follows its key, unless a row or record is there. */
  moveDeleted(table: string, oldKey: string, newKey: string) {
    const taken =
      this.records.has(recordId(table, newKey)) ||
      this.rowsOf(table).some((row) => this.keyOf(table, row) === newKey);

    if (taken) {
      this.changed = true;
      this.records.delete(recordId(table, oldKey));
    } else {
      this.moveRecords(table, oldKey, newKey);
    }
  }

  removeDeleted(table: string, key: string) {
    this.changed = true;
    this.records.delete(recordId(table, key));
  }

  private moveRecords(table: string, oldKey: string, newKey: string) {
    this.changed = true;
    const moving = this.records.get(recordId(table, oldKey)) ?? [];

    this.records.delete(recordId(table, oldKey));
    /* What was recorded at the new key (a deleted row) gives way. */
    this.records.delete(recordId(table, newKey));

    if (moving.length) {
      this.records.set(
        recordId(table, newKey),
        moving.map((record) => ({ ...record, key: newKey })),
      );
    }
  }

  toSnapshot(): SyncSnapshot {
    return {
      changes: [...this.records.values()].flat(),
      tables: Object.fromEntries(this.tables) as UserData,
    };
  }
}

/* What a row does when it can't take the new ID or lose the old one. */
type Fallback = "clear" | "drop" | "fail";

const fallbackOf = (link: GameLink): Fallback => {
  if (link.nullable) return "clear";

  return droppableTables.has(link.child) ? "drop" : "fail";
};

const cantFollow = (change: IdChange, table: string) =>
  new IdChangeError(
    change.becomes === null
      ? `${change.table} ${change.id} is gone, and rows of ${table} can't lose it.`
      : `${change.table} ${change.id} became ${change.becomes}, and a row of ${table} already has it.`,
  );

const insertOrder = (table: string) =>
  userTables.findIndex((item) => item.name === table);

class IdChangeRun {
  private readonly rows: Rows;

  constructor(
    snapshot: SyncSnapshot,
    private readonly shape: IdChangeShape,
    private readonly targets: IdChangeTargets,
  ) {
    this.rows = new Rows(snapshot, shape);
  }

  /*
   * Rows that point at others of yours go first (a History moment before
   * its milestone's progress), so a row clearing its link never leaves
   * another to follow it into a clash.
   */
  apply(change: IdChange) {
    const links = this.shape.gameLinks
      .filter((link) => link.parent === change.table)
      .sort(
        (left, right) => insertOrder(right.child) - insertOrder(left.child),
      );

    for (const link of links) this.follow(change, link);
  }

  /* The snapshot as it came when nothing changed. */
  result(snapshot: SyncSnapshot) {
    return this.rows.changed ? this.rows.toSnapshot() : snapshot;
  }

  private follow(change: IdChange, link: GameLink) {
    const keyColumns = link.parentKeyColumns.map(
      (column) => link.childColumns[link.parentColumns.indexOf(column)],
    );
    const parts = change.id.split(":");
    const newParts = change.becomes?.split(":") ?? null;

    if (
      parts.length !== keyColumns.length ||
      (newParts && newParts.length !== keyColumns.length)
    ) {
      throw new IdChangeError(
        `${change.table} IDs have ${keyColumns.length} parts; "${change.id}" doesn't fit.`,
      );
    }

    const target = change.becomes
      ? (this.targets.get(targetId(change.table, change.becomes)) ?? null)
      : null;
    /* The new values of the link's columns, for a row that held the old ID. */
    const valuesFor = (row: UserRow): UserRow =>
      Object.fromEntries(
        link.childColumns.map((column, index) => {
          const parentColumn = link.parentColumns[index];
          const keyIndex = link.parentKeyColumns.indexOf(parentColumn);

          if (target && parentColumn in target) {
            return [column, target[parentColumn]];
          }

          return [
            column,
            keyIndex >= 0 && newParts
              ? asValue(row[column], newParts[keyIndex])
              : row[column],
          ];
        }),
      );
    const cleared = Object.fromEntries(
      keyColumns.map((column) => [column, null]),
    );
    const fallback = fallbackOf(link);

    for (const row of this.rows
      .rowsOf(link.child)
      .filter((item) => holds(item, keyColumns, parts))) {
      /* A row an earlier step already moved or dropped is done. */
      if (!this.rows.rowsOf(link.child).includes(row)) continue;

      if (newParts) {
        const values = valuesFor(row);
        const moved = { ...row, ...values };

        if (!this.rows.clashes(link.child, row, moved, Object.keys(values))) {
          this.update(link.child, row, moved);
          continue;
        }
      }

      if (fallback === "clear") {
        this.update(link.child, row, { ...row, ...cleared });
      } else if (fallback === "drop") {
        this.drop(link.child, row);
      } else {
        throw cantFollow(change, link.child);
      }
    }

    /* Deleted rows' records follow too, so a sync still lets them go. */
    if (!keyColumns.every((column) => this.isKeyColumn(link.child, column))) {
      return;
    }

    for (const { key, row } of this.rows.deletedKeys(link.child)) {
      if (!holds(row, keyColumns, parts)) continue;

      const newKey =
        newParts &&
        this.rows.keyOf(link.child, {
          ...row,
          ...valuesFor(row),
        });

      if (newKey) {
        this.rows.moveDeleted(link.child, key, newKey);
      } else {
        this.rows.removeDeleted(link.child, key);
      }
    }
  }

  private isKeyColumn(table: string, column: string) {
    return (
      this.shape.tables
        .find((item) => item.name === table)
        ?.keyColumns.includes(column) ?? false
    );
  }

  /* A row's new values, and the rows of yours that point at them follow. */
  private update(table: string, row: UserRow, moved: UserRow) {
    const changed = Object.keys(moved).filter(
      (column) => !sameValues([row[column]], [moved[column]]),
    );

    if (!changed.length) return;

    this.rows.replace(table, row, moved);

    for (const link of this.shape.userLinks) {
      if (
        link.parent !== table ||
        !link.parentColumns.some((column) => changed.includes(column))
      ) {
        continue;
      }

      const before = link.parentColumns.map((column) => row[column] ?? null);

      if (before.some(isEmpty)) continue;

      for (const child of this.childrenOf(link, before)) {
        const followed = {
          ...child,
          ...Object.fromEntries(
            link.childColumns.map((column, index) => [
              column,
              moved[link.parentColumns[index]] ?? null,
            ]),
          ),
        };

        if (this.rows.clashes(link.child, child, followed, link.childColumns)) {
          throw new IdChangeError(
            `A row of ${link.child} can't follow its ${table} row to its new ID.`,
          );
        }

        this.update(link.child, child, followed);
      }
    }
  }

  /* A row goes, with what its delete rules take along. */
  private drop(table: string, row: UserRow) {
    this.rows.remove(table, row);

    for (const link of this.shape.userLinks) {
      if (link.parent !== table) continue;

      const values = link.parentColumns.map((column) => row[column] ?? null);

      if (values.some(isEmpty)) continue;

      for (const child of this.childrenOf(link, values)) {
        if (link.onDelete.kind === "cascade") {
          this.drop(link.child, child);
        } else if (link.onDelete.kind === "set-null") {
          const columns = link.onDelete.columns ?? link.childColumns;

          this.update(link.child, child, {
            ...child,
            ...Object.fromEntries(columns.map((column) => [column, null])),
          });
        } else {
          throw new IdChangeError(
            `A row of ${table} would go, and a row of ${link.child} still needs it.`,
          );
        }
      }
    }
  }

  private childrenOf(link: UserLink, values: unknown[]) {
    return this.rows.rowsOf(link.child).filter((child) =>
      sameValues(
        link.childColumns.map((column) => child[column] ?? null),
        values,
      ),
    );
  }
}

/*
 * Applies ID changes, in order, to a snapshot of your rows and their
 * records. Pure: `targets` holds the rows the new IDs name, for the other
 * columns a link carries (a form's species). Throws IdChangeError when a
 * row can't follow.
 */
export const applyIdChanges = (
  snapshot: SyncSnapshot,
  changes: readonly IdChange[],
  { shape, targets }: { shape: IdChangeShape; targets: IdChangeTargets },
): SyncSnapshot => {
  if (!changes.length) return snapshot;

  const run = new IdChangeRun(snapshot, shape, targets);

  for (const change of changes) run.apply(change);

  return run.result(snapshot);
};

const sameChange = (left: IdChange, right: IdChange) =>
  left.table === right.table &&
  left.id === right.id &&
  left.becomes === right.becomes;

/*
 * The entries of a release's list this device's rows haven't had. An
 * older list (one that stops short of what the device applied) has none;
 * one that differs from what the device applied can't be followed, and
 * the device keeps what it has.
 */
export const findPendingIdChanges = (
  applied: readonly IdChange[],
  list: readonly IdChange[],
) => {
  if (
    list.some(
      (change, index) =>
        index < applied.length && !sameChange(change, applied[index]),
    )
  ) {
    throw new IdChangeError(
      "The ID changes list doesn't match the one this device followed.",
    );
  }

  return list.slice(applied.length);
};
