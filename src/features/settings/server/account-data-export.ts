import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

type ExportSchema = "gameplay" | "planning" | "public";

type ExportTable = {
  /* The primary key, so pages of rows come back in a stable order. */
  orderBy: readonly string[];
  /* Narrows a table that also holds shared rows (system challenge rules) to yours. */
  ownedByColumn?: string;
  schema: ExportSchema;
  table: string;
};

/*
 * Every table that holds what you recorded. Row Level Security already
 * limits each read to your own rows; reference data (games, Pokémon, moves)
 * is left out because it is the same for everyone.
 */
const exportTables: readonly ExportTable[] = [
  { orderBy: ["id"], schema: "public", table: "profiles" },
  { orderBy: ["user_id"], schema: "public", table: "user_preferences" },
  { orderBy: ["id"], schema: "public", table: "tags" },
  { orderBy: ["id"], schema: "gameplay", table: "mainline_plays" },
  { orderBy: ["play_id"], schema: "gameplay", table: "mainline_play_settings" },
  {
    orderBy: ["play_id", "version_group_id"],
    schema: "gameplay",
    table: "mainline_play_optional_content_scopes",
  },
  { orderBy: ["id"], schema: "gameplay", table: "mainline_play_pokemon" },
  {
    orderBy: ["play_pokemon_id", "slot"],
    schema: "gameplay",
    table: "mainline_play_pokemon_moves",
  },
  {
    orderBy: ["play_id", "milestone_id"],
    schema: "gameplay",
    table: "mainline_play_milestone_progress",
  },
  {
    orderBy: ["play_id", "milestone_id"],
    schema: "gameplay",
    table: "mainline_play_milestone_decisions",
  },
  {
    orderBy: ["play_id", "collectible_entry_id"],
    schema: "gameplay",
    table: "mainline_play_collectible_entry_progress",
  },
  {
    orderBy: ["play_id", "species_id"],
    schema: "gameplay",
    table: "mainline_play_pokedex_species_progress",
  },
  { orderBy: ["id"], schema: "gameplay", table: "mainline_play_events" },
  {
    orderBy: ["id"],
    schema: "gameplay",
    table: "mainline_play_event_pokemon_refs",
  },
  {
    orderBy: ["id"],
    schema: "gameplay",
    table: "mainline_play_event_team_snapshots",
  },
  {
    orderBy: ["snapshot_id", "slot"],
    schema: "gameplay",
    table: "mainline_play_event_team_snapshot_moves",
  },
  {
    orderBy: ["play_id", "tag_id"],
    schema: "gameplay",
    table: "mainline_play_tags",
  },
  {
    orderBy: ["play_pokemon_id", "tag_id"],
    schema: "gameplay",
    table: "mainline_play_pokemon_tags",
  },
  {
    orderBy: ["id"],
    ownedByColumn: "user_id",
    schema: "gameplay",
    table: "mainline_challenge_rules",
  },
  {
    orderBy: ["play_id", "challenge_rule_id"],
    schema: "gameplay",
    table: "mainline_play_challenge_rules",
  },
  {
    orderBy: ["user_id", "game_id"],
    schema: "gameplay",
    table: "user_game_library_entries",
  },
  { orderBy: ["id"], schema: "planning", table: "mainline_team_plans" },
  {
    orderBy: ["team_plan_id", "version_group_id"],
    schema: "planning",
    table: "mainline_team_plan_optional_content_scopes",
  },
  { orderBy: ["id"], schema: "planning", table: "mainline_team_plan_members" },
  {
    orderBy: ["team_plan_member_id", "slot"],
    schema: "planning",
    table: "mainline_team_plan_member_moves",
  },
  { orderBy: ["id"], schema: "planning", table: "mainline_play_plan_links" },
  {
    orderBy: ["team_plan_id", "tag_id"],
    schema: "planning",
    table: "mainline_team_plan_tags",
  },
  {
    orderBy: ["team_plan_id", "challenge_rule_id"],
    schema: "planning",
    table: "mainline_team_plan_challenge_rules",
  },
];

/* The API returns at most this many rows per request (`max_rows`). */
const PAGE_SIZE = 1000;

type ExportPage = PromiseLike<{
  data: unknown[] | null;
  error: { message: string } | null;
}>;

type ExportQuery = {
  eq: (column: string, value: string) => ExportQuery;
  order: (column: string, options: { ascending: boolean }) => ExportQuery;
  range: (from: number, to: number) => ExportPage;
};

/*
 * The export walks tables by name, which the generated types can't follow,
 * so it reads through this narrow view of the client. Every name it passes
 * comes from `exportTables` above.
 */
type ExportClient = {
  schema: (schema: ExportSchema) => {
    from: (table: string) => { select: (columns: "*") => ExportQuery };
  };
};

const readAllRows = async (
  client: ExportClient,
  { orderBy, ownedByColumn, schema, table }: ExportTable,
  userId: string,
) => {
  const rows: unknown[] = [];

  for (let from = 0; ; from += PAGE_SIZE) {
    let query = client.schema(schema).from(table).select("*");

    if (ownedByColumn) {
      query = query.eq(ownedByColumn, userId);
    }
    for (const column of orderBy) {
      query = query.order(column, { ascending: true });
    }

    const { data, error } = await query.range(from, from + PAGE_SIZE - 1);

    if (error) {
      throw new Error(`Couldn't read ${schema}.${table}: ${error.message}`);
    }

    rows.push(...(data ?? []));

    if (!data || data.length < PAGE_SIZE) {
      return rows;
    }
  }
};

export type AccountDataExport = {
  account: { email: string | null; id: string };
  exportedAt: string;
  format: "voydex-account-export";
  tables: Record<string, unknown[]>;
  version: 1;
};

/*
 * Download your data: every row you own, table by table, as one JSON
 * document. A failed table fails the whole export, so a file is never
 * missing data without saying so.
 */
export const readAccountDataExport = async (): Promise<AccountDataExport> => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const claims = claimsResult?.data?.claims;

  if (!claims?.sub) {
    throw new Error("Log in to download your data.");
  }

  const userId = claims.sub;
  const client = supabase as unknown as ExportClient;
  const tableRows = await Promise.all(
    exportTables.map(async (table) => [
      `${table.schema}.${table.table}`,
      await readAllRows(client, table, userId),
    ]),
  );

  return {
    account: {
      email: typeof claims.email === "string" ? claims.email : null,
      id: userId,
    },
    exportedAt: new Date().toISOString(),
    format: "voydex-account-export",
    tables: Object.fromEntries(tableRows),
    version: 1,
  };
};
