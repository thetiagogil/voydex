import { cache } from "react";

import { readTrainerNames } from "@/modules/mainline/features/plays/shared/server/trainer-profile-reader";
import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The signed-in trainer's names, read once per request: the Mainline layout
 * (New Play) and Home both ask for them. Each caller decides what a failed
 * read means.
 */
export const readSignedInTrainerNames = cache(async () => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);

  return readTrainerNames(supabase, userId);
});
