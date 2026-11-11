import { connection } from "next/server";

import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";

import { StartRoute } from "./start-route";

/*
 * Start a Play: its games load in the browser from the game catalogue; its
 * picks live in the address, read as the page renders.
 */
export default async function Page() {
  await connection();

  return (
    <PublicAppShell>
      <StartRoute />
    </PublicAppShell>
  );
}
