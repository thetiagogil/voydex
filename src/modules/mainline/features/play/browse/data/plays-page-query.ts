import { createServerSupabaseClient } from "@/lib/supabase/server";
import type { MainlinePlaysPageData } from "@/modules/mainline/features/play/types";
import { getClaimsWithTimeout } from "@/lib/supabase/auth";

export const getMainlinePlaysPageData =
  async (): Promise<MainlinePlaysPageData> => {
    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);
    const userId = claimsResult?.data?.claims?.sub;

    if (!userId) {
      throw new Error("Unable to load plays for the current account.");
    }

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

    return {
      plays: playsResult.data ?? [],
    };
  };
