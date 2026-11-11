import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Adds one moment at the end of a Play's timeline (a note, a status
 * change) through `gameplay.add_mainline_play_event`, which looks its type
 * and origin up by slug and takes the next timeline place under the Play's
 * lock. Row-level security keeps it to the owner's Play.
 */
export const insertMainlinePlayEvent = async (
  supabase: ServerSupabaseClient,
  {
    body = null,
    eventTypeSlug,
    originSlug,
    playId,
    title,
  }: {
    body?: string | null;
    eventTypeSlug: "journal_note" | "status_change";
    originSlug: "manual" | "recorded_action";
    playId: string;
    title: string;
  },
) => {
  const { error } = await supabase
    .schema("gameplay")
    .rpc("add_mainline_play_event", {
      p_body: body ?? undefined,
      p_event_origin_slug: originSlug,
      p_event_type_slug: eventTypeSlug,
      p_play_id: playId,
      p_title: title,
    });

  if (error) {
    throw new Error("Unable to add this moment to History.");
  }
};
