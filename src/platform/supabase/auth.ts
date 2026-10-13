import { isAuthError, type SupabaseClient } from "@supabase/supabase-js";
import type { Database } from "@/shared/types/database.types";

type ClaimsResult = Awaited<
  ReturnType<SupabaseClient<Database>["auth"]["getClaims"]>
>;

export const getClaimsWithTimeout = async (
  supabase: SupabaseClient<Database>,
  timeoutMs = 5000,
): Promise<ClaimsResult | null> => {
  try {
    return await Promise.race([
      supabase.auth.getClaims(),
      new Promise<null>((resolve) => {
        setTimeout(() => resolve(null), timeoutMs);
      }),
    ]);
  } catch (error) {
    if (isAuthError(error)) {
      return { data: null, error };
    }
    throw error;
  }
};

/* The signed-in user's claims, or null when nobody is signed in. */
const getSignedInClaims = async (supabase: SupabaseClient<Database>) => {
  const claimsResult = await getClaimsWithTimeout(supabase);
  if (!claimsResult || claimsResult.error || !claimsResult.data?.claims?.sub) {
    return null;
  }
  return claimsResult.data.claims;
};

/* Null when signed out; "Account" stands in when the claims carry no email. */
export const getOptionalUserEmail = async (
  supabase: SupabaseClient<Database>,
): Promise<string | null> => {
  const claims = await getSignedInClaims(supabase);
  if (!claims) {
    return null;
  }
  return typeof claims.email === "string" ? claims.email : "Account";
};

/* The email claim itself, or null when signed out or the claims carry none. */
export const getUserEmailClaim = async (
  supabase: SupabaseClient<Database>,
): Promise<string | null> => {
  const claims = await getSignedInClaims(supabase);
  return typeof claims?.email === "string" ? claims.email : null;
};
