import { AppShell } from "@/shared/components/app-shell/app-shell";
import { DEFAULT_MODULE_KEY, type ModuleKey } from "@/config/modules";
import { getActiveModuleKeyFromCookies } from "@/lib/modules/active-module";
import { getOptionalUserEmail } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";

type PublicAppShellProps = {
  activeModuleKey?: ModuleKey;
  children: React.ReactNode;
  showAuthAction?: boolean;
};

export const PublicAppShell = async ({
  activeModuleKey,
  children,
  showAuthAction,
}: PublicAppShellProps) => {
  const supabasePromise = createServerSupabaseClient();
  const cookieModuleKeyPromise = activeModuleKey
    ? Promise.resolve(activeModuleKey)
    : getActiveModuleKeyFromCookies();

  const supabase = await supabasePromise;
  const [cookieModuleKey, userEmail] = await Promise.all([
    cookieModuleKeyPromise,
    getOptionalUserEmail(supabase),
  ]);
  const moduleSelectorKey =
    activeModuleKey ?? (userEmail ? cookieModuleKey : DEFAULT_MODULE_KEY);

  return (
    <AppShell
      activeModuleKey={activeModuleKey}
      moduleSelectorKey={moduleSelectorKey}
      showAuthAction={showAuthAction}
      userEmail={userEmail}
    >
      {children}
    </AppShell>
  );
};
