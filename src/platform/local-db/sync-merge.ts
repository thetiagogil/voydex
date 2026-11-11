import type { UserData, UserRow } from "@/platform/local-db/user-data";

/*
 * Event merge: combines this device's data with the account's latest
 * backup. Each side carries its rows and its change records (when each row
 * was added or deleted and each column last changed). Per column, the
 * latest change wins. You're asked only on a true clash: both sides
 * changed the same column of the same row since this device last synced,
 * to different values, or one side deleted a row the other changed. A
 * merge that would break a rule inside a Play or Plan (two Pokémon in one
 * team slot) asks which side's version of that Play to keep. Pure: the
 * caller reads the snapshots and puts the result in place.
 */

export type ChangeRecord = {
  /* When this device last synced, the record's changedAt then; null if never. */
  baseChangedAt: string | null;
  changedAt: string;
  /* "" for the row itself (added, or deleted when `deleted`). */
  column: string;
  deleted: boolean;
  /* The row's primary key as JSON text, as `device.row_key` writes it. */
  key: string;
  table: string;
};

export type SyncSnapshot = { changes: ChangeRecord[]; tables: UserData };

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

export type Side = "local" | "remote";

/* The Play, Plan or other thing a clash belongs to, for its label. */
export type ClashItem = { key: string; label: string | null; table: string };

export type Clash =
  /* Both sides changed one column to different values. */
  | {
      column: string;
      id: string;
      item: ClashItem;
      key: string;
      kind: "field";
      local: unknown;
      /* When each side made its change, as ISO text. */
      localChangedAt: string | null;
      remote: unknown;
      remoteChangedAt: string | null;
      table: string;
    }
  /* One side deleted a row the other side changed. */
  | {
      deletedOn: Side;
      id: string;
      item: ClashItem;
      key: string;
      kind: "row";
      /* When each side deleted or last changed it, as ISO text. */
      localChangedAt: string | null;
      remoteChangedAt: string | null;
      table: string;
    }
  /* Both sides changed a Play or Plan in ways that don't fit together. */
  | { id: string; item: ClashItem; kind: "item" };

/* Which side wins each clash, by its id. */
export type MergeChoices = Record<string, Side>;

export type MergeResult =
  | { clashes: Clash[]; status: "clashes" }
  | { snapshot: SyncSnapshot; status: "merged" };

/* Columns that change on their own; they follow the latest, never ask. */
const quietColumns = new Set(["created_at", "last_opened_at", "updated_at"]);

/* The things a clash can belong to: a Play or a Plan, with their rows. */
const itemTables = ["gameplay.mainline_plays", "planning.mainline_team_plans"];

/* A row's own label: its name (a Play, a Plan, a tag), or nothing. */
const readLabel = (row: UserRow | undefined) => {
  const label = row?.name;

  return typeof label === "string" ? label : null;
};

/* "2026-11-10T09:30:00.123456+00:00" as microseconds since 1970. */
export const toMicros = (iso: string) => {
  const match = /^(.+?)(?:\.(\d{1,6}))?(Z|[+-]\d\d(?::?\d\d)?)$/.exec(iso);

  if (!match) return BigInt(Date.parse(iso)) * BigInt(1000);

  const [, main, fraction = "", zone] = match;
  const offset = /^[+-]\d\d$/.test(zone) ? `${zone}:00` : zone;

  return (
    BigInt(Date.parse(`${main}${offset}`)) * BigInt(1000) +
    BigInt(fraction.padEnd(6, "0"))
  );
};

const sameTime = (left: string | null, right: string | null) =>
  left === right ||
  (left !== null && right !== null && toMicros(left) === toMicros(right));

const later = (left: string, right: string) => toMicros(left) > toMicros(right);

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

const sameValue = (left: unknown, right: unknown) =>
  toJsonText(left) === toJsonText(right);

const recordId = (table: string, key: string) => `${table}\u0000${key}`;

