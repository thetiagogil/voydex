import { getMainlinePlayTeamMoveIds } from "@/modules/mainline/features/plays/hub/data/team-member-mappers";
import type { MainlinePlayTeamRows } from "@/modules/mainline/features/plays/hub/types";
import { applyMoveVersionGroupOverrides } from "@/modules/reference/features/pokemon/data/move-attribute-overrides";
import { readMoveVersionGroupOverrides } from "@/modules/reference/features/pokemon/server/move-override-reader";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

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
    .order("roster_state_id", { ascending: true })
    .order("slot", { ascending: true, nullsFirst: false })
    .order("created_at", { ascending: true });

  if (teamResult.error) {
    throw new Error("Unable to load Mainline play team.");
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
  const heldItemIds = uniqueNumberIds(
    members.map((member) => member.held_item_id),
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
    heldItemsResult,
    naturesResult,
    evolutionEdgesResult,
    versionGroupsResult,
    moveOverrides,
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
      .from("items")
      .select("id, effect_summary")
      .in("id", heldItemIds.length ? heldItemIds : [-1]),
    supabase
      .schema("reference")
      .from("natures")
      .select("*")
      .in("id", natureIds.length ? natureIds : [-1]),
    versionGroupId
      ? supabase
          .schema("reference")
          .from("pokemon_evolution_edges")
          .select("*")
          .or(`version_group_id.is.null,version_group_id.eq.${versionGroupId}`)
      : supabase
          .schema("reference")
          .from("pokemon_evolution_edges")
          .select("*")
          .is("version_group_id", null),
    supabase.schema("reference").from("version_groups").select("*"),
    readMoveVersionGroupOverrides(supabase, { moveIds, versionGroupId }),
  ]);

  if (
    abilityAttributesResult.error ||
    attributesResult.error ||
    moveAttributesResult.error ||
    ballItemsResult.error ||
    pokeBallCategoryResult.error ||
    heldItemsResult.error ||
    naturesResult.error ||
    evolutionEdgesResult.error ||
    versionGroupsResult.error
  ) {
    throw new Error("Unable to load Mainline play team references.");
  }

  const attributes = attributesResult.data ?? [];
  const moveAttributes = applyMoveVersionGroupOverrides(
    moveAttributesResult.data ?? [],
    moveOverrides,
    versionGroupId,
  );
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
    evolutionEdges: evolutionEdgesResult.data ?? [],
    heldItemEffects: Object.fromEntries(
      (heldItemsResult.data ?? []).flatMap((item) =>
        item.effect_summary ? [[item.id, item.effect_summary]] : [],
      ),
    ),
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
