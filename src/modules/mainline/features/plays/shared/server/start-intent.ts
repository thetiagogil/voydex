import { cache } from "react";

import {
  parseStartIntent,
  START_INTENT_METADATA_KEY,
  type StartIntent,
} from "@/config/start-intent";
import {
  createServerSupabaseClient,
  type ServerSupabaseClient,
} from "@/platform/supabase/server-client";

/*
 * The game (and partner) picked on Start a Play before signing up, stored on
 * the account by the auth flow. Read with `getUser()`, since the JWT claims
 * only catch up on the next refresh. It is only a wish: a failed read is no
 * wish, and whoever starts the Play validates it again.
 */
export const readStartIntent = async (
  supabase: ServerSupabaseClient,
): Promise<StartIntent | null> => {
  const { data, error } = await supabase.auth.getUser();

  if (error || !data.user) {
    return null;
  }

  return parseStartIntent(data.user.user_metadata?.[START_INTENT_METADATA_KEY]);
};

/*
 * The wish, read once per request for the pages that show it: the Mainline
 * layout (New Play) and Home. Actions read it fresh with `readStartIntent`.
 */
export const readSignedInStartIntent = cache(async () =>
  readStartIntent(await createServerSupabaseClient()),
);

/* Forgets the wish once its Play is started or the trainer says not now. */
export const clearStartIntent = async (supabase: ServerSupabaseClient) => {
  const { error } = await supabase.auth.updateUser({
    data: { [START_INTENT_METADATA_KEY]: null },
  });

  if (error) {
    throw new Error("Unable to clear the Play you picked before signing up.");
  }
};
