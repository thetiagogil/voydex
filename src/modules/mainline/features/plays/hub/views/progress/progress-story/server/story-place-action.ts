"use server";

import { z } from "zod";

import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  parseInput,
  positiveIdSchema,
  uuidSchema,
} from "@/shared/utils/input-schemas";

import {
  groupStoryPlacePokemon,
  type StoryPlacePokemonGroup,
} from "../data/story-place-pokemon";

export type StoryPlacePokemonResult =
  | { groups: StoryPlacePokemonGroup[]; status: "success" }
  | { message: string; status: "error" };

const storyPlaceInputSchema = z.object({
  locationId: positiveIdSchema("Place"),
  playId: uuidSchema("That Play isn't one Voydex knows."),
});

/*
 * A place on Story's route loads the Pokémon found there when it opens: the
 * encounter rows of the place in the Play's own game (a Red Play never lists
 * Blue's), read through the Play so only its trainer can ask.
 */
export const loadStoryPlacePokemonAction = async (input: {
  locationId: number;
  playId: string;
}): Promise<StoryPlacePokemonResult> => {
  try {
    const { locationId, playId } = parseInput(storyPlaceInputSchema, input);
    const supabase = await createServerSupabaseClient();

    await getSignedInTrainerId(supabase);

    const playResult = await supabase
      .schema("gameplay")
      .from("mainline_plays")
      .select("game_id, version_group_id")
      .eq("id", playId)
      .maybeSingle();

    if (playResult.error || !playResult.data) {
      throw new Error("Unable to read the Pokémon found here.");
    }

    const { game_id: gameId, version_group_id: versionGroupId } =
      playResult.data;
    const result = await supabase
      .schema("reference")
      .from("pokemon_encounters")
      .select(
        "form_id, level_min, level_max, pokemon_forms(name, slug), encounter_ways(name, slug, sort_order)",
      )
      .eq("location_id", locationId)
      .eq("version_group_id", versionGroupId)
      .or(`game_id.is.null,game_id.eq.${gameId}`)
      .order("species_id", { ascending: true })
      .order("form_id", { ascending: true });

    if (result.error) {
      throw new Error("Unable to read the Pokémon found here.");
    }

    return {
      groups: groupStoryPlacePokemon(
        (result.data ?? []).flatMap((row) =>
          row.pokemon_forms && row.encounter_ways
            ? [
                {
                  formId: row.form_id,
                  formName: row.pokemon_forms.name,
                  formSlug: row.pokemon_forms.slug,
                  levelMax: row.level_max ?? row.level_min ?? null,
                  levelMin: row.level_min ?? row.level_max ?? null,
                  wayName: row.encounter_ways.name,
                  waySlug: row.encounter_ways.slug,
                  waySortOrder: row.encounter_ways.sort_order,
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
