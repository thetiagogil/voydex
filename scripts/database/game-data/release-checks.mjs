import fs from "node:fs";
import path from "node:path";

import { databaseDir } from "../context.mjs";

/*
 * The release checks. From launch on, a saved Play must keep working with a
 * new game data release and a new app:
 *
 * - IDs: every game data ID that user data can point at stays, and keeps its
 *   meaning (its slug), unless the ID changes list says what happened to it.
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

/*
 * Devices don't apply ID changes to your rows yet: a release with any would
 * be refused by every device whose rows use a removed ID, and a reused ID
 * would keep its old meaning. Until they do, the list stays empty.
 */
export function findIdChangeProblems(idChanges) {
  return idChanges.length
    ? [
        `${path.relative(databaseDir, idChangesPath)} has ${idChanges.length} entries, but devices can't apply ID changes to saved data yet; keep the ID or build that first.`,
      ]
    : [];
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
