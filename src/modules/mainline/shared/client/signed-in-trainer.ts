import { readLocalClaims } from "@/platform/local-db/local-claims";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/* The signed-in trainer's id, or an error: these pages only render signed in. */
export const getSignedInTrainerId = async (supabase: ServerSupabaseClient) => {
  const claimsResult = await readLocalClaims(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("Unable to read the signed-in account.");
  }

  return userId;
};
