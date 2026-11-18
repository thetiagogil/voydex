"use client";

import { useSyncExternalStore } from "react";

import { readAppEntered } from "@/config/front-door";
import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Link } from "@/shared/components/link";
import { buttonVariants } from "@/shared/components/ui/button";

const subscribe = () => () => undefined;

/*
 * The front page's one way in. Start a Play opens the app, whose Home asks
 * which game you are playing; on a device that has opened the app before
 * (it reached the front page through a link to one of its parts) it reads
 * Continue and goes back to where the device was. The page is the same file
 * for everyone, so Start a Play shows until the browser says otherwise.
 */
export const StartAction = () => {
  const entered = useSyncExternalStore(subscribe, readAppEntered, () => false);

  return entered ? (
    <Link href={appRoutes.mainline} className={buttonVariants({ size: "lg" })}>
      <AppIcon icon={appIcons.actions.continue} inline="start" />
      Continue
    </Link>
  ) : (
    <Link href={appRoutes.mainline} className={buttonVariants({ size: "lg" })}>
      Start a Play
    </Link>
  );
};
