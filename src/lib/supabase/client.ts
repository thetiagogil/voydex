import { createBrowserClient } from "@supabase/ssr";
import { ENV_VARS } from "../constants/env";

export function createClient() {
  return createBrowserClient(ENV_VARS.SUPABASE_URL!, ENV_VARS.SUPABASE_KEY!);
}
