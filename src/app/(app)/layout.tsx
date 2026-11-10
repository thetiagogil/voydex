import { AppShell } from "@/features/app-shell/components/app-shell";
import { readSession } from "@/features/app-shell/server/session-query";
import { AccountSyncRunner } from "@/features/settings/components/account-sync-runner";
import { DeviceGate } from "@/features/system/components/device-gate";

/*
 * The app: open to everyone, your data on this device. Signing in is only
 * for backups, so the session just names the account when there is one;
 * signed in, the device keeps in sync with it.
 */
export default async function AppLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const session = await readSession();

  return (
    <AppShell email={session?.email ?? null} frame="app">
      <DeviceGate>
        {children}
        <AccountSyncRunner userId={session?.userId ?? null} />
      </DeviceGate>
    </AppShell>
  );
}