/* One side's rows and records, indexed for the merge. */
type SideIndex = {
  records: Map<string, Map<string, ChangeRecord>>;
  rows: Map<string, Map<string, UserRow>>;
};

const indexSide = (snapshot: SyncSnapshot, shape: SchemaShape): SideIndex => {
  const rows = new Map<string, Map<string, UserRow>>();

  for (const { keyColumns, name } of shape.tables) {
    rows.set(
      name,
      new Map(
        (snapshot.tables[name] ?? []).map((row) => [
          rowKeyOf(row, keyColumns),
          row,
        ]),
      ),
    );
  }

  const records = new Map<string, Map<string, ChangeRecord>>();

  for (const record of snapshot.changes) {
    const id = recordId(record.table, record.key);
    const byColumn = records.get(id) ?? new Map<string, ChangeRecord>();

    byColumn.set(record.column, record);
    records.set(id, byColumn);
  }

  return { records, rows };
};

/*
 * Finds rows by the values of some columns (a foreign key's), building
 * each lookup once.
 */
class RowFinder {
  private readonly lookups = new Map<string, Map<string, UserRow[]>>();

  constructor(private readonly rows: Map<string, Map<string, UserRow>>) {}

  find(table: string, columns: string[], values: unknown[]) {
    const lookupId = `${table}\u0000${columns.join(",")}`;
    let lookup = this.lookups.get(lookupId);

    if (!lookup) {
      lookup = new Map();

      for (const row of this.rows.get(table)?.values() ?? []) {
        const id = toJsonText(columns.map((column) => row[column] ?? null));

        lookup.set(id, [...(lookup.get(id) ?? []), row]);
      }

      this.lookups.set(lookupId, lookup);
    }

    return lookup.get(toJsonText(values)) ?? [];
  }
}

const fkValues = (row: UserRow, columns: string[]) => {
  const values = columns.map((column) => row[column] ?? null);

  return values.some((value) => value === null) ? null : values;
};

type Graph = {
  /* The foreign keys from a table to the tables of yours it points at. */
  parents: Map<string, ForeignKey[]>;
  /* The foreign keys pointing at a table, from its child tables. */
  children: Map<string, ForeignKey[]>;
  keyColumns: Map<string, string[]>;
  /* How each table reaches its Play or Plan: the foreign keys to follow. */
  itemPaths: Map<string, ForeignKey[]>;
};

const buildGraph = (shape: SchemaShape): Graph => {
  const keyColumns = new Map(
    shape.tables.map((table) => [table.name, table.keyColumns]),
  );
  const parents = new Map<string, ForeignKey[]>();
  const children = new Map<string, ForeignKey[]>();

  for (const fk of shape.foreignKeys) {
    if (!keyColumns.has(fk.parent) || !keyColumns.has(fk.child)) continue;

    parents.set(fk.child, [...(parents.get(fk.child) ?? []), fk]);
    children.set(fk.parent, [...(children.get(fk.parent) ?? []), fk]);
  }

  const itemPaths = new Map<string, ForeignKey[]>();

  for (const table of keyColumns.keys()) {
    /* Breadth first, so the shortest way to a Play or Plan wins. */
    const queue: { path: ForeignKey[]; table: string }[] = [
      { path: [], table },
    ];
    const seen = new Set([table]);

    while (queue.length) {
      const next = queue.shift()!;

      if (itemTables.includes(next.table)) {
        itemPaths.set(table, next.path);
        break;
      }

      for (const fk of parents.get(next.table) ?? []) {
        if (seen.has(fk.parent)) continue;

        seen.add(fk.parent);
        queue.push({ path: [...next.path, fk], table: fk.parent });
      }
    }
  }

  return { children, itemPaths, keyColumns, parents };
};

type Merger = {
  graph: Graph;
  local: SideIndex;
  remote: SideIndex;
  localFinder: RowFinder;
  remoteFinder: RowFinder;
};

