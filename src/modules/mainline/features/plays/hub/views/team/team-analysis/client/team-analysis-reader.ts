import { getMainlinePlayTeamMoveIds } from "@/modules/mainline/features/plays/hub/data/team-member-mappers";
import type { MainlinePlayTeamAnalysisRows } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { applyMoveVersionGroupOverrides } from "@/modules/reference/features/pokemon/data/move-attribute-overrides";
import { readMoveVersionGroupOverrides } from "@/modules/reference/features/pokemon/server/move-override-reader";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

export const readMainlinePlayTeamAnalysisRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
  generationId: number | null,
  versionGroupId: number | null,
): Promise<MainlinePlayTeamAnalysisRows> => {
  const [membersResult, generationResult] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_play_team_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("roster_state_slug", "active")
      .order("slot", { ascending: true }),
    generationId
      ? supabase
          .schema("reference")
          .from("generations")
          .select("*")
          .eq("id", generationId)
          .maybeSingle()
      : null,
  ]);

  if (membersResult.error || generationResult?.error) {
    throw new Error("Unable to load Mainline Team Analysis context.");
  }

  const members = membersResult.data ?? [];
  const generation = generationResult?.data ?? null;
  const formIds = uniqueNumberIds(members.map((member) => member.form_id));
  const moveIds = getMainlinePlayTeamMoveIds(members);

  if (!generationId || !generation) {
    return {
      generation,
      teamRows: {
        abilityAttributes: [],
        attributes: [],
        evolutionEdges: [],
        members,
        moveAttributes: [],
        natures: [],
        types: [],
        validBallItemIds: [],
        versionGroupId,
        versionGroups: [],
      },
    };
  }

  const [attributesResult, moveAttributesResult, typesResult, moveOverrides] =
    await Promise.all([
      supabase
        .schema("reference")
        .from("pokemon_attributes")
        .select("*")
        .in("form_id", formIds.length ? formIds : [-1])
        .lte("generation_start_id", generationId)
        .order("form_id", { ascending: true })
        .order("generation_start_id", { ascending: false }),
      supabase
        .schema("reference")
        .from("move_attributes")
        .select("*")
        .in("move_id", moveIds.length ? moveIds : [-1])
        .lte("generation_start_id", generationId)
        .order("move_id", { ascending: true })
        .order("generation_start_id", { ascending: false }),
      supabase
        .schema("reference")
        .from("types")
        .select("*")
        .lte("introduced_generation_id", generationId)
        .order("sort_order", { ascending: true }),
      readMoveVersionGroupOverrides(supabase, { moveIds, versionGroupId }),
    ]);

  if (
    attributesResult.error ||
    moveAttributesResult.error ||
    typesResult.error
  ) {
    throw new Error("Unable to load Mainline Team Analysis references.");
  }

  return {
    generation,
    teamRows: {
      abilityAttributes: [],
      attributes: attributesResult.data ?? [],
      evolutionEdges: [],
      members,
      moveAttributes: applyMoveVersionGroupOverrides(
        moveAttributesResult.data ?? [],
        moveOverrides,
        versionGroupId,
      ),
      natures: [],
      types: typesResult.data ?? [],
      validBallItemIds: [],
      versionGroupId,
      versionGroups: [],
    },
  };
};
