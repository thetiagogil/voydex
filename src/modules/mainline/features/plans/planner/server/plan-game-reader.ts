import { PlanSaveInputError } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The version group a Plan is for: its first game (a Plan is stored for one
 * game, so "either version" keeps the group's first), every game in it, its
 * generation and expansions, read before anything is written.
 * TODO(v3-data): a version preference ("either", Sword, Shield) on
 * planning.mainline_team_plans; until then a Plan stores its group's first game.
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
      .select("id")
      .eq("version_group_id", group.id)
      .order("sort_order"),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("id")
      .eq("parent_version_group_id", group.id),
  ]);

  const gameIds = (gamesResult.data ?? []).map((game) => game.id);

  if (gamesResult.error || expansionsResult.error || !gameIds.length) {
    throw new Error("Unable to read the Plan's game.");
  }

  return {
    expansionIds: (expansionsResult.data ?? []).map((child) => child.id),
    gameId: gameIds[0],
    gameIds,
    generationId: group.generation_id,
    name: group.name,
    versionGroupId: group.id,
  };
};

export type PlanGame = Awaited<ReturnType<typeof readPlanGame>>;
