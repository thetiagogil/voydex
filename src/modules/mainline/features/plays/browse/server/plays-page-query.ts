import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { loadMainlinePlaysPageData } from "@/modules/mainline/features/plays/browse/server/plays-page-loaders";
import type { MainlinePlaysPageData } from "@/modules/mainline/features/plays/shared/types";

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
