"use server";

import { revalidatePath } from "next/cache";
import { z } from "zod";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { playIdSchema } from "@/modules/mainline/features/plays/shared/utils/play-input-schemas";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { safeParseInput } from "@/shared/utils/input-schemas";

export type PlayArchiveActionResult = {
  message: string;
  status: "error" | "success";
};

const playArchiveInputSchema = z.object({
  archived: z.boolean({ error: "A valid Play is required." }),
  playId: playIdSchema,
});

/*
 * Archive hides the Play from your lists until you restore it; restore puts
 * it back. Nothing recorded in it changes. Play settings archives; the
 * archived Play's banner and the Plays page's Archived list restore.
 */
export const setPlayArchivedAction = async (input: {
  archived: boolean;
  playId: string;
}): Promise<PlayArchiveActionResult> => {
  const parsed = safeParseInput(playArchiveInputSchema, input);

  if (!parsed.ok) {
    return { message: parsed.message, status: "error" };
  }

  const { archived, playId } = parsed.data;
  const failureMessage = archived
    ? "Unable to archive this Play."
    : "Unable to restore this Play.";

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    return {
      message: archived
        ? "You must be logged in to archive a Play."
        : "You must be logged in to restore a Play.",
      status: "error",
    };
  }

  const updateResult = await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .update({ archived_at: archived ? new Date().toISOString() : null })
    .eq("id", playId)
    .eq("user_id", userId)
    .select("id");

  if (updateResult.error || !updateResult.data?.length) {
    return { message: failureMessage, status: "error" };
  }

  revalidatePath(appRoutes.mainlinePlay(playId), "layout");
  revalidatePath(appRoutes.mainlinePlays);
  revalidatePath(appRoutes.mainline);

  return {
    message: archived ? "Play archived" : "Play restored",
    status: "success",
  };
};
