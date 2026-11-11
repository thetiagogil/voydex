import { z } from "zod";

import { getMainlinePlayAddPokemonData } from "@/modules/mainline/features/plays/hub/client/play-hub-query";
import type { MainlinePlayAddPokemonData } from "@/modules/mainline/features/plays/hub/types";
import { playIdSchema } from "@/modules/mainline/features/plays/shared/utils/play-input-schemas";
import { parseInput } from "@/shared/utils/input-schemas";

const addPokemonContextInputSchema = z.object({ playId: playIdSchema });

export type AddPokemonContextActionResult =
  | { data: MainlinePlayAddPokemonData; status: "success" }
  | { message: string; status: "error" };

/*
 * What Add Pokémon needs of one of your Plays, read when you pick it: the
 * Codex adds to a Play the page isn't showing. A Server Action because its
 * caller is a Client Component; it only reads, as the signed-in owner.
 */
export const loadMainlinePlayAddPokemonContextAction = async (input: {
  playId: string;
}): Promise<AddPokemonContextActionResult> => {
  try {
    const { playId } = parseInput(addPokemonContextInputSchema, input);
    const data = await getMainlinePlayAddPokemonData(playId);

    return data
      ? { data, status: "success" }
      : { message: "This Play isn't available.", status: "error" };
  } catch (error) {
    return {
      message:
        error instanceof Error ? error.message : "Unable to open this Play.",
      status: "error",
    };
  }
};
