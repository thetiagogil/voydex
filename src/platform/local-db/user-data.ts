import {
  LocalDbError,
  runQuery,
  toLocalDbError,
  type LocalDb,
} from "@/platform/local-db/local-db";

/*
 * Your own rows on this device, table by table: what a backup holds and
 * what a restore puts back. Every device has the same one local user, so
 * the rows move between devices as they are. Game data (the reference and
 * tracking tables, the lookups and Voydex's own rules) isn't yours: it
 * comes back from the game data files.
 */

/* A table of yours; `where` keeps out the rows Voydex ships with it. */
type UserTable = { name: string; where?: string };

/* In insert order: each table after the ones it points at. */
export const userTables: readonly UserTable[] = [
  { name: "public.profiles" },
  { name: "public.user_preferences" },
  { name: "public.tags" },
  { name: "gameplay.mainline_challenge_rules", where: "user_id IS NOT NULL" },
  {
    name: "gameplay.mainline_challenge_rule_sets",
    where: "user_id IS NOT NULL",
  },
  {
    name: "gameplay.mainline_challenge_rule_set_rules",
    where:
      "rule_set_id IN (SELECT id FROM gameplay.mainline_challenge_rule_sets WHERE user_id IS NOT NULL)",
  },
  { name: "gameplay.user_game_library_entries" },
  { name: "gameplay.user_favourite_pokemon" },
  { name: "gameplay.mainline_plays" },
  { name: "gameplay.mainline_play_settings" },
  { name: "gameplay.mainline_play_optional_content_scopes" },
  { name: "gameplay.mainline_play_pokemon" },
  { name: "gameplay.mainline_play_pokemon_moves" },
  { name: "gameplay.mainline_play_milestone_progress" },
  { name: "gameplay.mainline_play_milestone_decisions" },
  { name: "gameplay.mainline_play_collectible_entry_progress" },
  { name: "gameplay.mainline_play_pokedex_species_progress" },
  { name: "gameplay.mainline_play_events" },
  { name: "gameplay.mainline_play_event_pokemon_refs" },
  { name: "gameplay.mainline_play_event_team_snapshots" },
  { name: "gameplay.mainline_play_event_team_snapshot_moves" },
  { name: "gameplay.mainline_play_tags" },
  { name: "gameplay.mainline_play_pokemon_tags" },
  { name: "gameplay.mainline_play_challenge_rules" },
  { name: "planning.mainline_team_plans" },
  { name: "planning.mainline_team_plan_optional_content_scopes" },
  { name: "planning.mainline_team_plan_members" },
  { name: "planning.mainline_team_plan_member_moves" },
  { name: "planning.mainline_play_plan_links" },
];

export type UserRow = Record<string, unknown>;

/* `{ "gameplay.mainline_plays": [row, ...] }`, rows as JSON objects. */
export type UserData = Record<string, UserRow[]>;

const selectRows = ({ name, where }: UserTable) =>
  `SELECT to_jsonb(t) AS row FROM ${name} t${where ? ` WHERE ${where}` : ""}`;

/* Every row of yours on this device. */
export const readUserData = async (db: LocalDb): Promise<UserData> => {
  const data: UserData = {};

  for (const table of userTables) {
    const rows = await runQuery<{ row: UserRow }>(db, selectRows(table));

    data[table.name] = rows.map(({ row }) => row);
  }

  return data;
};

/* The games (version groups) your Plays and Plans need on the device. */
export const readNeededVersionGroups = (data: UserData) => {
  const ids = new Set<number>();

  for (const name of [
    "gameplay.mainline_plays",
    "planning.mainline_team_plans",
  ]) {
    for (const row of data[name] ?? []) {
      if (typeof row.version_group_id === "number") {
        ids.add(row.version_group_id);
      }
    }
  }

  return [...ids].sort((left, right) => left - right);
};

type Transaction = Parameters<Parameters<LocalDb["transaction"]>[0]>[0];

/* A table's columns a row can set (generated columns can't be set). */
const readColumns = async (tx: Transaction, table: string) => {
  const { rows } = await tx.query<{ name: string }>(
    `SELECT attname AS name FROM pg_attribute
     WHERE attrelid = $1::regclass AND attnum > 0
       AND NOT attisdropped AND attgenerated = ''`,
    [table],
  );

  return new Set(rows.map((row) => row.name));
};

const quoteName = (name: string) => `"${name.replaceAll('"', '""')}"`;

/*
 * Replaces every row of yours with `data`, in one transaction: on any
 * failure (a row that breaks a rule, a game that isn't on the device) the
 * device keeps what it had. Rows go back exactly as they were: the
 * triggers that stamp times or move a Play's "last changed" are off
 * meanwhile, while foreign keys and checks still hold. A column the data
 * lacks takes its default; one the table lacks is left out.
 */
export const replaceUserData = async (db: LocalDb, data: UserData) => {
  try {
    await db.transaction(async (tx) => {
      for (const { name } of userTables) {
        await tx.exec(`ALTER TABLE ${name} DISABLE TRIGGER USER`);
      }

      for (const table of [...userTables].reverse()) {
        await tx.exec(
          `DELETE FROM ${table.name}${table.where ? ` WHERE ${table.where}` : ""}`,
        );
      }

      for (const { name } of userTables) {
        const rows = data[name] ?? [];

        if (!rows.length) continue;

        const tableColumns = await readColumns(tx, name);
        const rowColumns = new Set(rows.flatMap((row) => Object.keys(row)));
        const columns = [...tableColumns]
          .filter((column) => rowColumns.has(column))
          .map(quoteName)
          .join(", ");

        await tx.query(
          `INSERT INTO ${name} (${columns})
           SELECT ${columns} FROM jsonb_populate_recordset(NULL::${name}, $1::jsonb)`,
          [JSON.stringify(rows)],
        );
      }

      for (const { name } of userTables) {
        await tx.exec(`ALTER TABLE ${name} ENABLE TRIGGER USER`);
      }
    });
  } catch (error) {
    const cause = toLocalDbError(error);

    throw new LocalDbError(
      "This backup doesn't fit this version of Voydex, so nothing changed.",
      {
        cause,
        code: cause.code,
      },
    );
  }
};
