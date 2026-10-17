import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  readMainlineArchivedPlayCount,
  readMainlinePlayLibrary,
} from "@/modules/mainline/features/plays/shared/server/play-library-reader";
import type {
  PlaysPageData,
  PlaysPageView,
} from "@/modules/mainline/features/plays/browse/types";

export const getMainlinePlaysPageData = async (
  view: PlaysPageView = "active",
): Promise<PlaysPageData> => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("Unable to load plays for the current account.");
  }

  const [plays, archivedCount] = await Promise.all([
    readMainlinePlayLibrary(supabase, userId, {
      archived: view === "archived",
    }),
    readMainlineArchivedPlayCount(supabase, userId),
  ]);

  return { archivedCount, plays, view };
};
