import { getClaimsWithTimeout } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";
import type {
  MainlineDashboardSummary,
  MainlinePlaySummary,
  MainlineStatsSummary,
} from "@/modules/mainline/shared/types/mainline.types";

export type MainlineDashboardData = {
  recentPlays: MainlinePlaySummary[];
  statsSummary: MainlineStatsSummary | null;
  summary: MainlineDashboardSummary | null;
};

export async function getMainlineDashboardData(): Promise<MainlineDashboardData> {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("Unable to load dashboard for the current account.");
  }

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
}
