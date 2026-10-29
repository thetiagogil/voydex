import { cache } from "react";

import { readTrackingDefaults } from "@/modules/mainline/features/plays/shared/server/tracking-defaults-reader";
import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/* The signed-in trainer's New Play defaults, read once per request. */
export const readSignedInTrackingDefaults = cache(async () => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);

  return readTrackingDefaults(supabase, userId);
});
