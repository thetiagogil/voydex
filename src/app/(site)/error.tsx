"use client";

import { appRoutes } from "@/config/routes";
import { AppShell } from "@/features/app-shell/components/app-shell";
import {
  ErrorPage,
  type ErrorBoundaryProps,
} from "@/features/system/components/error-page";

/*
 * These pages draw their own bar, so a failure takes the page and its bar
 * with it; the boundary brings the signed-out bar back around the error.
 */
export default function Error(props: ErrorBoundaryProps) {
  return (
    <AppShell>
      <ErrorPage {...props} homeHref={appRoutes.home} />
    </AppShell>
  );
}
