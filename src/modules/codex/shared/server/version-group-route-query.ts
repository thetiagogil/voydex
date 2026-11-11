import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import type { VersionGroupRouteRows } from "@/modules/reference/features/games/domain/version-groups";

/* Every game and version group: two small tables the Codex addresses resolve against. */
export const loadVersionGroupRouteRows = async (
  supabase: ServerSupabaseClient,
): Promise<VersionGroupRouteRows> => {
  const [gamesResult, versionGroupsResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("games")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("*")
      .order("sort_order", { ascending: true }),
  ]);

  if (gamesResult.error || versionGroupsResult.error) {
    throw new Error("Unable to load games and version groups.");
  }

  return {
    games: gamesResult.data ?? [],
    versionGroups: versionGroupsResult.data ?? [],
  };
};
