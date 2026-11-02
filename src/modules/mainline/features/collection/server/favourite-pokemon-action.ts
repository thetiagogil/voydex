"use server";

import { revalidatePath } from "next/cache";
import { z } from "zod";

import { appRoutes } from "@/config/routes";
import { setFavouritePokemon } from "@/modules/mainline/features/collection/server/favourite-pokemon-command";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { parseInput, positiveIdSchema } from "@/shared/utils/input-schemas";

export type FavouritePokemonActionResult =
  | { status: "success" }
  | { message: string; status: "error" };

const favouriteInputSchema = z.object({
  favourite: z.boolean(),
  formId: positiveIdSchema("Pokémon form"),
  speciesId: positiveIdSchema("Pokémon"),
});

/* The heart on a Codex entry: on or off for the signed-in trainer. */
export const setFavouritePokemonAction = async (input: {
  favourite: boolean;
  formId: number;
  speciesId: number;
}): Promise<FavouritePokemonActionResult> => {
  try {
    const { favourite, formId, speciesId } = parseInput(
      favouriteInputSchema,
      input,
    );
    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);
    const userId = claimsResult?.data?.claims?.sub;

    if (!userId) {
      throw new Error("Sign in to keep your favourites.");
    }

    await setFavouritePokemon(supabase, {
      favourite,
      formId,
      speciesId,
      userId,
    });
    revalidatePath(appRoutes.mainlineCollection);

    return { status: "success" };
  } catch (error) {
    return {
      message:
        error instanceof Error
          ? error.message
          : "Unable to save your favourite right now.",
      status: "error",
    };
  }
};
