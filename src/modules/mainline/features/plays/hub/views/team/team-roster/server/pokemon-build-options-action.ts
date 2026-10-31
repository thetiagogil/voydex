"use server";

import { z } from "zod";

import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { playIdSchema } from "@/modules/mainline/features/plays/shared/utils/play-input-schemas";
import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import {
  parseInput,
  positiveIntegerSchema,
} from "@/shared/utils/input-schemas";

import {
  readPokemonBuildOptions,
  type PokemonBuildOptions,
} from "./pokemon-build-options-reader";

export type PokemonBuildOptionsResult =
  | { options: PokemonBuildOptions; status: "success" }
  | { message: string; status: "error" };

const pokemonBuildOptionsInputSchema = z.object({
  playId: playIdSchema,
  formId: positiveIntegerSchema("That Pokémon isn't in this Play's Pokédex."),
});

/*
 * Add Pokémon's More details loads the picked form's natures, abilities,
 * held items and moves in the Play's exact game while you fill in step 2.
 * It only reads, as the signed-in owner.
 */
export const loadPokemonBuildOptionsAction = async (input: {
  formId: number;
  playId: string;
}): Promise<PokemonBuildOptionsResult> => {
  try {
    const { formId, playId } = parseInput(
      pokemonBuildOptionsInputSchema,
      input,
    );
    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);

    if (!claimsResult?.data?.claims?.sub) {
      throw new Error("You must be logged in to add Pokémon.");
    }

    const playResult = await supabase
      .schema("views")
      .from("mainline_play_summary")
      .select("game_id, generation_id, version_group_id")
      .eq("play_id", playId)
      .maybeSingle();
    const play = playResult.data;

    if (
      playResult.error ||
      !play?.game_id ||
      !play.generation_id ||
      !play.version_group_id
    ) {
      throw new Error("This Play isn't available.");
    }

    const options = await readPokemonBuildOptions(supabase, {
      formId,
      gameId: play.game_id,
      generationId: play.generation_id,
      mechanics: resolveGameMechanics({
        gameId: play.game_id,
        generationId: play.generation_id,
        versionGroupId: play.version_group_id,
      }),
      playId,
      versionGroupId: play.version_group_id,
    });

    return { options, status: "success" };
  } catch (error) {
    return {
      message:
        error instanceof Error
          ? error.message
          : "Unable to load what this Pokémon can record.",
      status: "error",
    };
  }
};
