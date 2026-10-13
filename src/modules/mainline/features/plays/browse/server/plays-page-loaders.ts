import {
  buildMainlinePlayBrowseItems,
  type PlayBrowseMilestone,
  type PlayBrowseMilestoneCategory,
  type PlayBrowseRegion,
  type PlayBrowseStoryRows,
} from "@/modules/mainline/features/plays/browse/data/play-browse-mappers";
import { loadPagedReferenceRows } from "@/modules/reference/reference-rows";
import type { PlaysPageData } from "@/modules/mainline/features/plays/browse/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import type { Game } from "@/modules/reference/types";
import { uniqueNumberIds } from "@/shared/utils/collections";

/*
 * The games behind the Plays, for their covers, and the games' regions for
 * each card's eyebrow. Either can fail without hiding the Plays.
 */
const readPlayGames = async (
  supabase: ServerSupabaseClient,
  gameIds: number[],
): Promise<{ games: Game[]; regions: PlayBrowseRegion[] }> => {
  if (!gameIds.length) {
    return { games: [], regions: [] };
  }

  const gamesResult = await supabase
    .schema("reference")
    .from("games")
    .select("*")
    .in("id", gameIds);

  if (gamesResult.error) {
    return { games: [], regions: [] };
  }

  const games = gamesResult.data ?? [];
  const regionIds = uniqueNumberIds(games.map((game) => game.region_id));
  const regionsResult = regionIds.length
    ? await supabase
        .schema("reference")
        .from("regions")
        .select("id, name")
        .in("id", regionIds)
    : null;

  return {
    games,
    regions: regionsResult?.error ? [] : (regionsResult?.data ?? []),
  };
};

/*
 * Every Play's milestones and categories, for each card's story position.
 * Paged, since a library of Plays can hold more rows than one read returns.
 * A failure hides the position, not the Plays.
 */
const readPlayStoryRows = async (
  supabase: ServerSupabaseClient,
  playIds: string[],
): Promise<PlayBrowseStoryRows | null> => {
  if (!playIds.length) {
    return { categories: [], milestones: [] };
  }

  try {
    const [categories, milestones] = await Promise.all([
      loadPagedReferenceRows<PlayBrowseMilestoneCategory>(
        (from, to) =>
          supabase
            .schema("views")
            .from("mainline_play_milestone_category_summary")
            .select(
              "category_id, category_sort_order, content_scope_sort_order, play_id",
            )
            .in("play_id", playIds)
            .order("play_id", { ascending: true })
            .order("category_id", { ascending: true })
            .range(from, to),
        "Unable to load the Plays' story chapters.",
      ),
      loadPagedReferenceRows<PlayBrowseMilestone>(
        (from, to) =>
          supabase
            .schema("views")
            .from("mainline_play_milestone_detail")
            .select(
              "category_id, is_completed, is_required_for_completion, milestone_id, milestone_name, play_id, prerequisites, sort_order",
            )
            .in("play_id", playIds)
            .order("play_id", { ascending: true })
            .order("milestone_id", { ascending: true })
            .range(from, to),
        "Unable to load the Plays' story milestones.",
      ),
    ]);

    return { categories, milestones };
  } catch {
    return null;
  }
};

export const loadMainlinePlaysPageData = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<PlaysPageData> => {
  const playsResult = await supabase
    .schema("views")
    .from("mainline_play_summary")
    .select("*")
    .eq("user_id", userId)
    .is("archived_at", null)
    .order("updated_at", { ascending: false });

  if (playsResult.error) {
    throw new Error("Unable to load Mainline plays.");
  }

  const plays = playsResult.data ?? [];
  const playIds = plays.flatMap((play) => (play.play_id ? [play.play_id] : []));
  const gameIds = uniqueNumberIds(plays.map((play) => play.game_id));

  const [gameRows, progressResult, teamResult, storyRows] = await Promise.all([
    readPlayGames(supabase, gameIds),
    playIds.length
      ? supabase
          .schema("views")
          .from("mainline_play_overview")
          .select("*")
          .eq("user_id", userId)
          .in("play_id", playIds)
      : null,
    playIds.length
      ? supabase
          .schema("views")
          .from("mainline_play_team_detail")
          .select("*")
          .in("play_id", playIds)
          .eq("roster_state_slug", "active")
          .order("slot", { ascending: true })
      : null,
    readPlayStoryRows(supabase, playIds),
  ]);

  return {
    plays: buildMainlinePlayBrowseItems({
      availability: {
        progress: !progressResult?.error,
        story: storyRows !== null,
        team: !teamResult?.error,
      },
      games: gameRows.games,
      overviews: progressResult?.error ? [] : (progressResult?.data ?? []),
      plays,
      regions: gameRows.regions,
      storyRows: storyRows ?? { categories: [], milestones: [] },
      teamMembers: teamResult?.error ? [] : (teamResult?.data ?? []),
    }),
  };
};
