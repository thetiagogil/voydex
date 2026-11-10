import type { ComponentProps } from "react";

import { AppShell } from "@/features/app-shell/components/app-shell";
import { readSession } from "@/features/app-shell/server/session-query";

type PublicAppShellProps = Pick<
  ComponentProps<typeof AppShell>,
  "bar" | "children" | "frame"
>;

/*
 * The shell for pages outside the app's own routes: the site and log-in
 * pages take the site frame, the Codex the app's (everyone uses it with
 * their data on this device), naming the signed-in account when there is one.
 */
export const PublicAppShell = async ({
  bar,
  children,
  frame = "site",
}: PublicAppShellProps) => {
  const session = frame === "app" ? await readSession() : null;

  return (
    <AppShell bar={bar} email={session?.email ?? null} frame={frame}>
      {children}
    </AppShell>
  );
};
