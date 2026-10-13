import { AppShell } from "@/features/app-shell/components/app-shell";
import { getPublicAppShellData } from "@/features/app-shell/server/public-app-shell-query";

type PublicAppShellProps = {
  children: React.ReactNode;
  hero?: React.ReactNode;
  showAuthAction?: boolean;
};

export const PublicAppShell = async ({
  children,
  hero,
  showAuthAction,
}: PublicAppShellProps) => {
  const { userEmail } = await getPublicAppShellData();

  return (
    <AppShell hero={hero} showAuthAction={showAuthAction} userEmail={userEmail}>
      {children}
    </AppShell>
  );
};
