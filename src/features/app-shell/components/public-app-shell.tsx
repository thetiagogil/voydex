import { AppShell } from "@/features/app-shell/components/app-shell";
import type { ModuleKey } from "@/config/modules";
import { getPublicAppShellData } from "@/features/app-shell/server/public-app-shell-query";

type PublicAppShellProps = {
  /* Routes still say which module they render; the bar reads the current path. */
  activeModuleKey?: ModuleKey;
  children: React.ReactNode;
  showAuthAction?: boolean;
};

export const PublicAppShell = async ({
  children,
  showAuthAction,
}: PublicAppShellProps) => {
  const { userEmail } = await getPublicAppShellData();

  return (
    <AppShell showAuthAction={showAuthAction} userEmail={userEmail}>
      {children}
    </AppShell>
  );
};
