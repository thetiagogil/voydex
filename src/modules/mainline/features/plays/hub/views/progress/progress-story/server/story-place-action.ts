"use server";

import { z } from "zod";

import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { parseInput, positiveIdSchema } from "@/shared/utils/input-schemas";

import {
  groupStoryPlacePokemon,
  type StoryPlacePokemon,
} from "../data/story-place-pokemon";

export type StoryPlacePokemonResult =
  | { pokemon: StoryPlacePokemon[]; status: "success" }
  | { message: string; status: "error" };

const storyPlaceInputSchema = z.object({
  locationId: positiveIdSchema("Place"),
  versionGroupId: positiveIdSchema("Game"),
});

/*
 * A place on Story's route loads the Pokémon found there when its detail
 * opens: every encounter row of the place in the Play's version group.
 */
export const loadStoryPlacePokemonAction = async (input: {
  locationId: number;
  versionGroupId: number;
}): Promise<StoryPlacePokemonResult> => {
  try {
    const { locationId, versionGroupId } = parseInput(
      storyPlaceInputSchema,
      input,
    );
    const supabase = await createServerSupabaseClient();

    await getSignedInTrainerId(supabase);

    const [result, gamesResult] = await Promise.all([
      supabase
        .schema("reference")
        .from("pokemon_encounters")
        .select(
          "form_id, game_id, level_min, level_max, pokemon_forms(name, slug), encounter_ways(name)",
        )
        .eq("location_id", locationId)
        .eq("version_group_id", versionGroupId)
        .order("species_id", { ascending: true })
        .order("form_id", { ascending: true }),
      supabase
        .schema("reference")
        .from("games")
        .select("id, name")
        .eq("version_group_id", versionGroupId),
    ]);

    if (result.error || gamesResult.error) {
      throw new Error("Unable to read the Pokémon found here.");
    }

    const gameNameById = new Map(
      (gamesResult.data ?? []).map((game) => [game.id, game.name]),
    );

    return {
      pokemon: groupStoryPlacePokemon(
        (result.data ?? []).flatMap((row) =>
          row.pokemon_forms && row.encounter_ways
            ? [
                {
                  formId: row.form_id,
                  formName: row.pokemon_forms.name,
                  formSlug: row.pokemon_forms.slug,
                  gameName:
                    row.game_id === null
                      ? null
                      : (gameNameById.get(row.game_id) ?? null),
                  levelMax: row.level_max ?? row.level_min ?? null,
                  levelMin: row.level_min ?? row.level_max ?? null,
                  wayName: row.encounter_ways.name,
                },
              ]
            : [],
        ),
      ),
      status: "success",
    };
  } catch (error) {
    return {
      message:
        error instanceof Error
          ? error.message
          : "Unable to read the Pokémon found here.",
      status: "error",
    };
  }
};
