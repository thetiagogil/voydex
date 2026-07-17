import { buildMainlinePlayBrowseItems } from "@/modules/mainline/features/plays/browse/data/play-browse-mappers";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import type { MainlinePlaysPageData } from "@/modules/mainline/features/plays/shared/types";
import { uniqueNumberIds } from "@/shared/utils/collections";

export const loadMainlinePlaysPageData = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<MainlinePlaysPageData> => {
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

  const [gamesResult, progressResult, teamResult] = await Promise.all([
    gameIds.length
      ? supabase.schema("reference").from("games").select("*").in("id", gameIds)
      : null,
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
      games: gamesResult?.error ? [] : (gamesResult?.data ?? []),
      overviews: progressResult?.error ? [] : (progressResult?.data ?? []),
      plays,
      teamMembers: teamResult?.error ? [] : (teamResult?.data ?? []),
    }),
  };
};
