"use client";

import { appRoutes } from "@/config/routes";
import { SystemState } from "@/features/system/components/system-state";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Link } from "@/shared/components/link";
import { Button, buttonVariants } from "@/shared/components/ui/button";

/*
 * What an offline visit shows for a page this device hasn't kept (a Codex
 * entry never opened, say): the service worker answers with this page's
 * file, so it reads the same at any address.
 */
export const OfflinePage = () => (
  <SystemState
    title="You're offline"
    description="This page hasn't been opened on this device yet, so it isn't saved for offline use. Pages you've opened before still work."
    actions={
      <>
        <Button
          type="button"
          size="lg"
          onClick={() => window.location.reload()}
        >
          <AppIcon icon={appIcons.actions.retry} inline="start" />
          Try again
        </Button>
        <Link
          href={appRoutes.appEntry}
          className={buttonVariants({ variant: "secondary", size: "lg" })}
        >
          <AppIcon icon={appIcons.actions.home} inline="start" />
          Back home
        </Link>
      </>
    }
  />
);
