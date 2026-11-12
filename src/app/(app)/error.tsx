"use client";

import { useEffect } from "react";

import { appRoutes } from "@/config/routes";
import {
  ErrorPage,
  type ErrorBoundaryProps,
} from "@/features/system/components/error-page";
import { forgetFailedPageReads } from "@/platform/local-db/page-reads";

export default function Error(props: ErrorBoundaryProps) {
  /* A page whose read failed reads again when you try again. */
  useEffect(forgetFailedPageReads, []);

  return <ErrorPage {...props} homeHref={appRoutes.appEntry} />;
}
