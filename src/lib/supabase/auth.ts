import type { SupabaseClient } from "@supabase/supabase-js";

import type { Database } from "@/types/database.types";

type ClaimsResult = Awaited<
  ReturnType<SupabaseClient<Database>["auth"]["getClaims"]>
>;

export async function getClaimsWithTimeout(
  supabase: SupabaseClient<Database>,
  timeoutMs = 5_000,
): Promise<ClaimsResult | null> {
  return Promise.race([
    supabase.auth.getClaims(),
    new Promise<null>((resolve) => {
      setTimeout(() => resolve(null), timeoutMs);
    }),
  ]);
}
