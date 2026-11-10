"use client";

import { appRoutes } from "@/config/routes";
import {
  ErrorPage,
  type ErrorBoundaryProps,
} from "@/features/system/components/error-page";

export default function Error(props: ErrorBoundaryProps) {
  return <ErrorPage {...props} homeHref={appRoutes.appEntry} />;
}
