import {
  getMainlineTimelinePokemonFormIds,
  hydrateMainlineTimelinePokemonImages,
} from "@/modules/mainline/features/plays/shared/data/play-timeline-mappers";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import {
  parsePlayTeamSnapshot,
  type PlayTeamSnapshotMember,
} from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
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

export const readMainlinePlayTimelinePreview = async (
  supabase: ServerSupabaseClient,
  playId: string,
  limit = 5,
): Promise<MainlinePlayTimelineEvent[]> => {
  const timelineResult = await supabase
    .schema("views")
    .from("mainline_play_timeline_detail")
    .select("*")
    .eq("play_id", playId)
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

/* The team saved with one milestone when it was recorded, if any. */
export const readMainlinePlayMilestoneTeamSnapshot = async (
  supabase: ServerSupabaseClient,
  playId: string,
  milestoneId: number,
): Promise<PlayTeamSnapshotMember[]> => {
  const timelineResult = await supabase
    .schema("views")
    .from("mainline_play_timeline_detail")
    .select("*")
    .eq("play_id", playId)
    .eq("milestone_id", milestoneId)
    .order("timeline_order", { ascending: false })
    .order("happened_at", { ascending: false })
    .limit(1);

  if (timelineResult.error) {
    throw new Error("Unable to load the Mainline milestone Team snapshot.");
  }

  const [event] = await hydrateTimelineEventImages(
    supabase,
    timelineResult.data ?? [],
  );

  return event ? parsePlayTeamSnapshot(event.team_snapshots) : [];
};
