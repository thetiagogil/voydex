import { getClaimsWithTimeout } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";
import { loadMainlinePlayPageData } from "@/modules/mainline/features/plays/server/play-page-loaders";
import type { MainlinePlayPageData } from "@/modules/mainline/features/plays/types";
import { isUuid } from "@/shared/utils/identifiers";

export const getMainlinePlayPageData = async (
  playId: string,
): Promise<MainlinePlayPageData | null> => {
  if (!isUuid(playId)) {
    return null;
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("Unable to load play for the current account.");
  }

  return loadMainlinePlayPageData(supabase, userId, playId);
};