const sideOf = (merger: Merger, side: Side) =>
  side === "local"
    ? { finder: merger.localFinder, index: merger.local }
    : { finder: merger.remoteFinder, index: merger.remote };

/* The Play or Plan a row belongs to, or the row itself. */
const findItem = (
  merger: Merger,
  table: string,
  row: UserRow,
): { key: string; row: UserRow | undefined; table: string } => {
  const path = merger.graph.itemPaths.get(table);
  let current: { row: UserRow; table: string } = { row, table };

  for (const fk of path ?? []) {
    const values = fkValues(current.row, fk.childColumns);
    const parent =
      values &&
      (merger.localFinder.find(fk.parent, fk.parentColumns, values)[0] ??
        merger.remoteFinder.find(fk.parent, fk.parentColumns, values)[0]);

    if (!parent) break;

    current = { row: parent, table: fk.parent };
  }

  return {
    key: rowKeyOf(current.row, merger.graph.keyColumns.get(current.table)!),
    row: current.row,
    table: current.table,
  };
};

const toClashItem = (item: ReturnType<typeof findItem>): ClashItem => ({
  key: item.key,
  label: readLabel(item.row),
  table: item.table,
});

/* The local base of a column: its clock when this device last synced. */
const localBase = (merger: Merger, id: string, column: string) => {
  const records = merger.local.records.get(id);

  return (
    records?.get(column)?.baseChangedAt ??
    records?.get("")?.baseChangedAt ??
    null
  );
};

/* A column's clock on one side: its own record, or its row's. */
const clockOf = (index: SideIndex, id: string, column: string) => {
  const records = index.records.get(id);

  return records?.get(column) ?? records?.get("") ?? null;
};

const changedSinceSync = (merger: Merger, side: Side, id: string) => {
  const records = sideOf(merger, side).index.records.get(id);

  /* Opening a Play or a stamp of the time alone isn't a change to keep it for. */
  return [...(records?.values() ?? [])].some(
    (record) =>
      !quietColumns.has(record.column) &&
      (side === "local"
        ? !sameTime(record.changedAt, record.baseChangedAt)
        : !sameTime(record.changedAt, localBase(merger, id, record.column))),
  );
};

/* Whether a row, or anything hanging off it, changed on `side` since the sync. */
const subtreeChanged = (
  merger: Merger,
  side: Side,
  table: string,
  row: UserRow,
  seen = new Set<string>(),
): boolean => {
  const key = rowKeyOf(row, merger.graph.keyColumns.get(table)!);
  const id = recordId(table, key);

  if (seen.has(id)) return false;

  seen.add(id);

  if (changedSinceSync(merger, side, id)) return true;

  const { finder } = sideOf(merger, side);

  return (merger.graph.children.get(table) ?? []).some((fk) => {
    if (fk.onDelete !== "cascade") return false;

    const values = fkValues(row, fk.parentColumns);

    return (
      values !== null &&
      finder
        .find(fk.child, fk.childColumns, values)
        .some((child) => subtreeChanged(merger, side, fk.child, child, seen))
    );
  });
};

type MergedRow = { records: ChangeRecord[]; row: UserRow | null };

/* A row's latest change on one side (its quiet columns aside). */
const latestChangeOf = (index: SideIndex, id: string) =>
  [...(index.records.get(id)?.values() ?? [])]
    .filter((record) => !quietColumns.has(record.column))
    .reduce<
      string | null
    >((latest, record) => (latest === null || later(record.changedAt, latest) ? record.changedAt : latest), null);

const recordsFrom = (index: SideIndex, id: string) => [
  ...(index.records.get(id)?.values() ?? []),
];

