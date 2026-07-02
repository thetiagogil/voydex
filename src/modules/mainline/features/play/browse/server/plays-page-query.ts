import { getClaimsWithTimeout } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";
import { loadMainlinePlaysPageData } from "@/modules/mainline/features/play/browse/server/plays-page-loaders";
import type { MainlinePlaysPageData } from "@/modules/mainline/features/play/types";

export const getMainlinePlaysPageData =
  async (): Promise<MainlinePlaysPageData> => {
    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);
    const userId = claimsResult?.data?.claims?.sub;

    if (!userId) {
      throw new Error("Unable to load plays for the current account.");
    }

    return loadMainlinePlaysPageData(supabase, userId);
  };
