import type { ServerSupabaseClient } from "@/lib/supabase/server";
import type { MainlineDashboardData } from "@/modules/mainline/features/dashboard/types";

export const loadMainlineDashboardData = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<MainlineDashboardData> => {
  const [summaryResult, statsResult, recentPlaysResult] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_dashboard_summary")
      .select("*")
      .eq("user_id", userId)
      .maybeSingle(),
    supabase
      .schema("views")
      .from("mainline_stats_summary")
      .select("*")
      .eq("user_id", userId)
      .maybeSingle(),
    supabase
      .schema("views")
      .from("mainline_play_summary")
      .select("*")
      .eq("user_id", userId)
      .is("archived_at", null)
      .order("updated_at", { ascending: false })
      .limit(4),
  ]);

  if (summaryResult.error || statsResult.error || recentPlaysResult.error) {
    throw new Error("Unable to load Mainline dashboard.");
  }

  return {
    recentPlays: recentPlaysResult.data ?? [],
    statsSummary: statsResult.data ?? null,
    summary: summaryResult.data ?? null,
  };
};
