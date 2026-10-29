"use server";

import { revalidatePath } from "next/cache";
import { z } from "zod";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { readPlayTracking } from "@/modules/mainline/features/plays/hub/server/play-tracking-reader";
import { playIdSchema } from "@/modules/mainline/features/plays/shared/utils/play-input-schemas";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  parseInput,
  positiveIntegerSchema,
} from "@/shared/utils/input-schemas";

import { POKEDEX_PROGRESS_SECTION_SIZE } from "../data/pokedex-progress-model";
import type { PokedexProgressState } from "../types";

export type PokedexProgressActionResult = {
  message: string;
  status: "error" | "success";
};

const speciesIdsMessage =
  "Between 1 and 60 valid Pokémon species are required.";

const pokedexProgressInputSchema = z.object({
  playId: playIdSchema,
  speciesIds: z
    .array(positiveIntegerSchema(speciesIdsMessage), {
      error: speciesIdsMessage,
    })
    .transform((speciesIds) => [...new Set(speciesIds)])
    .refine(
      (speciesIds) =>
        speciesIds.length > 0 &&
        speciesIds.length <= POKEDEX_PROGRESS_SECTION_SIZE,
      { error: speciesIdsMessage },
    ),
  state: z.enum(
    ["missing", "seen", "caught"] satisfies PokedexProgressState[],
    {
      error: "Unknown Pokédex progress state.",
    },
  ),
});

const updatePokedexSpeciesProgressBatch = async (input: {
  playId: string;
  speciesIds: number[];
  state: string;
}): Promise<PokedexProgressActionResult> => {
  try {
    const {
      playId,
      speciesIds: uniqueSpeciesIds,
      state,
    } = parseInput(pokedexProgressInputSchema, input);

    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);

    if (!claimsResult?.data?.claims?.sub) {
      throw new Error("You must be signed in to update Pokédex progress.");
    }

    const speciesResult = await supabase
      .schema("views")
      .from("mainline_play_pokedex_detail")
      .select("species_id")
      .eq("play_id", playId)
      .in("species_id", uniqueSpeciesIds);

    if (speciesResult.error) {
      throw new Error(speciesResult.error.message);
    }

    const availableSpeciesIds = new Set(
      speciesResult.data.map((entry) => entry.species_id),
    );

    if (
      uniqueSpeciesIds.some((speciesId) => !availableSpeciesIds.has(speciesId))
    ) {
      throw new Error(
        "One or more Pokémon are not available in the Play's Pokédex.",
      );
    }

    const { pokedexMode } = await readPlayTracking(supabase, playId);

    if (state === "missing" && pokedexMode === "caught_only") {
      /* Caught only has no Seen: un-catching leaves what you saw recorded. */
      const uncatchResult = await supabase
        .schema("gameplay")
        .from("mainline_play_pokedex_species_progress")
        .update({ caught_at: null, is_caught: false })
        .eq("play_id", playId)
        .in("species_id", uniqueSpeciesIds);

      if (uncatchResult.error) {
        throw new Error(uncatchResult.error.message);
      }
    } else if (state === "missing") {
      const deleteResult = await supabase
        .schema("gameplay")
        .from("mainline_play_pokedex_species_progress")
        .delete()
        .eq("play_id", playId)
        .in("species_id", uniqueSpeciesIds);

      if (deleteResult.error) {
        throw new Error(deleteResult.error.message);
      }
    } else {
      const recordedAt = new Date().toISOString();
      const upsertResult = await supabase
        .schema("gameplay")
        .from("mainline_play_pokedex_species_progress")
        .upsert(
          uniqueSpeciesIds.map((speciesId) => ({
            caught_at: state === "caught" ? recordedAt : null,
            is_caught: state === "caught",
            is_seen: true,
            play_id: playId,
            seen_at: recordedAt,
            species_id: speciesId,
          })),
          {
            onConflict: "play_id,species_id",
          },
        );

      if (upsertResult.error) {
        throw new Error(upsertResult.error.message);
      }
    }

    revalidatePath(appRoutes.mainlinePlay(playId));
    revalidatePath(appRoutes.mainlinePlayProgressPokedex(playId));

    return {
      message:
        uniqueSpeciesIds.length === 1
          ? "Pokédex progress updated."
          : `${uniqueSpeciesIds.length} Pokédex entries updated.`,
      status: "success",
    };
  } catch (error) {
    return {
      message:
        error instanceof Error
          ? error.message
          : "Unable to update Pokédex progress.",
      status: "error",
    };
  }
};

export const updatePokedexSpeciesProgress = async ({
  playId,
  speciesId,
  state,
}: {
  playId: string;
  speciesId: number;
  state: string;
}): Promise<PokedexProgressActionResult> =>
  updatePokedexSpeciesProgressBatch({
    playId,
    speciesIds: [speciesId],
    state,
  });

export const updatePokedexSpeciesProgressBulk = async ({
  playId,
  speciesIds,
  state,
}: {
  playId: string;
  speciesIds: number[];
  state: string;
}): Promise<PokedexProgressActionResult> =>
  updatePokedexSpeciesProgressBatch({
    playId,
    speciesIds,
    state,
  });
