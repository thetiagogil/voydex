import type { Metadata } from "next";

import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { OfflinePage } from "@/features/system/components/offline-page";

export const metadata: Metadata = {
  robots: { follow: false, index: false },
  title: "Offline · Voydex",
};

/* Shown offline in place of a page this device hasn't kept (#274). */
export default function Page() {
  return (
    <PublicAppShell frame="app">
      <OfflinePage />
    </PublicAppShell>
  );
}
