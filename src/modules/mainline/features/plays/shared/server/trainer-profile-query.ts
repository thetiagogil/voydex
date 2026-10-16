import { cache } from "react";

import { readTrainerDisplayName } from "@/modules/mainline/features/plays/shared/server/trainer-profile-reader";
import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The signed-in trainer's display name, read once per request: the Mainline
 * layout (New Play) and Home both ask for it. Each caller decides what a
 * failed read means.
 */
export const readSignedInTrainerDisplayName = cache(async () => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);

  return readTrainerDisplayName(supabase, userId);
});
