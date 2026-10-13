"use server";

import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

import {
  readMainlinePlayPokemonChoices,
  type PokemonChoices,
} from "./pokemon-choices-reader";

export type PokemonChoicesActionResult =
  | ({ status: "success" } & PokemonChoices)
  | { message: string; status: "error" };

const slugPattern = /^[a-z0-9]+(?:-[a-z0-9]+)*$/;

/*
 * The Add Pokémon sheet loads its choices when it opens, so the Roster
 * itself stays light. A Server Action because the sheet is a Client
 * Component; it only reads, as the signed-in owner.
 */
export const loadMainlinePlayPokemonChoicesAction = async ({
  formSlug = null,
  playId,
  speciesSlug = null,
}: {
  formSlug?: string | null;
  playId: string;
  speciesSlug?: string | null;
}): Promise<PokemonChoicesActionResult> => {
  try {
    if (!isUuid(playId)) {
      throw new Error("A valid Play is required.");
    }

    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);
    const userId = claimsResult?.data?.claims?.sub;

    if (!userId) {
      throw new Error("You must be logged in to add Pokémon.");
    }

    const playResult = await supabase
      .schema("views")
      .from("mainline_play_summary")
      .select("generation_id")
      .eq("play_id", playId)
      .eq("user_id", userId)
      .maybeSingle();

    if (playResult.error || !playResult.data) {
      throw new Error("This Play isn't available.");
    }

    const preset =
      speciesSlug && slugPattern.test(speciesSlug)
        ? {
            formSlug: formSlug && slugPattern.test(formSlug) ? formSlug : null,
            speciesSlug,
          }
        : null;
    const choices = await readMainlinePlayPokemonChoices(supabase, {
      generationId: playResult.data.generation_id,
      playId,
      preset,
    });

    return { status: "success", ...choices };
  } catch (error) {
    return {
      message:
        error instanceof Error ? error.message : "Unable to load Pokémon.",
      status: "error",
    };
  }
};
