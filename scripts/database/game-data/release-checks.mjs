import fs from "node:fs";
import path from "node:path";

import { databaseDir, rootDir } from "../context.mjs";

/*
 * The release checks. From launch on, a saved Play must keep working with a
 * new game data release and a new app:
 *
 * - IDs: every game data ID that user data can point at stays, and keeps its
 *   meaning (its slug), unless the ID changes list says what happened to it.
 *   Devices follow that list (src/platform/local-db/id-changes.ts), so it
 *   only grows, and each entry must be one saved rows can follow.
 * - Schema: a schema change since the last release ships with a device
 *   update, which moves each device's existing data to the new schema.
 *
 * Both compare against the last release, recorded in
 * database/game-data/last-release.json by `npm run game-data:build --
 * --release`. Until launch nothing is recorded, so IDs and the schema change
 * freely.
 */

export const gameDataDir = path.join(databaseDir, "game-data");
export const lastReleasePath = path.join(gameDataDir, "last-release.json");
export const idChangesPath = path.join(gameDataDir, "id-changes.json");
export const deviceUpdatesDir = path.join(databaseDir, "device-updates");
/* The tables whose rows an ID change may drop; devices read the same file. */
export const idChangeDropsPath = path.join(
  rootDir,
  "src",
  "platform",
  "local-db",
  "id-change-drops.json",
);

const userSchemas = ["public", "gameplay", "planning"];

const readJson = (filePath) => JSON.parse(fs.readFileSync(filePath, "utf8"));

export function readLastRelease() {
  return fs.existsSync(lastReleasePath) ? readJson(lastReleasePath) : null;
}

/* The ordered ID changes list: what became of each removed or reused ID. */
export function readIdChanges() {
  const changes = readJson(idChangesPath);
  const valid =
    Array.isArray(changes) &&
    changes.every(
      (change) =>
        typeof change?.table === "string" &&
        typeof change.id === "string" &&
        (change.becomes === null || typeof change.becomes === "string") &&
        typeof change.reason === "string" &&
        change.reason.length > 0,
    );

  if (!valid) {
    throw new Error(
      `${path.relative(databaseDir, idChangesPath)} must be a list of { table, id, becomes, reason } (becomes is an ID or null).`,
    );
  }

  return changes;
}

/* Device update files, in the order a device runs them. */
export function readDeviceUpdates() {
  if (!fs.existsSync(deviceUpdatesDir)) return [];

  return fs
    .readdirSync(deviceUpdatesDir)
    .filter((name) => name.endsWith(".sql"))
    .sort();
}

/*
 * Every seeded ID that user data can point at (a foreign key from a public,
 * gameplay or planning table), with its slug where the table has one:
 * `{ "reference.moves": { "1": "pound" } }`. Composite keys join with ":".
 */
export async function readReleaseIds(db) {
  const { rows: tables } = await db.query(
    `SELECT DISTINCT c.confrelid::regclass::text AS name,
       (SELECT array_agg(a.attname ORDER BY k.ord)
          FROM pg_constraint pk
          CROSS JOIN LATERAL unnest(pk.conkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute a ON a.attrelid = pk.conrelid AND a.attnum = k.attnum
          WHERE pk.conrelid = c.confrelid AND pk.contype = 'p') AS key_columns,
       EXISTS (SELECT 1 FROM pg_attribute a
          WHERE a.attrelid = c.confrelid AND a.attname = 'slug' AND NOT a.attisdropped) AS has_slug
     FROM pg_constraint c
     JOIN pg_class child ON child.oid = c.conrelid
     JOIN pg_namespace n ON n.oid = child.relnamespace
     WHERE c.contype = 'f' AND n.nspname = ANY ($1)
     ORDER BY 1`,
    [userSchemas],
  );
  const ids = {};

  for (const table of tables) {
    if (!table.key_columns) continue;

    const key = table.key_columns.map((column) => `${column}::text`);
    const { rows } = await db.query(
      `SELECT concat_ws(':', ${key.join(", ")}) AS key,
         ${table.has_slug ? "slug" : "''"} AS identity
       FROM ${table.name} ORDER BY ${table.key_columns.join(", ")}`,
    );

    if (rows.length) {
      ids[table.name] = Object.fromEntries(
        rows.map((row) => [row.key, row.identity]),
      );
    }
  }

  return ids;
}

