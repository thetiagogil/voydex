import { notifyLocalSave } from "@/platform/local-db/local-db-context";
import { z } from "zod";

import {
  choosePlayPartner,
  undoPlayPartner,
} from "@/modules/mainline/features/plays/shared/client/play-partner-command";
import { readLocalClaims } from "@/platform/local-db/local-claims";
import { playIdSchema } from "@/modules/mainline/features/plays/shared/utils/play-input-schemas";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";
import {
  parseInput,
  positiveIdSchema,
  uuidSchema,
} from "@/shared/utils/input-schemas";

export type PlayPartnerActionResult =
  | {
      /* The partner added to the team, so Undo can take it off again. */
      addedPlayPokemonId: string | null;
      partnerName: string;
      status: "success";
    }
  | { message: string; status: "error" };

export type PlayPartnerUndoResult = {
  message: string;
  status: "error" | "success";
};

const getAuthenticatedClient = async () => {
  const supabase = await getLocalQueryClient();
  const claimsResult = await readLocalClaims(supabase);

  if (!claimsResult?.data?.claims?.sub) {
    throw new Error("You must be logged in to choose your partner.");
  }

  return supabase;
};

const choosePartnerInputSchema = z.object({
  playId: playIdSchema,
  decisionOptionId: positiveIdSchema("Partner"),
});

const undoPartnerInputSchema = z.object({
  playId: playIdSchema,
  addedPlayPokemonId: uuidSchema("A valid Pokémon is required.").nullable(),
});

/*
 * The partner you picked joins the team and the partner milestone; the
 * database finds that milestone from the Play's game.
 */
export const choosePlayPartnerAction = async (input: {
  decisionOptionId: number;
  playId: string;
}): Promise<PlayPartnerActionResult> => {
  try {
    const { decisionOptionId, playId } = parseInput(
      choosePartnerInputSchema,
      input,
    );
    const supabase = await getAuthenticatedClient();
    const result = await choosePlayPartner(supabase, {
      decisionOptionId,
      playId,
    });

    notifyLocalSave();

    return { ...result, status: "success" };
  } catch (error) {
    return {
      message:
        error instanceof Error ? error.message : "Unable to choose a partner.",
      status: "error",
    };
  }
};

/* Undo for the partner just chosen. */
export const undoPlayPartnerAction = async (input: {
  addedPlayPokemonId: string | null;
  playId: string;
}): Promise<PlayPartnerUndoResult> => {
  try {
    const { addedPlayPokemonId, playId } = parseInput(
      undoPartnerInputSchema,
      input,
    );
    const supabase = await getAuthenticatedClient();

    await undoPlayPartner(supabase, { addedPlayPokemonId, playId });
    notifyLocalSave();

    return { message: "Partner choice undone", status: "success" };
  } catch (error) {
    return {
      message: error instanceof Error ? error.message : "Unable to undo that.",
      status: "error",
    };
  }
};
