import { cache } from "react";

import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type Session = {
  /* Null when the claims carry no email. */
  email: string | null;
};

/*
 * Whether you're signed in, and as whom. Signing in is only for backups:
 * the app works without it. Null when nobody is signed in. Read once per
 * request.
 */
export const readSession = cache(async (): Promise<Session | null> => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const claims = claimsResult?.error ? null : claimsResult?.data?.claims;

  if (!claims?.sub) {
    return null;
  }

  return { email: typeof claims.email === "string" ? claims.email : null };
});
