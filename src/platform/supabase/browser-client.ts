"use client";

import { createClient } from "@supabase/supabase-js";

import { getSupabasePublicConfig } from "@/platform/env/supabase-public-config";
import type { Database } from "@/shared/types/database.types";

/*
 * Supabase in the browser: signing in and the account's backups. There is
 * no server of our own, so the session lives in this browser's storage and
 * the client refreshes it. Email links come back to the callback page,
 * which finishes them itself (`detectSessionInUrl` is off), so a `?code=`
 * on any other page is left alone. One client per page.
 */
let client: ReturnType<typeof createClient<Database>> | null = null;

export const getBrowserSupabaseClient = () => {
  if (!client) {
    const { key, url } = getSupabasePublicConfig();

    client = createClient<Database>(url, key, {
      auth: {
        autoRefreshToken: true,
        detectSessionInUrl: false,
        flowType: "pkce",
        persistSession: true,
      },
    });
  }

  return client;
};

export type BrowserSupabaseClient = ReturnType<typeof getBrowserSupabaseClient>;
