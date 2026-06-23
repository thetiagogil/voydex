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
export const getOptionalUserEmail = async (
  supabase: SupabaseClient<Database>,
): Promise<string | null> => {
  const claimsResult = await getClaimsWithTimeout(supabase);
  if (!claimsResult || claimsResult.error || !claimsResult.data?.claims?.sub) {
    return null;
  }
  return typeof claimsResult.data.claims.email === "string"
    ? claimsResult.data.claims.email
    : "Account";
};
