import { Suspense } from "react";

import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";

import { StartRoute } from "./start-route";

/*
 * Start a Play: its games load in the browser from the game catalogue; its
 * picks live in the address, read in the browser.
 */
export default function Page() {
  return (
    <PublicAppShell>
      <Suspense>
        <StartRoute />
      </Suspense>
    </PublicAppShell>
  );
}