/* Two live versions of one row: column by column. */
const mergeFields = (
  merger: Merger,
  table: string,
  key: string,
  localRow: UserRow,
  remoteRow: UserRow,
  choices: MergeChoices,
  clashes: Clash[],
): MergedRow => {
  const id = recordId(table, key);
  const keyColumns = merger.graph.keyColumns.get(table)!;
  const localRowRecord = merger.local.records.get(id)?.get("");
  const remoteRowRecord = merger.remote.records.get(id)?.get("");
  const rowRecord =
    localRowRecord &&
    (!remoteRowRecord ||
      !later(remoteRowRecord.changedAt, localRowRecord.changedAt))
      ? localRowRecord
      : remoteRowRecord;
  const row: UserRow = {};
  const records: ChangeRecord[] = rowRecord
    ? [{ ...rowRecord, deleted: false }]
    : [];
  const columns = new Set([
    ...Object.keys(localRow),
    ...Object.keys(remoteRow),
  ]);

  for (const column of columns) {
    const localValue = localRow[column];
    const remoteValue = remoteRow[column];
    const localClock = clockOf(merger.local, id, column);
    const remoteClock = clockOf(merger.remote, id, column);
    let winner: Side;

    if (keyColumns.includes(column) || sameValue(localValue, remoteValue)) {
      winner =
        remoteClock &&
        (!localClock || later(remoteClock.changedAt, localClock.changedAt))
          ? "remote"
          : "local";
    } else {
      /*
       * A value with no record at all was never changed by you: a new
       * device's own profile, or data from before records. It gives way.
       */
      const localChanged =
        localClock !== null &&
        !sameTime(localClock.changedAt, localClock.baseChangedAt);
      const remoteChanged =
        remoteClock !== null &&
        !sameTime(remoteClock.changedAt, localBase(merger, id, column));
      const clashId = `field:${table}:${key}:${column}`;

      if (localChanged && remoteChanged && !quietColumns.has(column)) {
        const choice = choices[clashId];

        if (!choice) {
          clashes.push({
            column,
            id: clashId,
            item: toClashItem(findItem(merger, table, localRow)),
            key,
            kind: "field",
            local: localValue,
            localChangedAt: localClock?.changedAt ?? null,
            remote: remoteValue,
            remoteChangedAt: remoteClock?.changedAt ?? null,
            table,
          });
        }

        winner = choice ?? "local";
      } else if (localChanged !== remoteChanged) {
        winner = localChanged ? "local" : "remote";
      } else {
        winner =
          remoteClock &&
          (!localClock || later(remoteClock.changedAt, localClock.changedAt))
            ? "remote"
            : "local";
      }
    }

    row[column] = winner === "local" ? localValue : remoteValue;

    const clock = winner === "local" ? localClock : remoteClock;

    if (
      clock &&
      (clock.column === column ||
        !rowRecord ||
        !sameTime(clock.changedAt, rowRecord.changedAt))
    ) {
      records.push({ ...clock, column, deleted: false, key, table });
    }
  }

  return { records, row };
};

