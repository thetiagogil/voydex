import { AppShell } from "@/features/app-shell/components/app-shell";
import { AccountSyncRunner } from "@/features/settings/components/account-sync-runner";

import { AppDeviceGate } from "./app-device-gate";

/*
 * The app: open to everyone, your data on this device. Signing in is only
 * for backups; signed in, the device keeps in sync with the account. The
 * start screen gets every tab ready, so changing tabs never waits.
 */
export default function AppLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <AppShell frame="app">
      <AppDeviceGate>
        {children}
        <AccountSyncRunner />
      </AppDeviceGate>
    </AppShell>
  );
}
