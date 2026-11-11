import type { Metadata } from "next";
import { Suspense } from "react";

import { DeviceCheckRoute } from "./device-check-route";

export const metadata: Metadata = {
  appleWebApp: { capable: true, title: "Voydex check" },
  manifest: "/device-check.webmanifest",
  robots: { follow: false, index: false },
  title: "Device data check · Voydex",
};

/* The device check: add it to the Home Screen to test it as an app. */
export default function Page() {
  return (
    <Suspense>
      <DeviceCheckRoute />
    </Suspense>
  );
}
