import type {
  MainlinePlayMilestoneRows,
  MainlinePlayOverview,
  MainlinePlayTeamRows,
} from "@/modules/mainline/features/plays/hub/types";
import { getMainlinePlayTeamMoveIds } from "@/modules/mainline/features/plays/hub/tabs/overview/data/play-overview-mappers";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

export const readMainlinePlayOverview = async (
  supabase: ServerSupabaseClient,
  userId: string,
  playId: string,
): Promise<MainlinePlayOverview | null> => {
  const overviewResult = await supabase
    .schema("views")
    .from("mainline_play_overview")
    .select("*")
    .eq("user_id", userId)
    .eq("play_id", playId)
    .maybeSingle();

  if (overviewResult.error) {
    throw new Error("Unable to load Mainline play overview.");
  }

  return overviewResult.data ?? null;
};

export const readMainlinePlayTeamRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
  generationId: number | null,
  versionGroupId: number | null,
): Promise<MainlinePlayTeamRows> => {
  const teamResult = await supabase
    .schema("views")
    .from("mainline_play_team_detail")
    .select("*")
    .eq("play_id", playId)
    .in("roster_state_slug", ["active", "reserve"])
    .order("slot", { ascending: true })
    .limit(12);

  if (teamResult.error) {
    throw new Error("Unable to load Mainline play team preview.");
  }

  const members = teamResult.data ?? [];
  const formIds = uniqueNumberIds(members.map((member) => member.form_id));
  const moveIds = getMainlinePlayTeamMoveIds(members);
  const abilityIds = uniqueNumberIds(
    members.map((member) => member.ability_id),
  );
  const natureIds = uniqueNumberIds(members.map((member) => member.nature_id));
  const ballItemIds = uniqueNumberIds(
    members.map((member) => member.ball_item_id),
  );

  let attributesQuery = supabase
    .schema("reference")
    .from("pokemon_attributes")
    .select("*");

  if (generationId) {
    attributesQuery = attributesQuery.lte("generation_start_id", generationId);
  }

  let moveAttributesQuery = supabase
    .schema("reference")
    .from("move_attributes")
    .select("*")
    .in("move_id", moveIds.length ? moveIds : [-1]);

  if (generationId) {
    moveAttributesQuery = moveAttributesQuery.lte(
      "generation_start_id",
      generationId,
    );
  }

  const abilityAttributesQuery = supabase
    .schema("reference")
    .from("ability_attributes")
    .select("*")
    .in("ability_id", abilityIds.length ? abilityIds : [-1]);

  const [
    abilityAttributesResult,
    attributesResult,
    moveAttributesResult,
    ballItemsResult,
    pokeBallCategoryResult,
    naturesResult,
    versionGroupsResult,
  ] = await Promise.all([
    abilityAttributesQuery
      .order("ability_id", { ascending: true })
      .order("version_group_start_id", { ascending: false }),
    attributesQuery
      .in("form_id", formIds.length ? formIds : [-1])
      .order("form_id", { ascending: true })
      .order("generation_start_id", { ascending: false }),
    moveAttributesQuery
      .order("move_id", { ascending: true })
      .order("generation_start_id", { ascending: false }),
    supabase
      .schema("reference")
      .from("items")
      .select("id, primary_category_id")
      .in("id", ballItemIds.length ? ballItemIds : [-1]),
    supabase
      .schema("reference")
      .from("item_categories")
      .select("id")
      .eq("slug", "poke_ball")
      .maybeSingle(),
    supabase
      .schema("reference")
      .from("natures")
      .select("*")
      .in("id", natureIds.length ? natureIds : [-1]),
    supabase.schema("reference").from("version_groups").select("*"),
  ]);

  if (
    abilityAttributesResult.error ||
    attributesResult.error ||
    moveAttributesResult.error ||
    ballItemsResult.error ||
    pokeBallCategoryResult.error ||
    naturesResult.error ||
    versionGroupsResult.error
  ) {
    throw new Error("Unable to load Mainline play team references.");
  }

  const attributes = attributesResult.data ?? [];
  const moveAttributes = moveAttributesResult.data ?? [];
  const typeIds = uniqueNumberIds([
    ...attributes.flatMap((attribute) => [
      attribute.primary_type_id,
      attribute.secondary_type_id,
    ]),
    ...moveAttributes.map((attribute) => attribute.type_id),
  ]);

  const typesResult = typeIds.length
    ? await supabase
        .schema("reference")
        .from("types")
        .select("*")
        .in("id", typeIds)
    : null;

  if (typesResult?.error) {
    throw new Error("Unable to load Mainline play team type references.");
  }

  return {
    abilityAttributes: abilityAttributesResult.data ?? [],
    attributes,
    members,
    moveAttributes,
    natures: naturesResult.data ?? [],
    types: typesResult?.data ?? [],
    validBallItemIds: (ballItemsResult.data ?? [])
      .filter(
        (item) => item.primary_category_id === pokeBallCategoryResult.data?.id,
      )
      .map((item) => item.id),
    versionGroupId,
    versionGroups: versionGroupsResult.data ?? [],
  };
};

export const readMainlinePlayMilestoneRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayMilestoneRows> => {
  const [lastCompletedResult, nextMilestoneResult] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("is_completed", true)
      .order("completed_at", { ascending: false })
      .order("sort_order", { ascending: false })
      .limit(1)
      .maybeSingle(),
    supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("is_completed", false)
      .eq("is_included_in_completion", true)
      .order("sort_order", { ascending: true })
      .limit(1)
      .maybeSingle(),
  ]);

  if (lastCompletedResult.error || nextMilestoneResult.error) {
    throw new Error("Unable to load Mainline play milestone overview.");
  }

  return {
    lastCompletedMilestone: lastCompletedResult.data ?? null,
    nextMilestone: nextMilestoneResult.data ?? null,
  };
};
