import {
  buildMainlinePlayBrowseItems,
  type PlayBrowseRegion,
} from "@/modules/mainline/features/plays/browse/data/play-browse-mappers";
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

  const [gameRows, progressResult, teamResult] = await Promise.all([
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
  ]);

  return {
    plays: buildMainlinePlayBrowseItems({
      availability: {
        progress: !progressResult?.error,
        team: !teamResult?.error,
      },
      games: gameRows.games,
      overviews: progressResult?.error ? [] : (progressResult?.data ?? []),
      plays,
      regions: gameRows.regions,
      teamMembers: teamResult?.error ? [] : (teamResult?.data ?? []),
    }),
  };
};
