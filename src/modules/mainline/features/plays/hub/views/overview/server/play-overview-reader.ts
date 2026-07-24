import type {
  MainlinePlayMilestoneRows,
  MainlinePlayOverview,
} from "@/modules/mainline/features/plays/hub/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

export const readMainlinePlayOverview = async (
  supabase: ServerSupabaseClient,
  userId: string,
  playId: string,
): Promise<MainlinePlayOverview | null> => {
  const overviewResult = await supabase
    .schema("views")
    .from("mainline_play_overview")
    .select("*")
    .eq("user_id", userId)
    .eq("play_id", playId)
    .maybeSingle();

  if (overviewResult.error) {
    throw new Error("Unable to load Mainline play overview.");
  }

  return overviewResult.data ?? null;
};

export const readMainlinePlayMilestoneRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayMilestoneRows> => {
  const [lastCompletedResult, nextMilestoneResult] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("is_completed", true)
      .order("completed_at", { ascending: false })
      .order("sort_order", { ascending: false })
      .limit(1)
      .maybeSingle(),
    supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("is_completed", false)
      .eq("is_included_in_completion", true)
      .order("sort_order", { ascending: true })
      .limit(1)
      .maybeSingle(),
  ]);

  if (lastCompletedResult.error || nextMilestoneResult.error) {
    throw new Error("Unable to load Mainline play milestone overview.");
  }

  return {
    lastCompletedMilestone: lastCompletedResult.data ?? null,
    nextMilestone: nextMilestoneResult.data ?? null,
  };
};
