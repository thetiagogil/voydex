import { createServerClient } from "@supabase/ssr";
import { cookies } from "next/headers";
import { getSupabasePublicConfig } from "@/lib/env";
import type { Database } from "@/shared/types/database.types";

export const createServerSupabaseClient = async () => {
  const cookieStore = await cookies();
  const { key, url } = getSupabasePublicConfig();
  return createServerClient<Database>(url, key, {
    cookies: {
      getAll: () => {
        return cookieStore.getAll();
      },
      setAll: (cookiesToSet) => {
        try {
          cookiesToSet.forEach(({ name, options, value }) => {
            cookieStore.set(name, value, options);
          });
        } catch {
          // Server Components cannot set cookies. The proxy refreshes sessions.
        }
      },
    },
  });
};

export type ServerSupabaseClient = Awaited<
  ReturnType<typeof createServerSupabaseClient>
>;
