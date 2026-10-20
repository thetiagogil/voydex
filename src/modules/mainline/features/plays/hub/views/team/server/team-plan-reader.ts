import type {
  MainlinePlayFollowablePlan,
  MainlinePlayTeamPlanRows,
} from "@/modules/mainline/features/plays/hub/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

export const readMainlinePlayTeamPlanRows = async (
  supabase: ServerSupabaseClient,
  userId: string,
  playId: string,
  generationId: number | null,
): Promise<MainlinePlayTeamPlanRows> => {
  const result = await supabase
    .schema("views")
    .from("mainline_play_team_plan_detail")
    .select("*")
    .eq("user_id", userId)
    .eq("play_id", playId)
    .order("slot", { ascending: true });

  if (result.error) {
    throw new Error("Unable to load the Mainline Team Plan summary.");
  }

  const rows = result.data ?? [];
  const formIds = uniqueNumberIds(rows.map((row) => row.target_form_id));

  if (!formIds.length) {
    return { attributes: [], rows, types: [] };
  }

  let attributesQuery = supabase
    .schema("reference")
    .from("pokemon_attributes")
    .select("*")
    .in("form_id", formIds);

  if (generationId) {
    attributesQuery = attributesQuery.lte("generation_start_id", generationId);
  }

  const attributesResult = await attributesQuery
    .order("form_id", { ascending: true })
    .order("generation_start_id", { ascending: false });

  if (attributesResult.error) {
    throw new Error(
      "Unable to load the Mainline Team Plan Pokémon attributes.",
    );
  }

  const attributes = attributesResult.data ?? [];
  const typeIds = uniqueNumberIds(
    attributes.flatMap((attribute) => [
      attribute.primary_type_id,
      attribute.secondary_type_id,
    ]),
  );
  const typesResult = typeIds.length
    ? await supabase
        .schema("reference")
        .from("types")
        .select("*")
        .in("id", typeIds)
    : null;

  if (typesResult?.error) {
    throw new Error("Unable to load the Mainline Team Plan type references.");
  }

  return {
    attributes,
    rows,
    types: typesResult?.data ?? [],
  };
};

/*
 * Your Plans this Play could follow instead: the same game and version group
 * (the link requires both), not archived, the latest changed first.
 */
export const readMainlinePlayFollowablePlans = async (
  supabase: ServerSupabaseClient,
  {
    gameId,
    userId,
    versionGroupId,
  }: {
    gameId: number | null;
    userId: string;
    versionGroupId: number | null;
  },
): Promise<MainlinePlayFollowablePlan[]> => {
  if (!gameId || !versionGroupId) {
    return [];
  }

  const result = await supabase
    .schema("views")
    .from("mainline_team_plan_summary")
    .select(
      "team_plan_id, team_plan_name, member_count, status_slug, updated_at",
    )
    .eq("user_id", userId)
    .eq("game_id", gameId)
    .eq("version_group_id", versionGroupId)
    .order("updated_at", { ascending: false });

  if (result.error) {
    throw new Error("Unable to load your Plans for this game.");
  }

  return (result.data ?? []).flatMap((row) =>
    row.team_plan_id && row.status_slug !== "archived"
      ? [
          {
            memberCount: row.member_count ?? 0,
            name: row.team_plan_name ?? "Untitled Plan",
            planId: row.team_plan_id,
            updatedAt: row.updated_at,
          },
        ]
      : [],
  );
};
