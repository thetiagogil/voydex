import { AppShell } from "@/features/app-shell/components/app-shell";
import { readSession } from "@/features/app-shell/server/session-query";
import { DeviceGate } from "@/features/system/components/device-gate";

/*
 * The app: open to everyone, your data on this device. Signing in is only
 * for backups, so the session just names the account when there is one.
 */
export default async function AppLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const session = await readSession();

  return (
    <AppShell email={session?.email ?? null} frame="app">
      <DeviceGate>{children}</DeviceGate>
    </AppShell>
  );
}
