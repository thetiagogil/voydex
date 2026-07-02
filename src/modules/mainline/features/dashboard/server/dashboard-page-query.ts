import { getClaimsWithTimeout } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";
import { loadMainlineDashboardData } from "@/modules/mainline/features/dashboard/server/dashboard-page-loaders";
import type { MainlineDashboardData } from "@/modules/mainline/features/dashboard/types";

export const getMainlineDashboardData =
  async (): Promise<MainlineDashboardData> => {
    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);
    const userId = claimsResult?.data?.claims?.sub;

    if (!userId) {
      throw new Error("Unable to load dashboard for the current account.");
    }

    return loadMainlineDashboardData(supabase, userId);
  };
