"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import {
  clearStartIntent,
  readStartIntent,
} from "@/modules/mainline/features/plays/shared/server/start-intent";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The game (and partner) picked on Start a Play before signing up lives on
 * the account, not on the device, so forgetting it stays on the server.
 */

const getSignedInClient = async () => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);

  if (!claimsResult?.data?.claims?.sub) {
    throw new Error("Log in first.");
  }

  return supabase;
};

/* Once a Play of the picked game starts, the wish is forgotten. */
export const forgetStartedIntentAction = async (gameSlug: string) => {
  try {
    const supabase = await getSignedInClient();
    const intent = await readStartIntent(supabase);

    if (intent?.gameSlug !== gameSlug) return;

    await clearStartIntent(supabase);
    revalidatePath(appRoutes.mainline);
  } catch {
    /* Only a wish: left in place, it is offered again and can be dismissed. */
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
      const supabase = await getSignedInClient();

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