/* One key on both sides: live, deleted or unknown on each. */
const mergeKey = (
  merger: Merger,
  table: string,
  key: string,
  choices: MergeChoices,
  clashes: Clash[],
): MergedRow => {
  const id = recordId(table, key);
  const localRow = merger.local.rows.get(table)?.get(key);
  const remoteRow = merger.remote.rows.get(table)?.get(key);

  if (localRow && remoteRow) {
    return mergeFields(
      merger,
      table,
      key,
      localRow,
      remoteRow,
      choices,
      clashes,
    );
  }

  if (!localRow && !remoteRow) {
    const tombstones = [
      merger.local.records.get(id)?.get(""),
      merger.remote.records.get(id)?.get(""),
    ].filter((record): record is ChangeRecord => Boolean(record));
    const latest = tombstones.sort((left, right) =>
      later(left.changedAt, right.changedAt) ? -1 : 1,
    )[0];

    return { records: latest ? [{ ...latest, deleted: true }] : [], row: null };
  }

  const liveSide: Side = localRow ? "local" : "remote";
  const goneSide: Side = localRow ? "remote" : "local";
  const liveRow = (localRow ?? remoteRow)!;
  const tombstone = sideOf(merger, goneSide).index.records.get(id)?.get("");
  const keep = {
    records: recordsFrom(sideOf(merger, liveSide).index, id),
    row: liveRow,
  };

  /* The other side never had it: added since. */
  if (!tombstone) return keep;

  const deletedSinceSync =
    goneSide === "local"
      ? !sameTime(tombstone.changedAt, tombstone.baseChangedAt)
      : !sameTime(tombstone.changedAt, localBase(merger, id, ""));

  if (!deletedSinceSync) return keep;

  const gone = { records: [{ ...tombstone, deleted: true }], row: null };

  if (!subtreeChanged(merger, liveSide, table, liveRow)) return gone;

  const clashId = `row:${table}:${key}`;
  const choice = choices[clashId];

  if (!choice) {
    const liveChangedAt = latestChangeOf(sideOf(merger, liveSide).index, id);

    clashes.push({
      deletedOn: goneSide,
      id: clashId,
      item: toClashItem(findItem(merger, table, liveRow)),
      key,
      kind: "row",
      localChangedAt:
        goneSide === "local" ? tombstone.changedAt : liveChangedAt,
      remoteChangedAt:
        goneSide === "remote" ? tombstone.changedAt : liveChangedAt,
      table,
    });
  }

  return (choice ?? liveSide) === liveSide ? keep : gone;
};

/*
 * Keeps one side's version of a Play or Plan: its rows and records replace
 * the other side's, so the merge takes them as they are.
 */
const takeItemFrom = (
  merger: Merger,
  side: Side,
  item: { key: string; table: string },
  now: string,
) => {
  const from = sideOf(merger, side).index;
  const to = sideOf(merger, side === "local" ? "remote" : "local").index;

  for (const name of merger.graph.keyColumns.keys()) {
    const keys = new Set<string>();

    for (const index of [from, to]) {
      for (const [key, row] of index.rows.get(name) ?? []) {
        const found = findItem(merger, name, row);

        if (found.table === item.table && found.key === item.key) keys.add(key);
      }
    }

    for (const key of keys) {
      const id = recordId(name, key);
      const row = from.rows.get(name)?.get(key);
      const records = from.records.get(id);

      if (row) {
        to.rows.get(name)?.set(key, row);
        to.records.set(id, new Map(records));
        continue;
      }

      /*
       * Only the other side has it: deleted now, so the other device lets it
       * go too instead of keeping it as something added since.
       */
      const tombstone: ChangeRecord = {
        baseChangedAt: null,
        changedAt: now,
        column: "",
        deleted: true,
        key,
        table: name,
      };

      to.rows.get(name)?.delete(key);
      from.records.set(id, new Map([["", tombstone]]));
      to.records.set(id, new Map([["", tombstone]]));
    }
  }
};

type MergedRows = Map<string, Map<string, UserRow>>;
type MergedRecords = Map<string, ChangeRecord[]>;

/* Notes a column the merge itself changed, at the merge's time. */
const stampColumn = (
  records: MergedRecords,
  table: string,
  key: string,
  column: string,
  now: string,
) => {
  const id = recordId(table, key);

  records.set(id, [
    ...(records.get(id) ?? []).filter((record) => record.column !== column),
    { baseChangedAt: null, changedAt: now, column, deleted: false, key, table },
  ]);
};

const dropRow = (
  rows: MergedRows,
  records: MergedRecords,
  table: string,
  key: string,
  now: string,
) => {
  rows.get(table)?.delete(key);
  records.set(recordId(table, key), [
    {
      baseChangedAt: null,
      changedAt: now,
      column: "",
      deleted: true,
      key,
      table,
    },
  ]);
};

