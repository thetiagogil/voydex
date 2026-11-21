import { FrontDoorMark } from "@/features/app-shell/components/front-door-mark";
import { AppShell } from "@/features/app-shell/components/app-shell";
import { AccountSyncRunner } from "@/features/settings/components/account-sync-runner";

import { AppDeviceGate } from "./app-device-gate";

/*
 * The app: open to everyone, your data on this device. Signing in is only
 * for backups; signed in, the device keeps in sync with the account. The
 * start screen stands alone until the device is ready and every tab with
 * it, so the bars appear with a working app and changing tabs never waits.
 */
export default function AppLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <AppDeviceGate>
      <AppShell frame="app">
        {children}
        <AccountSyncRunner />
      </AppShell>
      <FrontDoorMark />
    </AppDeviceGate>
  );
}
