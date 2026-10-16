"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

export type PlayArchiveActionResult = {
  message: string;
  status: "error" | "success";
};

/*
 * Archive hides the Play from your lists until you restore it; restore puts
 * it back. Nothing recorded in it changes. Play settings archives; the
 * archived Play's banner and the Plays page's Archived list restore.
 */
export const setPlayArchivedAction = async ({
  archived,
  playId,
}: {
  archived: boolean;
  playId: string;
}): Promise<PlayArchiveActionResult> => {
  const failureMessage = archived
    ? "Unable to archive this Play."
    : "Unable to restore this Play.";

  if (typeof archived !== "boolean" || !isUuid(playId)) {
    return { message: "A valid Play is required.", status: "error" };
  }

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
