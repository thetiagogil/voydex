"use client";

import { createBrowserClient } from "@supabase/ssr";

import { getSupabasePublicConfig } from "@/platform/env/supabase-public-config";
import type { Database } from "@/shared/types/database.types";

/*
 * Supabase in the browser, signed in with the session the server set (its
 * cookies): only for the account's backups. One client per page.
 */
let client: ReturnType<typeof createBrowserClient<Database>> | null = null;

export const getBrowserSupabaseClient = () => {
  if (!client) {
    const { key, url } = getSupabasePublicConfig();

    client = createBrowserClient<Database>(url, key);
  }

  return client;
};

export type BrowserSupabaseClient = ReturnType<typeof getBrowserSupabaseClient>;
