import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

const uniqueViolation = "23505";

/*
 * Adds one moment at the end of a Play's timeline (a note, a status
 * change): it looks its type and origin up by slug and takes the next
 * timeline place, retrying once if another write took that place first.
 * Row-level security keeps it to the owner's Play.
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
    eventTypeSlug: string;
    originSlug: "manual" | "recorded_action";
    playId: string;
    title: string;
  },
) => {
  const [typeResult, originResult] = await Promise.all([
    supabase
      .schema("gameplay")
      .from("mainline_play_event_types")
      .select("id")
      .eq("slug", eventTypeSlug)
      .maybeSingle(),
    supabase
      .schema("gameplay")
      .from("mainline_play_event_origins")
      .select("id")
      .eq("slug", originSlug)
      .maybeSingle(),
  ]);

  if (
    typeResult.error ||
    originResult.error ||
    !typeResult.data ||
    !originResult.data
  ) {
    throw new Error("This kind of moment isn't set up in the database.");
  }

  const happenedAt = new Date().toISOString();

  for (let attempt = 0; attempt < 2; attempt += 1) {
    const lastResult = await supabase
      .schema("gameplay")
      .from("mainline_play_events")
      .select("timeline_order")
      .eq("play_id", playId)
      .order("timeline_order", { ascending: false })
      .limit(1)
      .maybeSingle();

    if (lastResult.error) {
      throw new Error("Unable to read the Play's History.");
    }

    const insertResult = await supabase
      .schema("gameplay")
      .from("mainline_play_events")
      .insert({
        body,
        event_origin_id: originResult.data.id,
        event_type_id: typeResult.data.id,
        happened_at: happenedAt,
        play_id: playId,
        timeline_order: (lastResult.data?.timeline_order ?? 0) + 1,
        title,
      });

    if (!insertResult.error) {
      return;
    }

    if (insertResult.error.code !== uniqueViolation) {
      throw new Error("Unable to add this moment to History.");
    }
  }

  throw new Error("Unable to add this moment to History. Try again.");
};
