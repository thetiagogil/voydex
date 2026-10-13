import { AppShell } from "@/features/app-shell/components/app-shell";
import { getPublicAppShellData } from "@/features/app-shell/server/public-app-shell-query";

type PublicAppShellProps = {
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
