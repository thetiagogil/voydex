import {
  codexLeaderRoles,
  type CodexLeaderRows,
} from "@/modules/codex/features/games/detail/data/game-detail-leaders";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

const readFailure = "Unable to load the game's leaders.";

/*
 * One version group's Gym Leaders, kahunas and Champion, with every team
 * they field (the builder keeps the first battle) and the Pokémon in them.
 * Readable signed out, as the whole Codex is.
 */
export const loadGameLeaderRows = async (
  supabase: ServerSupabaseClient,
  versionGroupId: number,
): Promise<CodexLeaderRows> => {
  const tracking = supabase.schema("tracking");
  const reference = supabase.schema("reference");
  const [opponentsResult, typesResult] = await Promise.all([
    tracking
      .from("mainline_opponents")
      .select(
        "id, game_id, name, opponent_role, place, primary_type_id, slug, sort_order",
      )
      .eq("version_group_id", versionGroupId)
      .in("opponent_role", [...codexLeaderRoles])
      .order("sort_order"),
    reference.from("types").select("id, name, slug"),
  ]);

  if (opponentsResult.error || typesResult.error) {
    throw new Error(readFailure);
  }

  const opponents = opponentsResult.data ?? [];

  if (!opponents.length) {
    return {
      battleFormBases: [],
      forms: [],
      members: [],
      opponents,
      species: [],
      types: typesResult.data ?? [],
    };
  }

  const membersResult = await tracking
    .from("mainline_opponent_team_members")
    .select(
      "ally_opponent_id, decision_option_slug, form_id, game_id, level, milestone_id, opponent_id, slot, species_id, variant_slug",
    )
    .eq("version_group_id", versionGroupId)
    .in(
      "opponent_id",
      opponents.map((opponent) => opponent.id),
    )
    .order("milestone_id")
    .order("slot");

  if (membersResult.error) {
    throw new Error(readFailure);
  }

  const members = membersResult.data ?? [];
  const memberFormIds = uniqueNumberIds(
    members.map((member) => member.form_id),
  );
  const speciesIds = uniqueNumberIds(
    members.map((member) => member.species_id),
  );
  const basesResult = memberFormIds.length
    ? await reference
        .from("pokemon_battle_form_bases")
        .select("base_form_id, battle_form_id")
        .in("battle_form_id", memberFormIds)
    : null;

  if (basesResult?.error) {
    throw new Error(readFailure);
  }

  const battleFormBases = basesResult?.data ?? [];
  const formIds = uniqueNumberIds([
    ...memberFormIds,
    ...battleFormBases.map((base) => base.base_form_id),
  ]);
  const [formsResult, speciesResult] = await Promise.all([
    formIds.length
      ? reference
          .from("pokemon_forms")
          .select("id, is_default, name, slug")
          .in("id", formIds)
      : null,
    speciesIds.length
      ? reference
          .from("pokemon_species")
          .select("id, name")
          .in("id", speciesIds)
      : null,
  ]);

  if (formsResult?.error || speciesResult?.error) {
    throw new Error(readFailure);
  }

  return {
    battleFormBases,
    forms: formsResult?.data ?? [],
    members,
    opponents,
    species: speciesResult?.data ?? [],
    types: typesResult.data ?? [],
  };
};
