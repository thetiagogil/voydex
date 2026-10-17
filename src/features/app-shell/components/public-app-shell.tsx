import { AppShell } from "@/features/app-shell/components/app-shell";
import { getPublicAppShellData } from "@/features/app-shell/server/public-app-shell-query";

type PublicAppShellProps = {
  children: React.ReactNode;
  showAuthAction?: boolean;
  showBrandName?: boolean;
};

export const PublicAppShell = async ({
  children,
  showAuthAction,
  showBrandName,
}: PublicAppShellProps) => {
  const { account } = await getPublicAppShellData();

  return (
    <AppShell
      account={account}
      showAuthAction={showAuthAction}
      showBrandName={showBrandName}
    >
      {children}
    </AppShell>
  );
};
