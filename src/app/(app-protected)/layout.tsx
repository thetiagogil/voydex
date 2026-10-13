import { headers } from "next/headers";
import { redirect } from "next/navigation";

import { AppShell } from "@/features/app-shell/components/app-shell";
import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import { REQUEST_PATH_HEADER } from "@/features/app-shell/utils/request-path";
import { getLoginRedirectHref } from "@/features/auth/auth-mode";

export default async function ProtectedLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const account = await getSignedInAccount();

  if (!account) {
    const headerStore = await headers();

    redirect(getLoginRedirectHref(headerStore.get(REQUEST_PATH_HEADER)));
  }

  return <AppShell account={account}>{children}</AppShell>;
}
