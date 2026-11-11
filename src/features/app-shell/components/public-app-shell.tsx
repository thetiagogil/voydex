import type { ComponentProps } from "react";

import { AppShell } from "@/features/app-shell/components/app-shell";

type PublicAppShellProps = Pick<
  ComponentProps<typeof AppShell>,
  "bar" | "children" | "frame"
>;

/*
 * The shell for pages outside the app's own routes: the site and log-in
 * pages take the site frame, the Codex the app's (everyone uses it with
 * their data on this device).
 */
export const PublicAppShell = ({
  bar,
  children,
  frame = "site",
}: PublicAppShellProps) => (
  <AppShell bar={bar} frame={frame}>
    {children}
  </AppShell>
);
