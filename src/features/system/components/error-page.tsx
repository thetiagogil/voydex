"use client";

import Link from "next/link";

import { SystemState } from "@/features/system/components/system-state";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button, buttonVariants } from "@/shared/components/ui/button";

/* What Next hands an `error.tsx` boundary. */
export type ErrorBoundaryProps = {
  error: Error & {
    digest?: string;
  };
  reset: () => void;
};

type ErrorPageProps = ErrorBoundaryProps & {
  /* Home for where you are: the app's entry inside the app, the front door outside it. */
  homeHref: string;
};

/* A page that failed to load: the same quiet layout as not found, with a retry. */
export const ErrorPage = ({ error, homeHref, reset }: ErrorPageProps) => {
  return (
    <SystemState
      eyebrow={error.digest ? `Error reference ${error.digest}` : undefined}
      title="Something went wrong"
      description="Voydex couldn't load this page. Try again, or go back home."
      actions={
        <>
          <Button type="button" size="lg" onClick={reset}>
            <AppIcon icon={appIcons.actions.retry} inline="start" />
            Try again
          </Button>
          <Link
            href={homeHref}
            className={buttonVariants({ variant: "secondary", size: "lg" })}
          >
            <AppIcon icon={appIcons.actions.home} inline="start" />
            Back home
          </Link>
        </>
      }
    />
  );
};
