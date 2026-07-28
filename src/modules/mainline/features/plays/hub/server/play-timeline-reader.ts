import {
  getMainlineTimelinePokemonFormIds,
  hydrateMainlineTimelinePokemonImages,
} from "@/modules/mainline/features/plays/hub/data/play-timeline-mappers";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

const teamEventTypeSlugs = [
  "pokemon_added",
  "pokemon_moved",
  "pokemon_updated",
  "pokemon_evolved",
  "pokemon_form_changed",
  "pokemon_replaced",
  "pokemon_retired",
  "pokemon_removed",
  "pokemon_returned",
] as const;

const hydrateTimelineEventImages = async (
  supabase: ServerSupabaseClient,
  events: MainlinePlayTimelineEvent[],
): Promise<MainlinePlayTimelineEvent[]> => {
  const formIds = getMainlineTimelinePokemonFormIds(events);

  if (!formIds.length) {
    return events;
  }

  const formsResult = await supabase
    .schema("reference")
    .from("pokemon_forms")
    .select("id, sprite_slug")
    .in("id", formIds);

  if (formsResult.error) {
    throw new Error("Unable to load Mainline timeline Pokemon images.");
  }

  return hydrateMainlineTimelinePokemonImages(events, formsResult.data ?? []);
};

export const readMainlinePlayTimelinePreview = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayTimelineEvent[]> => {
  const timelineResult = await supabase
    .schema("views")
    .from("mainline_play_timeline_detail")
    .select("*")
    .eq("play_id", playId)
    .order("timeline_order", { ascending: false })
    .order("happened_at", { ascending: false })
    .limit(5);

  if (timelineResult.error) {
    throw new Error("Unable to load Mainline play timeline preview.");
  }

  return hydrateTimelineEventImages(supabase, timelineResult.data ?? []);
};

export const readMainlinePlayTeamTimelinePreview = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayTimelineEvent[]> => {
  const timelineResult = await supabase
    .schema("views")
    .from("mainline_play_timeline_detail")
    .select("*")
    .eq("play_id", playId)
    .in("event_type_slug", [...teamEventTypeSlugs])
    .order("timeline_order", { ascending: false })
    .order("happened_at", { ascending: false })
    .limit(3);

  if (timelineResult.error) {
    throw new Error("Unable to load Mainline Team timeline preview.");
  }

  return hydrateTimelineEventImages(supabase, timelineResult.data ?? []);
};

export const readMainlinePlayTeamTimeline = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayTimelineEvent[]> => {
  const timelineResult = await supabase
    .schema("views")
    .from("mainline_play_timeline_detail")
    .select("*")
    .eq("play_id", playId)
    .in("event_type_slug", [...teamEventTypeSlugs])
    .order("timeline_order", { ascending: false })
    .order("happened_at", { ascending: false });

  if (timelineResult.error) {
    throw new Error("Unable to load Mainline Team history.");
  }

  return hydrateTimelineEventImages(supabase, timelineResult.data ?? []);
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
