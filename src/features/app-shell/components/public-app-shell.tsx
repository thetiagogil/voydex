import type { ComponentProps } from "react";

import { AppShell } from "@/features/app-shell/components/app-shell";
import { getPublicAppShellData } from "@/features/app-shell/server/public-app-shell-query";

type PublicAppShellProps = {
  bar?: ComponentProps<typeof AppShell>["bar"];
  children: React.ReactNode;
};

export const PublicAppShell = async ({
  bar,
  children,
}: PublicAppShellProps) => {
  const { account } = await getPublicAppShellData();

  return (
    <AppShell account={account} bar={bar}>
      {children}
    </AppShell>
  );
};
