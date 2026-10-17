"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import {
  choosePlayPartner,
  undoPlayPartner,
} from "@/modules/mainline/features/plays/shared/server/play-partner-command";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

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

const revalidatePartnerPaths = (playId: string) => {
  revalidatePath(appRoutes.mainlinePlay(playId));
  revalidatePath(appRoutes.mainlinePlayTeam(playId));
  revalidatePath(appRoutes.mainlinePlayProgressStory(playId));
  revalidatePath(appRoutes.mainlinePlayHistory(playId));
};

const getAuthenticatedClient = async () => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);

  if (!claimsResult?.data?.claims?.sub) {
    throw new Error("You must be logged in to choose your partner.");
  }

  return supabase;
};

const assertPositiveInteger = (value: number, label: string) => {
  if (!Number.isInteger(value) || value <= 0) {
    throw new Error(`${label} must be a positive integer.`);
  }
};

/* The partner you picked joins the team and the partner milestone. */
export const choosePlayPartnerAction = async ({
  decisionOptionId,
  milestoneId,
  playId,
}: {
  decisionOptionId: number;
  milestoneId: number;
  playId: string;
}): Promise<PlayPartnerActionResult> => {
  try {
    if (!isUuid(playId)) {
      throw new Error("A valid Play is required.");
    }

    assertPositiveInteger(milestoneId, "Milestone");
    assertPositiveInteger(decisionOptionId, "Partner");

    const supabase = await getAuthenticatedClient();
    const result = await choosePlayPartner(supabase, {
      decisionOptionId,
      milestoneId,
      playId,
    });

    revalidatePartnerPaths(playId);

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
export const undoPlayPartnerAction = async ({
  addedPlayPokemonId,
  milestoneId,
  playId,
}: {
  addedPlayPokemonId: string | null;
  milestoneId: number;
  playId: string;
}): Promise<PlayPartnerUndoResult> => {
  try {
    if (!isUuid(playId)) {
      throw new Error("A valid Play is required.");
    }

    assertPositiveInteger(milestoneId, "Milestone");

    if (addedPlayPokemonId !== null && !isUuid(addedPlayPokemonId)) {
      throw new Error("A valid Pokémon is required.");
    }

    const supabase = await getAuthenticatedClient();

    await undoPlayPartner(supabase, {
      addedPlayPokemonId,
      milestoneId,
      playId,
    });
    revalidatePartnerPaths(playId);

    return { message: "Partner choice undone", status: "success" };
  } catch (error) {
    return {
      message: error instanceof Error ? error.message : "Unable to undo that.",
      status: "error",
    };
  }
};
