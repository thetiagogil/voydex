import { cache } from "react";

import {
  createServerSupabaseClient,
  type ServerSupabaseClient,
} from "@/platform/supabase/server-client";
import {
  resolveVersionGroupRoute,
  type VersionGroupRoute,
  type VersionGroupRouteRows,
} from "@/modules/reference/features/games/domain/version-groups";

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

/* Read once per request: a route's guard and its page share it. */
export const getCodexVersionGroupRouteRows = cache(
  async (): Promise<VersionGroupRouteRows> => {
    const supabase = await createServerSupabaseClient();

    return loadVersionGroupRouteRows(supabase);
  },
);

/*
 * What a Codex address segment names: a base version group (canonical), or a
 * game or expansion that redirects to one. Null for an unknown slug.
 */
export const getCodexVersionGroupRoute = async (
  slug: string,
): Promise<VersionGroupRoute | null> => {
  return resolveVersionGroupRoute(slug, await getCodexVersionGroupRouteRows());
};