/* What the ID check reports: IDs gone or reused with no ID change entry. */
export function findIdProblems({ idChanges, ids, lastRelease }) {
  if (!lastRelease) return [];

  const explained = new Set(
    idChanges.map((change) => `${change.table} ${change.id}`),
  );
  const problems = [];

  for (const [table, previous] of Object.entries(lastRelease.ids)) {
    const current = ids[table] ?? {};

    for (const [id, identity] of Object.entries(previous)) {
      if (explained.has(`${table} ${id}`)) continue;

      if (!(id in current)) {
        problems.push(`${table} ${id} (${identity || "no slug"}) is gone.`);
      } else if (current[id] !== identity) {
        problems.push(
          `${table} ${id} was ${identity} and is now ${current[id]}.`,
        );
      }
    }
  }

  return problems;
}

export function readDroppableTables() {
  return new Set(readJson(idChangeDropsPath).tables);
}

/*
 * Every foreign key from user data (a public, gameplay or planning table) to
 * a table with a primary key, as an ID change entry is checked against it:
 *
 * - keyColumns: the parent's primary key, which an entry names.
 * - nullable: whether the child's columns on that key may be empty.
 * - unique: whether one of the child's unique keys holds them, so a row
 *   already on the new ID could be in the way.
 * - carries: tables the link also carries an ID of (a form's species) with
 *   no link of the child's own to follow, so an entry for them can't move
 *   the child's rows.
 */
export async function readUserLinks(db) {
  const { rows: constraints } = await db.query(
    `SELECT c.contype AS kind, c.conrelid::regclass::text AS child,
       n.nspname = ANY ($1) AS from_user_data,
       NULLIF(c.confrelid, 0)::regclass::text AS parent,
       (SELECT array_agg(a.attname::text ORDER BY k.ord)
          FROM unnest(c.conkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute a ON a.attrelid = c.conrelid AND a.attnum = k.attnum) AS child_columns,
       (SELECT array_agg(NOT a.attnotnull ORDER BY k.ord)
          FROM unnest(c.conkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute a ON a.attrelid = c.conrelid AND a.attnum = k.attnum) AS child_nullable,
       (SELECT array_agg(a.attname::text ORDER BY k.ord)
          FROM unnest(c.confkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute a ON a.attrelid = c.confrelid AND a.attnum = k.attnum) AS parent_columns
     FROM pg_constraint c
     JOIN pg_class child ON child.oid = c.conrelid
     JOIN pg_namespace n ON n.oid = child.relnamespace
     WHERE c.contype IN ('f', 'p', 'u')
     UNION ALL
     SELECT 'i', i.indrelid::regclass::text, n.nspname = ANY ($1), NULL,
       (SELECT array_agg(a.attname::text ORDER BY k.ord)
          FROM unnest(i.indkey::int2[]) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute a ON a.attrelid = i.indrelid AND a.attnum = k.attnum),
       NULL, NULL
     FROM pg_index i
     JOIN pg_class t ON t.oid = i.indrelid
     JOIN pg_namespace n ON n.oid = t.relnamespace
     WHERE i.indisunique AND NOT i.indisprimary AND i.indexprs IS NULL
       AND NOT EXISTS (SELECT 1 FROM pg_constraint c WHERE c.conindid = i.indexrelid)
     ORDER BY 2, 4, 5`,
    [userSchemas],
  );
  const keys = new Map(
    constraints
      .filter((item) => item.kind === "p")
      .map((item) => [item.child, item.child_columns]),
  );
  const foreignKeys = constraints.filter((item) => item.kind === "f");
  const uniqueKeys = constraints.filter((item) => item.kind !== "f");
  /* A unique key that also holds the row's own primary key never clashes. */
  const holdsOwnKey = (key) =>
    key.kind !== "p" &&
    (keys.get(key.child) ?? []).every((column) =>
      key.child_columns.includes(column),
    );

  return foreignKeys
    .filter((item) => item.from_user_data && keys.has(item.parent))
    .map((item) => {
      const keyColumns = keys.get(item.parent);
      const childKey = keyColumns.map(
        (column) => item.child_columns[item.parent_columns.indexOf(column)],
      );
      const carries = foreignKeys
        .filter(
          (parentKey) =>
            parentKey.child === item.parent &&
            parentKey.child_columns.every(
              (column) =>
                item.parent_columns.includes(column) &&
                !keyColumns.includes(column),
            ),
        )
        .filter((parentKey) => {
          const carried = parentKey.child_columns.map(
            (column) => item.child_columns[item.parent_columns.indexOf(column)],
          );

          /* A link of the child's own on those columns follows the entry. */
          return !foreignKeys.some(
            (own) =>
              own.child === item.child &&
              own.parent === parentKey.parent &&
              own.child_columns.join() === carried.join(),
          );
        })
        .map((parentKey) => parentKey.parent);

      return {
        carries: [...new Set(carries)].sort(),
        child: item.child,
        keyColumns,
        nullable: keyColumns.every(
          (column) => item.child_nullable[item.parent_columns.indexOf(column)],
        ),
        parent: item.parent,
        unique: uniqueKeys.some(
          (key) =>
            key.child === item.child &&
            childKey.some((column) => key.child_columns.includes(column)) &&
            !holdsOwnKey(key),
        ),
      };
    })
    .filter((link) => link.keyColumns.every(Boolean));
}

