import { ENV_VARS } from "../constants/env";

export const hasEnvVars =
  ENV_VARS.SUPABASE_URL! &&
  (ENV_VARS.SUPABASE_PUBLISHABLE_KEY! || ENV_VARS.SUPABASE_SERVICE_ROLE_KEY!);
