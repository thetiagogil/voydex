import type { MainlinePlayTeamPlanRow } from "@/modules/mainline/features/plays/hub/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

export const readMainlinePlayTeamPlanRows = async (
  supabase: ServerSupabaseClient,
  userId: string,
  playId: string,
): Promise<MainlinePlayTeamPlanRow[]> => {
  const result = await supabase
    .schema("views")
    .from("mainline_play_team_plan_detail")
    .select("*")
    .eq("user_id", userId)
    .eq("play_id", playId)
    .order("member_group", { ascending: true })
    .order("slot", { ascending: true });

  if (result.error) {
    throw new Error("Unable to load the Mainline Team Plan summary.");
  }

  return result.data ?? [];
};
