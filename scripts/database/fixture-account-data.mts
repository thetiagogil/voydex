import { localUserId } from "@/platform/local-db/device-schema";
import { userTables } from "@/platform/local-db/user-data";

/*
 * The SQL that reads one account's rows from the local stack the way a
 * device's backup holds them: table by table, with the device's one local
 * user in place of the account's id (see fixture-backups.mts).
 */

export const quote = (value: string) => `'${value.replaceAll("'", "''")}'`;

/* Each table of yours with its columns. */
export type AccountColumns = Map<string, Set<string>>;

export const columnsSql = `SELECT table_schema || '.' || table_name AS name,
    array_agg(column_name::text) AS columns
  FROM information_schema.columns
  WHERE table_schema IN ('public', 'gameplay', 'planning')
  GROUP BY 1`;

export const toAccountColumns = (
  rows: { columns: string[]; name: string }[],
): AccountColumns =>
  new Map(rows.map((row) => [row.name, new Set(row.columns)]));

/*
 * How a table's rows find their account, by the first of these columns it
 * has. A new table of yours without one stops the script.
 */
const ownerFilters: [column: string, filter: (userId: string) => string][] = [
  ["user_id", (userId) => `user_id = ${userId}`],
  [
    "play_id",
    (userId) =>
      `play_id IN (SELECT id FROM gameplay.mainline_plays WHERE user_id = ${userId})`,
  ],
  [
    "play_pokemon_id",
    (userId) =>
      `play_pokemon_id IN (SELECT p.id FROM gameplay.mainline_play_pokemon p
         JOIN gameplay.mainline_plays play ON play.id = p.play_id
         WHERE play.user_id = ${userId})`,
  ],
  [
    "snapshot_id",
    (userId) =>
      `snapshot_id IN (SELECT s.id FROM gameplay.mainline_play_event_team_snapshots s
         JOIN gameplay.mainline_plays play ON play.id = s.play_id
         WHERE play.user_id = ${userId})`,
  ],
  [
    "rule_set_id",
    (userId) =>
      `rule_set_id IN (SELECT id FROM gameplay.mainline_challenge_rule_sets
         WHERE user_id = ${userId})`,
  ],
  [
    "team_plan_id",
    (userId) =>
      `team_plan_id IN (SELECT id FROM planning.mainline_team_plans
         WHERE user_id = ${userId})`,
  ],
  [
    "team_plan_member_id",
    (userId) =>
      `team_plan_member_id IN (SELECT m.id FROM planning.mainline_team_plan_members m
         JOIN planning.mainline_team_plans plan ON plan.id = m.team_plan_id
         WHERE plan.user_id = ${userId})`,
  ],
];

const ownerFilter = (table: string, columns: Set<string>, userId: string) => {
  if (table === "public.profiles") return `id = ${userId}`;

  const match = ownerFilters.find(([column]) => columns.has(column));

  if (!match) {
    throw new Error(
      `${table}: no column ties its rows to an account; add one to ownerFilters.`,
    );
  }

  return match[1](userId);
};

/* One row, `data`: the account's rows as JSON text, by table. */
export const accountDataSql = (userId: string, columns: AccountColumns) => {
  const id = `${quote(userId)}::uuid`;
  const parts = userTables.map(({ name }) => {
    const tableColumns = columns.get(name);

    if (!tableColumns) throw new Error(`${name} isn't in the database.`);

    return `${quote(name)}, (SELECT coalesce(jsonb_agg(to_jsonb(t)), '[]'::jsonb)
      FROM ${name} t WHERE ${ownerFilter(name, tableColumns, id)})`;
  });

  return `SELECT replace(jsonb_build_object(${parts.join(",\n")})::text,
    ${quote(userId)}, ${quote(localUserId)}) AS data`;
};
