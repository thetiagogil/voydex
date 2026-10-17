"use server";

import { revalidatePath } from "next/cache";
import { z } from "zod";

import { appRoutes } from "@/config/routes";
import { insertMainlinePlayEvent } from "@/modules/mainline/features/plays/hub/server/play-event-writer";
import { toPlayNoteText } from "@/modules/mainline/features/plays/hub/utils/play-note-text";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { playIdSchema } from "@/modules/mainline/features/plays/shared/utils/play-input-schemas";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { parseInput } from "@/shared/utils/input-schemas";

export type PlayNoteActionResult = {
  message: string;
  status: "error" | "success";
};

const playNoteInputSchema = z.object({
  playId: playIdSchema,
  /* Anything that isn't text reads as an empty note, which toPlayNoteText refuses. */
  text: z.unknown().transform((text) => (typeof text === "string" ? text : "")),
});

/*
 * Keeps a note in the Play's History: a manual `journal_note` event
 * placed after every other moment.
 */
export const addMainlinePlayNoteAction = async (input: {
  playId: string;
  text: string;
}): Promise<PlayNoteActionResult> => {
  try {
    const { playId, text } = parseInput(playNoteInputSchema, input);
    const note = toPlayNoteText(text);
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