/* Rows that share one unique key's values; a null never clashes, as in Postgres. */
const findDuplicates = (rows: MergedRows, table: string, columns: string[]) => {
  const groups = new Map<string, [string, UserRow][]>();

  for (const [key, row] of rows.get(table) ?? []) {
    const values = columns.map((column) => row[column] ?? null);

    if (values.some((value) => value === null)) continue;

    const id = toJsonText(values);

    groups.set(id, [...(groups.get(id) ?? []), [key, row]]);
  }

  return [...groups.values()]
    .filter((group) => group.length > 1)
    .map((group) =>
      group.sort(
        ([leftKey, left], [rightKey, right]) =>
          String(left.created_at).localeCompare(String(right.created_at)) ||
          leftKey.localeCompare(rightKey),
      ),
    );
};

const eventsTable = "gameplay.mainline_play_events";

/*
 * Two History moments can't share a place in a Play's timeline, so moments
 * from both sides go back in order: by their place, then by when they were
 * made.
 */
const renumberTimelines = (
  rows: MergedRows,
  records: MergedRecords,
  graph: Graph,
  now: string,
) => {
  const byPlay = new Map<unknown, UserRow[]>();

  for (const event of rows.get(eventsTable)?.values() ?? []) {
    byPlay.set(event.play_id, [...(byPlay.get(event.play_id) ?? []), event]);
  }

  for (const events of byPlay.values()) {
    const orders = new Set(events.map((event) => Number(event.timeline_order)));

    if (orders.size === events.length) continue;

    events
      .sort(
        (left, right) =>
          Number(left.timeline_order) - Number(right.timeline_order) ||
          String(left.created_at).localeCompare(String(right.created_at)),
      )
      .forEach((event, index) => {
        if (Number(event.timeline_order) === index + 1) return;

        event.timeline_order = index + 1;
        stampColumn(
          records,
          eventsTable,
          rowKeyOf(event, graph.keyColumns.get(eventsTable)!),
          "timeline_order",
          now,
        );
      });
  }
};

/* Separators the slug rules allow: tags use "-", rules "_". */
const slugSeparators: Record<string, string> = { "public.tags": "-" };

/*
 * Fixes what two sides may both have added: the same milestone's History
 * moment (the first one stays) and two tags or rules of one name (the
 * later becomes "Shiny 2"). Anything else that breaks a unique rule is
 * left for `itemClashes`.
 */
const repairDuplicates = (
  shape: SchemaShape,
  rows: MergedRows,
  records: MergedRecords,
  now: string,
) => {
  for (const { columns, table } of shape.uniqueKeys) {
    const isMilestoneMoment =
      table === eventsTable && columns.includes("milestone_id");
    const isNamed = columns.includes("slug");

    if (!isMilestoneMoment && !isNamed) continue;

    for (const [, ...later] of findDuplicates(rows, table, columns)) {
      for (const [key, row] of later) {
        if (isMilestoneMoment) {
          dropRow(rows, records, table, key, now);
          continue;
        }

        /* A slug isn't part of a key, so the row keeps its key. */
        const taken = new Set(
          [...(rows.get(table)?.values() ?? [])].map((item) => item.slug),
        );
        const separator = slugSeparators[table] ?? "_";
        let suffix = 2;

        while (taken.has(`${String(row.slug)}${separator}${suffix}`))
          suffix += 1;

        row.slug = `${String(row.slug)}${separator}${suffix}`;
        stampColumn(records, table, key, "slug", now);

        if (typeof row.name === "string") {
          row.name = `${row.name} ${suffix}`;
          stampColumn(records, table, key, "name", now);
        }
      }
    }
  }
};

/* The Plays and Plans whose combined rows still break a unique rule. */
const itemClashes = (merger: Merger, shape: SchemaShape, rows: MergedRows) => {
  const broken = new Map<string, ClashItem>();

  for (const { columns, table } of shape.uniqueKeys) {
    for (const group of findDuplicates(rows, table, columns)) {
      const item = toClashItem(findItem(merger, table, group[0][1]));

      broken.set(`${item.table}:${item.key}`, item);
    }
  }

  return [...broken.values()];
};

/*
 * Drops rows whose parent row is gone, the way the database would on a
 * delete: cascade, or clear the column (set null). Repeats until nothing
 * else goes.
 */
