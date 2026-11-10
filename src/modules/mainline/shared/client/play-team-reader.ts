import { getPokemonTypeSlugAtGeneration } from "@/modules/mainline/shared/data/pokemon-type-at-generation";
import type { PlayTeam } from "@/modules/mainline/shared/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

const readFailure = "Unable to load those Plays.";

/*
 * Plays by name, each with its current team: its active Pokémon by slot,
 * tinted by primary type as it stood in that Play's generation (Clefairy is
 * Normal in Red). Plays you can't read are left out.
 */
export const readPlayTeams = async (
  supabase: ServerSupabaseClient,
  playIds: readonly string[],
): Promise<PlayTeam[]> => {
  const ids = [...new Set(playIds)];

  if (!ids.length) {
    return [];
  }

  const [playsResult, teamResult] = await Promise.all([
    supabase
      .schema("gameplay")
      .from("mainline_plays")
      .select("id, name, version_group_id")
      .in("id", ids),
    supabase
      .schema("views")
      .from("mainline_play_team_detail")
      .select(
        "form_id, form_name, form_slug, is_shiny, nickname, play_id, slot, species_name",
      )
      .in("play_id", ids)
      .eq("roster_state_slug", "active")
      .order("slot", { ascending: true, nullsFirst: false }),
  ]);

  if (playsResult.error || teamResult.error) {
    throw new Error(readFailure);
  }

  const plays = playsResult.data ?? [];
  const team = teamResult.data ?? [];
  const formIds = uniqueNumberIds(team.map((member) => member.form_id));
  const groupIds = [...new Set(plays.map((play) => play.version_group_id))];
  const [attributesResult, typesResult, groupsResult] = await Promise.all([
    formIds.length
      ? supabase
          .schema("reference")
          .from("pokemon_attributes")
          .select("form_id, generation_start_id, primary_type_id")
          .in("form_id", formIds)
      : Promise.resolve({ data: [], error: null }),
    supabase.schema("reference").from("types").select("id, slug"),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("id, generation_id")
      .in("id", groupIds),
  ]);

  if (attributesResult.error || typesResult.error || groupsResult.error) {
    throw new Error(readFailure);
  }

  const typeSlugById = new Map(
    (typesResult.data ?? []).map((type) => [type.id, type.slug]),
  );
  const generationByGroup = new Map(
    (groupsResult.data ?? []).map((group) => [group.id, group.generation_id]),
  );

  return plays
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
            generationId: generationByGroup.get(play.version_group_id) ?? null,
            typeSlugById,
          }),
        })),
      playId: play.id,
      playName: play.name,
    }))
    .sort((left, right) => left.playName.localeCompare(right.playName));
};
