import { DEFAULT_MODULE_KEY, type ModuleKey } from "@/config/modules";
import { getActiveModuleKeyFromCookies } from "@/features/app-shell/server/active-module";
import { getOptionalUserEmail } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type PublicAppShellData = {
  moduleSelectorKey: ModuleKey;
  userEmail: string | null;
};

export const getPublicAppShellData = async ({
  activeModuleKey,
}: {
  activeModuleKey?: ModuleKey;
}): Promise<PublicAppShellData> => {
  const supabasePromise = createServerSupabaseClient();
  const cookieModuleKeyPromise = activeModuleKey
    ? Promise.resolve(activeModuleKey)
    : getActiveModuleKeyFromCookies();

  const supabase = await supabasePromise;
  const [cookieModuleKey, userEmail] = await Promise.all([
    cookieModuleKeyPromise,
    getOptionalUserEmail(supabase),
  ]);

  return {
    moduleSelectorKey:
      activeModuleKey ?? (userEmail ? cookieModuleKey : DEFAULT_MODULE_KEY),
    userEmail,
  };
};
