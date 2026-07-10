import { AppShell } from "@/features/app-shell/components/app-shell";
import type { ModuleKey } from "@/config/modules";
import { getPublicAppShellData } from "@/features/app-shell/server/public-app-shell-query";

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
  const { moduleSelectorKey, userEmail } = await getPublicAppShellData({
    activeModuleKey,
  });

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