const sameChange = (left, right) =>
  left.table === right.table &&
  left.id === right.id &&
  left.becomes === right.becomes;

/*
 * What the ID changes check reports. The list only grows: devices remember
 * the entries they followed, so a shipped entry never changes or goes. Each
 * entry names an ID of a table user data points at, becomes an ID that
 * exists (or one a later entry changes again), and a removal or a clash
 * with a row already on the new ID only touches rows that can lose it: a
 * link that may be empty, or a table in id-change-drops.json. An ID that
 * user rows carry through another table's link (a form's species) can't be
 * followed at all.
 */
export function findIdChangeProblems({
  droppable,
  idChanges,
  ids,
  lastRelease,
  links,
}) {
  const problems = [];
  const shipped = lastRelease?.idChanges ?? [];

  if (
    shipped.length > idChanges.length ||
    shipped.some((change, index) => !sameChange(change, idChanges[index]))
  ) {
    problems.push(
      "The ID changes list changed an entry that already shipped; entries only get added at the end.",
    );
  }

  idChanges.forEach((change, index) => {
    const label = `ID change ${index + 1} (${change.table} ${change.id})`;
    const tableLinks = links.filter((link) => link.parent === change.table);

    if (
      !tableLinks.length ||
      !(ids[change.table] || lastRelease?.ids[change.table])
    ) {
      problems.push(
        `${label}: ${change.table} holds no game data IDs user data points at.`,
      );
      return;
    }

    const parts = tableLinks[0].keyColumns.length;

    for (const id of [change.id, change.becomes]) {
      if (id !== null && id.split(":").length !== parts) {
        problems.push(
          `${label}: ${change.table} IDs have ${parts} part(s), joined with ":"; "${id}" doesn't fit.`,
        );
      }
    }

    if (change.becomes === change.id) {
      problems.push(`${label} becomes itself.`);
    }

    for (const link of links) {
      if (link.carries.includes(change.table)) {
        problems.push(
          `${label}: rows of ${link.child} carry ${change.table} IDs through ${link.parent} and can't follow it.`,
        );
      }
    }

    if (change.becomes !== null) {
      for (const link of tableLinks) {
        if (link.unique && !link.nullable && !droppable.has(link.child)) {
          problems.push(
            `${label}: a row of ${link.child} already on ${change.becomes} would be in the way, and those rows can't be dropped.`,
          );
        }
      }

      const changedLater = idChanges
        .slice(index + 1)
        .some(
          (later) =>
            later.table === change.table && later.id === change.becomes,
        );

      if (!(change.becomes in (ids[change.table] ?? {})) && !changedLater) {
        problems.push(`${label} becomes ${change.becomes}, which isn't there.`);
      }
    } else {
      for (const link of tableLinks) {
        if (!link.nullable && !droppable.has(link.child)) {
          problems.push(
            `${label} is removed, but rows of ${link.child} can't lose it; give it an ID to become.`,
          );
        }
      }
    }

    /* A new entry for an ID that kept its meaning would move rows off it. */
    const before = lastRelease?.ids[change.table]?.[change.id];

    if (
      index >= shipped.length &&
      before !== undefined &&
      ids[change.table]?.[change.id] === before
    ) {
      problems.push(
        `${label} still means ${before || "the same"}; only a removed or reused ID needs an entry.`,
      );
    }
  });

  return problems;
}

/* What the schema check reports: a schema change with no device update. */
export function findSchemaProblems({ deviceUpdates, lastRelease, schemaHash }) {
  if (!lastRelease) return [];

  const problems = [];

  if (
    lastRelease.deviceUpdate &&
    !deviceUpdates.includes(lastRelease.deviceUpdate)
  ) {
    problems.push(
      `Device update ${lastRelease.deviceUpdate} shipped in the last release and is gone; devices may still need it.`,
    );
  }

  if (
    schemaHash !== lastRelease.schemaHash &&
    (deviceUpdates.at(-1) ?? null) === lastRelease.deviceUpdate
  ) {
    problems.push(
      "The schema changed since the last release, with no new device update in database/device-updates/.",
    );
  }

  return problems;
}
