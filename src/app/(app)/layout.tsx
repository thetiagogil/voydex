import { FrontDoorMark } from "@/features/app-shell/components/front-door-mark";
import { AppShell } from "@/features/app-shell/components/app-shell";

import { AppAccountGate } from "./app-account-gate";
import { AppDeviceGate } from "./app-device-gate";
import { AppTrainerGate } from "./app-trainer-gate";

/*
 * The app: open to everyone, your data on this device. Signing in is only
 * for backups; signed in, the device backs up to the account. The
 * start screen stands alone until the device is ready and Home with it,
 * so the bars appear with a working app; the other tabs get ready behind
 * it, so changing tabs rarely waits.
 * Right after logging in, the account step stands there instead until the
 * account's newest backup is on the device (it asks nothing). A trainer
 * with no name or icon yet picks them on the trainer step before the app
 * opens.
 */
export default function AppLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <AppDeviceGate>
      <AppAccountGate>
        <AppTrainerGate>
          <AppShell frame="app">{children}</AppShell>
        </AppTrainerGate>
      </AppAccountGate>
      <FrontDoorMark />
    </AppDeviceGate>
  );
}
