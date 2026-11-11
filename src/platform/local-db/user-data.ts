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

export type Transaction = Parameters<Parameters<LocalDb["transaction"]>[0]>[0];

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
 * The triggers that stamp a row (its updated_at, its Play's "last changed",
 * its change record) rather than check it: off while rows go back as they
 * were. The checks
 * (a form the game allows, a fixed Tera Type) stay on.
 */
const stampingTriggers = async (tx: Transaction) => {
  const { rows } = await tx.query<{ table_name: string; trigger: string }>(
    `SELECT schemas.nspname || '.' || tables.relname AS table_name,
       triggers.tgname AS trigger
     FROM pg_trigger triggers
     JOIN pg_class tables ON tables.oid = triggers.tgrelid
     JOIN pg_namespace schemas ON schemas.oid = tables.relnamespace
     WHERE NOT triggers.tgisinternal
       AND (triggers.tgname LIKE 'set\\_%\\_updated\\_at'
         OR triggers.tgname IN ('touch_play_after_change', 'record_device_change'))
       AND schemas.nspname || '.' || tables.relname = ANY ($1)`,
    [userTables.map((table) => table.name)],
  );

  return rows;
};

const switchTriggers = async (
  tx: Transaction,
  triggers: { table_name: string; trigger: string }[],
  mode: "DISABLE" | "ENABLE",
) => {
  for (const { table_name, trigger } of triggers) {
    await tx.exec(
      `ALTER TABLE ${table_name} ${mode} TRIGGER ${quoteName(trigger)}`,
    );
  }
};

/*
 * Replaces every row of yours with `data`, in one transaction: on any
 * failure (a row that breaks a rule, a game that isn't on the device) the
 * device keeps what it had. Rows go back exactly as they were: the
 * triggers that stamp times or move a Play's "last changed" are off
 * meanwhile, while foreign keys, checks and the triggers that check a row
 * still hold. A column the data lacks takes its default; one the table
 * lacks is left out. `inside` runs in the same transaction first (a check)
 * and `after` once the rows are in (the change records that go with them).
 */
export const replaceUserData = async (
  db: LocalDb,
  data: UserData,
  {
    after,
    inside,
  }: {
    after?: (tx: Transaction) => Promise<void>;
    inside?: (tx: Transaction) => Promise<void>;
  } = {},
) => {
  try {
    await db.transaction(async (tx) => {
      await inside?.(tx);

      const triggers = await stampingTriggers(tx);

      await switchTriggers(tx, triggers, "DISABLE");

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

      /* Deferred checks run now, so the triggers can come back on. */
      await tx.exec("SET CONSTRAINTS ALL IMMEDIATE");
      await switchTriggers(tx, triggers, "ENABLE");
      await after?.(tx);
    });
  } catch (error) {
    if (error instanceof LocalDbError) throw error;

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
