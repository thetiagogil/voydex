import { createBrowserClient } from "@supabase/ssr";
import { ENV_VARS } from "../constants/env";

const SUPABASE_URL = ENV_VARS.SUPABASE_URL;
const SUPABASE_KEY = ENV_VARS.SUPABASE_PUBLISHABLE_KEY;

export const createClient = () => {
  return createBrowserClient(SUPABASE_URL!, SUPABASE_KEY!);
};
