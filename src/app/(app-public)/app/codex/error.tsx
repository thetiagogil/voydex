"use client";

import { appRoutes } from "@/config/routes";
import {
  ErrorPage,
  type ErrorBoundaryProps,
} from "@/features/system/components/error-page";

/* Inside the Codex layout, so the bar stays above the error. */
export default function Error(props: ErrorBoundaryProps) {
  return <ErrorPage {...props} homeHref={appRoutes.home} />;
}
