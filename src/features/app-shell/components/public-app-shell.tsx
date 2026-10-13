import { AppShell } from "@/features/app-shell/components/app-shell";
import { getPublicAppShellData } from "@/features/app-shell/server/public-app-shell-query";

type PublicAppShellProps = {
  children: React.ReactNode;
  hero?: React.ReactNode;
  showAuthAction?: boolean;
  showBrandName?: boolean;
};

export const PublicAppShell = async ({
  children,
  hero,
  showAuthAction,
  showBrandName,
}: PublicAppShellProps) => {
  const { account } = await getPublicAppShellData();

  return (
    <AppShell
      account={account}
      hero={hero}
      showAuthAction={showAuthAction}
      showBrandName={showBrandName}
    >
      {children}
    </AppShell>
  );
};
