"use server";

import { z } from "zod";

import { validateUpdateMainlinePlayPokemon } from "@/modules/mainline/features/plays/shared/utils/team-member-validation";
import {
  getOwnedPlayPokemon,
  revalidateTeamPaths,
  type TeamMemberActionResult,
} from "@/modules/mainline/features/plays/shared/server/team-member-action-support";
import {
  parseInput,
  positiveIntegerSchema,
} from "@/shared/utils/input-schemas";

/*
 * Taking a Pokémon off the roster: Replace, which Add Pokémon picks for, and
 * Delete record, which also undoes an add from Add Pokémon's toast. The
 * Roster's editor uses both too.
 */

const failure = (error: unknown, fallback: string): TeamMemberActionResult => ({
  message: error instanceof Error ? error.message : fallback,
  status: "error",
});

const replacementSchema = z.object({
  replacementFormId: positiveIntegerSchema(
    "That Pokémon isn't in this Play's Pokédex.",
  ),
  replacementSpeciesId: positiveIntegerSchema(
    "That Pokémon isn't in this Play's Pokédex.",
  ),
});

/*
 * Replace: another species of the Play's Pokédex takes its place (its slot
 * on the team or in reserve), and the one replaced is kept in History.
 */
export const replaceMainlinePlayPokemonAction = async ({
  level,
  nickname,
  playId,
  playPokemonId,
  ...replacement
}: {
  level: number | null;
  nickname: string | null;
  playId: string;
  playPokemonId: string;
  replacementFormId: number;
  replacementSpeciesId: number;
}): Promise<TeamMemberActionResult> => {
  try {
    const { supabase } = await getOwnedPlayPokemon({ playId, playPokemonId });
    const { replacementFormId, replacementSpeciesId } = parseInput(
      replacementSchema,
      replacement,
    );
    const entryResult = await supabase
      .schema("views")
      .from("mainline_play_pokedex_detail")
      .select("species_id")
      .eq("play_id", playId)
      .eq("species_id", replacementSpeciesId)
      .limit(1);

    if (entryResult.error || !entryResult.data?.length) {
      throw new Error("That Pokémon isn't in this Play's Pokédex.");
    }

    const changes = validateUpdateMainlinePlayPokemon({
      abilityId: null,
      ballItemId: null,
      gender: "unknown",
      hasGigantamaxFactor: false,
      heldItemId: null,
      isShiny: false,
      level,
      metLevel: null,
      metLocation: null,
      moveIds: [],
      natureId: null,
      nickname,
      notes: null,
      teraTypeId: null,
    });
    const result = await supabase
      .schema("gameplay")
      .rpc("replace_mainline_play_pokemon", {
        p_replaced_play_pokemon_id: playPokemonId,
        p_replacement_form_id: replacementFormId,
        p_replacement_level: changes.level ?? undefined,
        p_replacement_nickname: changes.nickname ?? undefined,
        p_replacement_species_id: replacementSpeciesId,
      });

    if (result.error) {
      throw new Error("Unable to replace it.");
    }

    revalidateTeamPaths(playId);

    return { message: "Replaced", status: "success" };
  } catch (error) {
    return failure(error, "Unable to replace it.");
  }
};

/*
 * Delete record, for mistakes: the Pokémon goes from the Play. Its moments
 * stay in History unless this undoes an add a moment ago, which also takes
 * that add's own "added" moment away, in the same database call.
 */
export const removeMainlinePlayPokemonAction = async ({
  playId,
  playPokemonId,
  undoAdd = false,
}: {
  playId: string;
  playPokemonId: string;
  undoAdd?: boolean;
}): Promise<TeamMemberActionResult> => {
  try {
    const { supabase } = await getOwnedPlayPokemon({ playId, playPokemonId });
    const result = await supabase
      .schema("gameplay")
      .rpc("remove_mainline_play_pokemon", {
        p_play_pokemon_id: playPokemonId,
        p_remove_added_moment: undoAdd === true,
      });

    if (result.error) {
      throw new Error("Unable to delete it.");
    }

    revalidateTeamPaths(playId);

    return { message: "Deleted", status: "success" };
  } catch (error) {
    return failure(error, "Unable to delete it.");
  }
};
