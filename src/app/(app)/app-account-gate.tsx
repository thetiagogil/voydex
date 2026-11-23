"use client";

import { useRouter } from "next/navigation";
import type { ReactNode } from "react";

import { leaveApp, rememberSignedIn } from "@/config/front-door";
import { appRoutes } from "@/config/routes";
import { logOutWithoutBackup } from "@/features/app-shell/client/sign-out";
import { AccountGate } from "@/features/settings/components/account-gate";
import { useAuthSession } from "@/platform/local-db/account-session";

import { prepareMainlineTabs } from "./prepare-mainline-tabs";

/*
 * The app's account step (the wait after logging in), with what only the
 * route can hand it: Mainline's pages to read ahead, and the way to Log in
 * when you log out from a step that couldn't open the account.
 */
export const AppAccountGate = ({ children }: { children: ReactNode }) => {
  const router = useRouter();
  const userId = useAuthSession()?.userId ?? null;

  return (
    <AccountGate
      prepare={prepareMainlineTabs}
      onLogOut={async () => {
        if (userId) await logOutWithoutBackup(userId);

        rememberSignedIn(false);
        leaveApp();
        router.push(appRoutes.login);
      }}
    >
      {children}
    </AccountGate>
  );
};
