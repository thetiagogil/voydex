"use client";

import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { SystemState } from "@/features/system/components/system-state";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button, buttonVariants } from "@/shared/components/ui/button";

export type ProtectedErrorPageProps = {
  error: Error & {
    digest?: string;
  };
  reset: () => void;
};

/* A page that failed to load: the same quiet layout as not found, with a retry. */
export const ProtectedErrorPage = ({
  error,
  reset,
}: ProtectedErrorPageProps) => {
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
            href={appRoutes.appEntry}
            className={buttonVariants({ variant: "outline", size: "lg" })}
          >
            <AppIcon icon={appIcons.actions.home} inline="start" />
            Back home
          </Link>
        </>
      }
    />
  );
};
