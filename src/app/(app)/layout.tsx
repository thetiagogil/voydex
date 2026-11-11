import { AppShell } from "@/features/app-shell/components/app-shell";
import { AccountSyncRunner } from "@/features/settings/components/account-sync-runner";
import { DeviceGate } from "@/features/system/components/device-gate";

/*
 * The app: open to everyone, your data on this device. Signing in is only
 * for backups; signed in, the device keeps in sync with the account.
 */
export default function AppLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <AppShell frame="app">
      <DeviceGate>
        {children}
        <AccountSyncRunner />
      </DeviceGate>
    </AppShell>
  );
}
