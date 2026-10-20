import { getPokemonTypeSlugAtGeneration } from "@/modules/mainline/features/plans/planner/data/plan-followers";
import type { PlanFollower } from "@/modules/mainline/features/plans/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

const readFailure = "Unable to load the Plays that follow this Plan.";

/*
 * The Plays that follow a Plan, by name, each with its current team (its
 * active Pokémon by slot, tinted by primary type in the Plan's generation).
 */
export const readPlanFollowers = async (
  supabase: ServerSupabaseClient,
  planId: string,
): Promise<PlanFollower[]> => {
  const linksResult = await supabase
    .schema("planning")
    .from("mainline_play_plan_links")
    .select("play_id, version_group_id")
    .eq("team_plan_id", planId);

  if (linksResult.error) {
    throw new Error(readFailure);
  }

  const links = linksResult.data ?? [];

  if (!links.length) {
    return [];
  }

  const playIds = links.map((link) => link.play_id);
  const [playsResult, teamResult, groupResult] = await Promise.all([
    supabase
      .schema("gameplay")
      .from("mainline_plays")
      .select("id, name")
      .in("id", playIds),
    supabase
      .schema("views")
      .from("mainline_play_team_detail")
      .select(
        "form_id, form_name, form_slug, is_shiny, nickname, play_id, slot, species_name",
      )
      .in("play_id", playIds)
      .eq("roster_state_slug", "active")
      .order("slot", { ascending: true, nullsFirst: false }),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("generation_id")
      .eq("id", links[0].version_group_id)
      .maybeSingle(),
  ]);

  if (playsResult.error || teamResult.error || groupResult.error) {
    throw new Error(readFailure);
  }

  const team = teamResult.data ?? [];
  const formIds = uniqueNumberIds(team.map((member) => member.form_id));
  const [attributesResult, typesResult] = await Promise.all([
    formIds.length
      ? supabase
          .schema("reference")
          .from("pokemon_attributes")
          .select("form_id, generation_start_id, primary_type_id")
          .in("form_id", formIds)
      : Promise.resolve({ data: [], error: null }),
    supabase.schema("reference").from("types").select("id, slug"),
  ]);

  if (attributesResult.error || typesResult.error) {
    throw new Error(readFailure);
  }

  const typeSlugById = new Map(
    (typesResult.data ?? []).map((type) => [type.id, type.slug]),
  );
  const generationId = groupResult.data?.generation_id ?? null;

  return (playsResult.data ?? [])
    .map((play) => ({
      members: team
        .filter((member) => member.play_id === play.id && member.slot !== null)
        .map((member) => ({
          imageUrl: getPlayTeamMemberImageUrl(member),
          name: getPlayTeamMemberName(member),
          slot: member.slot ?? 0,
          typeSlug: getPokemonTypeSlugAtGeneration({
            attributes: attributesResult.data ?? [],
            formId: member.form_id,
            generationId,
            typeSlugById,
          }),
        })),
      playId: play.id,
      playName: play.name,
    }))
    .sort((left, right) => left.playName.localeCompare(right.playName));
};
