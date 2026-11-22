"use client";

import { useRouter } from "next/navigation";
import type { ReactNode } from "react";

import { leaveApp, rememberSignedIn } from "@/config/front-door";
import { appRoutes } from "@/config/routes";
import { logOutAndKeep } from "@/features/app-shell/client/sign-out";
import { AccountGate } from "@/features/settings/components/account-gate";
import { DeviceOwnPlays } from "@/modules/mainline/public-device-plays";
import { openLocalDb } from "@/platform/local-db/open-local-db";

/*
 * Mainline's tabs, read again once the account's data is on the device, so
 * the step gives way to a finished Home (the code loads only when needed).
 */
const prepareMainlineTabs = async () => {
  const [{ db }, { prepareMainlineTabs: prepare }] = await Promise.all([
    openLocalDb(),
    import("@/modules/mainline/public-page-reads"),
  ]);

  await prepare(db);
};

/*
 * The app's account step (the wait after logging in, and the question a
 * device with Plays of its own asks), with what only the route can hand it:
 * Mainline's list of the device's Plays, its pages to read ahead, and the
 * way to log out instead.
 */
export const AppAccountGate = ({ children }: { children: ReactNode }) => {
  const router = useRouter();

  return (
    <AccountGate
      deviceData={<DeviceOwnPlays />}
      prepare={prepareMainlineTabs}
      onLogOut={async () => {
        /* Nothing has synced or changed: the device is as it was. */
        await logOutAndKeep();
        rememberSignedIn(false);
        leaveApp();
        router.push(appRoutes.login);
      }}
    >
      {children}
    </AccountGate>
  );
};
