"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { insertMainlinePlayEvent } from "@/modules/mainline/features/plays/hub/server/play-event-writer";
import { toPlayNoteText } from "@/modules/mainline/features/plays/hub/utils/play-note-text";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

export type PlayNoteActionResult = {
  message: string;
  status: "error" | "success";
};

/*
 * Keeps a journal note in the Play's History: a manual `journal_note` event
 * placed after every other moment.
 */
export const addMainlinePlayNoteAction = async ({
  playId,
  text,
}: {
  playId: string;
  text: string;
}): Promise<PlayNoteActionResult> => {
  try {
    if (!isUuid(playId)) {
      throw new Error("A valid Play is required.");
    }

    const note = toPlayNoteText(typeof text === "string" ? text : "");
    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);
    const userId = claimsResult?.data?.claims?.sub;

    if (!userId) {
      throw new Error("You must be logged in to add a note.");
    }

    const playResult = await supabase
      .schema("gameplay")
      .from("mainline_plays")
      .select("id")
      .eq("id", playId)
      .eq("user_id", userId)
      .maybeSingle();

    if (playResult.error || !playResult.data) {
      throw new Error("This Play isn't available.");
    }

    await insertMainlinePlayEvent(supabase, {
      body: note.body,
      eventTypeSlug: "journal_note",
      originSlug: "manual",
      playId,
      title: note.title,
    });

    revalidatePath(appRoutes.mainlinePlay(playId));
    revalidatePath(appRoutes.mainlinePlayHistory(playId));

    return { message: "Note added to History", status: "success" };
  } catch (error) {
    return {
      message:
        error instanceof Error ? error.message : "Unable to add the note.",
      status: "error",
    };
  }
};
