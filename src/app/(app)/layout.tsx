import { FrontDoorMark } from "@/features/app-shell/components/front-door-mark";
import { AppShell } from "@/features/app-shell/components/app-shell";

import { AppAccountGate } from "./app-account-gate";
import { AppDeviceGate } from "./app-device-gate";

/*
 * The app: open to everyone, your data on this device. Signing in is only
 * for backups; signed in, the device keeps in sync with the account. The
 * start screen stands alone until the device is ready and every tab with
 * it, so the bars appear with a working app and changing tabs never waits.
 * Right after logging in, the account step stands there instead until the
 * account has synced (and asks first about Plays the device already had).
 */
export default function AppLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <AppDeviceGate>
      <AppAccountGate>
        <AppShell frame="app">{children}</AppShell>
      </AppAccountGate>
      <FrontDoorMark />
    </AppDeviceGate>
  );
}
