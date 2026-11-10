import { PlanSaveInputError } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The version group a Plan is for: every game in it (the first is where a
 * Plan for either version is stored), its generation and expansions, read
 * before anything is written.
 */
export const readPlanGame = async (
  supabase: ServerSupabaseClient,
  versionGroupSlug: string,
) => {
  const groupResult = await supabase
    .schema("reference")
    .from("version_groups")
    .select("id, generation_id, name, parent_version_group_id")
    .eq("slug", versionGroupSlug)
    .maybeSingle();

  if (groupResult.error) {
    throw new Error("Unable to read the Plan's game.");
  }

  if (!groupResult.data || groupResult.data.parent_version_group_id !== null) {
    throw new PlanSaveInputError("Pick a game for the Plan.");
  }

  const group = groupResult.data;
  const [gamesResult, expansionsResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("games")
      .select("id, slug")
      .eq("version_group_id", group.id)
      .order("sort_order"),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("id")
      .eq("parent_version_group_id", group.id)
      .order("sort_order"),
  ]);

  const games = gamesResult.data ?? [];
  const gameIds = games.map((game) => game.id);

  if (gamesResult.error || expansionsResult.error || !gameIds.length) {
    throw new Error("Unable to read the Plan's game.");
  }

  return {
    expansionIds: (expansionsResult.data ?? []).map((child) => child.id),
    gameIds,
    games,
    generationId: group.generation_id,
    name: group.name,
    versionGroupId: group.id,
  };
};

export type PlanGame = Awaited<ReturnType<typeof readPlanGame>>;
