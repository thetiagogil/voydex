"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { createMainlinePlay } from "@/modules/mainline/features/plays/shared/server/create-play-command";
import {
  clearStartIntent,
  readStartIntent,
} from "@/modules/mainline/features/plays/shared/server/start-intent";
import {
  NewPlayInputError,
  parseNewPlayInput,
} from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type CreatePlayResult =
  | { playId: string; playName: string; status: "success" }
  | { message: string; status: "error" };

const getSignedInClient = async () => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new NewPlayInputError("Log in to start a Play.");
  }

  return { supabase, userId };
};

/*
 * Start a Play (New Play, Home's picker, the sign-up hand-off). The game and
 * partner picked before signing up are forgotten once their Play exists.
 */
export const createPlayAction = async (
  rawInput: unknown,
): Promise<CreatePlayResult> => {
  try {
    const input = parseNewPlayInput(rawInput);
    const { supabase, userId } = await getSignedInClient();
    const result = await createMainlinePlay({ input, supabase, userId });
    const intent = await readStartIntent(supabase);

    if (intent?.gameSlug === input.gameSlug) {
      await clearStartIntent(supabase).catch(() => undefined);
    }

    revalidatePath(appRoutes.mainline);
    revalidatePath(appRoutes.mainlinePlays);
    revalidatePath(appRoutes.mainlineStats);

    return { ...result, status: "success" };
  } catch (error) {
    return {
      message:
        error instanceof NewPlayInputError
          ? error.message
          : "Unable to start the Play right now. Try again.",
      status: "error",
    };
  }
};

export type DismissStartIntentResult = {
  message: string | null;
  status: "error" | "success";
};

/* "Not now" on the Play picked before signing up: it stops being offered. */
export const dismissStartIntentAction =
  async (): Promise<DismissStartIntentResult> => {
    try {
      const { supabase } = await getSignedInClient();

      await clearStartIntent(supabase);
      revalidatePath(appRoutes.mainline);

      return { message: null, status: "success" };
    } catch {
      return {
        message: "Unable to forget that Play right now.",
        status: "error",
      };
    }
  };
