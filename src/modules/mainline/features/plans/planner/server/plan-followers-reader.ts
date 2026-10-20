import { readPlayTeams } from "@/modules/mainline/shared/server/play-team-reader";
import type { PlayTeam } from "@/modules/mainline/shared/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The Plays that follow a Plan, by name, each with its current team (its
 * active Pokémon by slot, tinted by primary type in the Play's generation).
 */
export const readPlanFollowers = async (
  supabase: ServerSupabaseClient,
  planId: string,
): Promise<PlayTeam[]> => {
  const linksResult = await supabase
    .schema("planning")
    .from("mainline_play_plan_links")
    .select("play_id")
    .eq("team_plan_id", planId);

  if (linksResult.error) {
    throw new Error("Unable to load the Plays that follow this Plan.");
  }

  return readPlayTeams(
    supabase,
    (linksResult.data ?? []).map((link) => link.play_id),
  );
};
