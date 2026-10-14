import {
  getMainlineTimelinePokemonFormIds,
  hydrateMainlineTimelinePokemonImages,
} from "@/modules/mainline/features/plays/shared/data/play-timeline-mappers";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import {
  loadChunkedReferenceRows,
  loadPagedReferenceRows,
} from "@/modules/reference/reference-rows";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

const hydrateTimelineEventImages = async (
  supabase: ServerSupabaseClient,
  events: MainlinePlayTimelineEvent[],
): Promise<MainlinePlayTimelineEvent[]> => {
  const formIds = getMainlineTimelinePokemonFormIds(events);

  if (!formIds.length) {
    return events;
  }

  /* Chunked: a long History can name more forms than one filter holds. */
  const forms = await loadChunkedReferenceRows<{
    id: number;
    sprite_slug: string | null;
  }>(
    formIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_forms")
        .select("id, sprite_slug")
        .in("id", ids)
        .order("id")
        .range(from, to),
    "Unable to load Mainline timeline Pokemon images.",
  );

  return hydrateMainlineTimelinePokemonImages(events, forms);
};

/*
 * A Play's latest moments, newest first, at most `limit`. Moments of the
 * types in `excludeEventTypeSlugs` are left out in the read itself, so the
 * limit counts only the moments that show.
 */
export const readMainlinePlayTimelinePreview = async (
  supabase: ServerSupabaseClient,
  playId: string,
  limit = 5,
  { excludeEventTypeSlugs = [] }: { excludeEventTypeSlugs?: string[] } = {},
): Promise<MainlinePlayTimelineEvent[]> => {
  const query = supabase
    .schema("views")
    .from("mainline_play_timeline_detail")
    .select("*")
    .eq("play_id", playId);
  const visibleQuery = excludeEventTypeSlugs.length
    ? query.not("event_type_slug", "in", `(${excludeEventTypeSlugs.join(",")})`)
    : query;
  const timelineResult = await visibleQuery
    .order("timeline_order", { ascending: false })
    .order("happened_at", { ascending: false })
    .limit(limit);

  if (timelineResult.error) {
    throw new Error("Unable to load Mainline play timeline preview.");
  }

  return hydrateTimelineEventImages(supabase, timelineResult.data ?? []);
};

/*
 * Every moment of a Play, newest first, for History. Paged, since a long
 * Play can hold more moments than one read returns; the event id keeps the
 * order stable across pages.
 */
export const readMainlinePlayTimeline = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayTimelineEvent[]> => {
  const events = await loadPagedReferenceRows<MainlinePlayTimelineEvent>(
    (from, to) =>
      supabase
        .schema("views")
        .from("mainline_play_timeline_detail")
        .select("*")
        .eq("play_id", playId)
        .order("timeline_order", { ascending: false })
        .order("happened_at", { ascending: false })
        .order("event_id", { ascending: false })
        .range(from, to),
    "Unable to load the Play's History.",
  );

  return hydrateTimelineEventImages(supabase, events);
};

export const readMainlinePlayMilestoneTimelineSnapshots = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayTimelineEvent[]> => {
  const timelineResult = await supabase
    .schema("views")
    .from("mainline_play_timeline_detail")
    .select("*")
    .eq("play_id", playId)
    .not("milestone_id", "is", null)
    .order("timeline_order", { ascending: false })
    .order("happened_at", { ascending: false });

  if (timelineResult.error) {
    throw new Error("Unable to load Mainline milestone Team snapshots.");
  }

  return hydrateTimelineEventImages(supabase, timelineResult.data ?? []);
};