const dropOrphans = (
  graph: Graph,
  rows: MergedRows,
  records: MergedRecords,
  now: string,
) => {
  let dropped = true;

  while (dropped) {
    dropped = false;

    const finder = new RowFinder(rows);

    for (const [child, fks] of graph.parents) {
      for (const fk of fks) {
        for (const [key, row] of [...(rows.get(child) ?? [])]) {
          const values = fkValues(row, fk.childColumns);

          if (
            !values ||
            finder.find(fk.parent, fk.parentColumns, values).length
          ) {
            continue;
          }

          const keyColumns = graph.keyColumns.get(child)!;
          const nullable = fk.childColumns.filter(
            (column) => !keyColumns.includes(column),
          );

          if (fk.onDelete === "set-null" && nullable.length) {
            for (const column of nullable) {
              row[column] = null;
              stampColumn(records, child, key, column, now);
            }
          } else {
            dropRow(rows, records, child, key, now);
          }

          dropped = true;
        }
      }
    }
  }
};

/*
 * Merges this device's snapshot with the account's. With `choices` for
 * every clash it returns the merged snapshot; otherwise the clashes to ask
 * about (ask, then merge again with the answers).
 */
export const mergeSnapshots = ({
  choices = {},
  local,
  now = new Date().toISOString(),
  remote,
  shape,
}: {
  choices?: MergeChoices;
  local: SyncSnapshot;
  /* The merge's own time, for the records of rows it drops or renumbers. */
  now?: string;
  remote: SyncSnapshot;
  shape: SchemaShape;
}): MergeResult => {
  const graph = buildGraph(shape);
  const localIndex = indexSide(local, shape);
  const remoteIndex = indexSide(remote, shape);
  const merger: Merger = {
    graph,
    local: localIndex,
    localFinder: new RowFinder(localIndex.rows),
    remote: remoteIndex,
    remoteFinder: new RowFinder(remoteIndex.rows),
  };

  for (const [clashId, side] of Object.entries(choices)) {
    const match = /^item:([^:]+):(.+)$/.exec(clashId);

    if (match) {
      takeItemFrom(merger, side, { key: match[2], table: match[1] }, now);
    }
  }

  merger.localFinder = new RowFinder(localIndex.rows);
  merger.remoteFinder = new RowFinder(remoteIndex.rows);

  const clashes: Clash[] = [];
  const rows = new Map<string, Map<string, UserRow>>();
  const records = new Map<string, ChangeRecord[]>();

  for (const { name } of shape.tables) {
    const tableRows = new Map<string, UserRow>();
    const keys = new Set([
      ...(localIndex.rows.get(name)?.keys() ?? []),
      ...(remoteIndex.rows.get(name)?.keys() ?? []),
    ]);

    for (const index of [localIndex, remoteIndex]) {
      for (const id of index.records.keys()) {
        const [table, key] = id.split("\u0000");

        if (table === name) keys.add(key);
      }
    }

    for (const key of [...keys].sort()) {
      const merged = mergeKey(merger, name, key, choices, clashes);

      if (merged.row) tableRows.set(key, merged.row);
      if (merged.records.length)
        records.set(recordId(name, key), merged.records);
    }

    rows.set(name, tableRows);
  }

  renumberTimelines(rows, records, graph, now);
  repairDuplicates(shape, rows, records, now);
  dropOrphans(graph, rows, records, now);

  for (const item of itemClashes(merger, shape, rows)) {
    const clashId = `item:${item.table}:${item.key}`;

    if (!choices[clashId]) clashes.push({ id: clashId, item, kind: "item" });
  }

  if (clashes.length) return { clashes, status: "clashes" };

  const tables: UserData = {};

  for (const { name } of shape.tables) {
    tables[name] = [...(rows.get(name)?.values() ?? [])];
  }

  return {
    snapshot: { changes: [...records.values()].flat(), tables },
    status: "merged",
  };
};
