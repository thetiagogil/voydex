import { notifyLocalSave } from "@/platform/local-db/local-db-context";
import { z } from "zod";

import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { setPlayArchived } from "@/modules/mainline/features/plays/shared/client/play-archive-command";
import { playIdSchema } from "@/modules/mainline/features/plays/shared/utils/play-input-schemas";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";
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

  const supabase = await getLocalQueryClient();
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

  try {
    await setPlayArchived(supabase, { archived, playId, userId });
  } catch {
    return { message: failureMessage, status: "error" };
  }

  notifyLocalSave();

  return {
    message: archived ? "Play archived" : "Play restored",
    status: "success",
  };
};
