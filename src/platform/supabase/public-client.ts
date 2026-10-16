import { createClient } from "@supabase/supabase-js";
import { getSupabasePublicConfig } from "@/platform/env/supabase-public-config";
import type { Database } from "@/shared/types/database.types";

/*
 * A Supabase client with no session, for public reference reads that are
 * cached across requests (`unstable_cache` may not read cookies). It only
 * ever sees what the anon role may read.
 */
export const createPublicSupabaseClient = () => {
  const { key, url } = getSupabasePublicConfig();

  return createClient<Database>(url, key, {
    auth: { autoRefreshToken: false, persistSession: false },
  });
};

export type PublicSupabaseClient = ReturnType<
  typeof createPublicSupabaseClient
>;
