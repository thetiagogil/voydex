"use client";

import { createBrowserClient } from "@supabase/ssr";

import { getSupabasePublicConfig } from "@/lib/env";
import type { Database } from "@/shared/types/database.types";

export function createBrowserSupabaseClient() {
  const { key, url } = getSupabasePublicConfig();

  return createBrowserClient<Database>(url, key);
}
