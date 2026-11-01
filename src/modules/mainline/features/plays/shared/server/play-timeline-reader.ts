import {
  getMainlineTimelinePokemonFormIds,
  hydrateMainlineTimelinePokemonImages,
} from "@/modules/mainline/features/plays/shared/data/play-timeline-mappers";
import type { PlayMomentContextEntries } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import { readMainlinePlayMomentContext } from "@/modules/mainline/features/plays/shared/server/play-moment-context-reader";
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
    slug: string;
  }>(
    formIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_forms")
        .select("id, slug")
        .in("id", ids)
        .order("id")
        .range(from, to),
    "Unable to load Mainline timeline Pokemon images.",
  );

  return hydrateMainlineTimelinePokemonImages(events, forms);
};

/* A Play's latest moments, newest first, at most `limit`. */
export const readMainlinePlayTimelinePreview = async (
  supabase: ServerSupabaseClient,
  playId: string,
  limit = 5,
): Promise<MainlinePlayTimelineEvent[]> => {
  const query = supabase
    .schema("views")
    .from("mainline_play_timeline_detail")
    .select("*")
    .eq("play_id", playId);
  const timelineResult = await query
    .order("happened_at", { ascending: false, nullsFirst: false })
    .order("timeline_order", { ascending: false })
    .limit(limit);

  if (timelineResult.error) {
    throw new Error("Unable to load Mainline play timeline preview.", {
      cause: timelineResult.error,
    });
  }

  return hydrateTimelineEventImages(supabase, timelineResult.data ?? []);
};

/*
 * What a Pokémon's moments read: every column but the team snapshots, which
 * only History's team line draws.
 */
const pokemonMomentColumns =
  "event_id, play_id, event_type_id, event_type_slug, event_type_name, event_origin_id, event_origin_slug, event_origin_name, title, body, happened_at, timeline_order, milestone_id, milestone_slug, milestone_name, milestone_description, is_pinned, created_at, updated_at, pokemon_refs";

/*
 * The latest moments that name each of a Play's Pokémon, newest first, at
 * most `limit` each (their adds, level-ups, moves, evolutions), and what
 * their medallions need. One small read per Pokémon, so a long History never
 * comes back whole.
 */
export const readMainlinePlayPokemonMoments = async (
  supabase: ServerSupabaseClient,
  {
    generationId,
    limit = 3,
    playId,
    playPokemonIds,
  }: {
    generationId: number | null;
    limit?: number;
    playId: string;
    playPokemonIds: string[];
  },
): Promise<{
  byPokemonId: Record<string, MainlinePlayTimelineEvent[]>;
  context: PlayMomentContextEntries;
}> => {
  const results = await Promise.all(
    playPokemonIds.map((playPokemonId) =>
      supabase
        .schema("views")
        .from("mainline_play_timeline_detail")
        .select(pokemonMomentColumns)
        .eq("play_id", playId)
        /* A JSON string: an array here would be sent as a Postgres array, not as jsonb. */
        .contains(
          "pokemon_refs",
          JSON.stringify([{ play_pokemon_id: playPokemonId }]),
        )
        .order("happened_at", { ascending: false, nullsFirst: false })
        .order("timeline_order", { ascending: false })
        .limit(limit),
    ),
  );
  const failed = results.find((result) => result.error);

  if (failed) {
    throw new Error("Unable to load the Pokémon's latest moments.", {
      cause: failed.error,
    });
  }

  const rows: MainlinePlayTimelineEvent[] = results.flatMap((result) =>
    (result.data ?? []).map((row) => ({ ...row, team_snapshots: [] })),
  );

  if (!rows.length) {
    return {
      byPokemonId: Object.fromEntries(playPokemonIds.map((id) => [id, []])),
      context: {
        badgeTypeByMilestoneId: [],
        trophyMilestoneIds: [],
        typeByFormId: [],
      },
    };
  }

  /* One image read and one context read for every moment, side by side. */
  const [events, context] = await Promise.all([
    hydrateTimelineEventImages(supabase, rows),
    readMainlinePlayMomentContext(supabase, {
      events: rows,
      generationId,
      playId,
    }),
  ]);
  let start = 0;

  return {
    byPokemonId: Object.fromEntries(
      playPokemonIds.map((playPokemonId, index) => {
        const count = results[index].data?.length ?? 0;
        const own = events.slice(start, start + count);

        start += count;
        return [playPokemonId, own];
      }),
    ),
    context,
  };
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
        .order("happened_at", { ascending: false, nullsFirst: false })
        .order("timeline_order", { ascending: false })
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
