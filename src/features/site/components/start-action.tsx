"use client";

import { useSyncExternalStore } from "react";

import { readAppEntered } from "@/config/front-door";
import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Link } from "@/shared/components/link";
import { buttonVariants } from "@/shared/components/ui/button";

const subscribe = () => () => undefined;

/*
 * The front page's one way in, the page's main action. Start a Play opens
 * the app, whose Home asks which game you are playing; on a device that has
 * opened the app before (it left the app, or followed a link to a part of
 * the front page) it reads Continue. The page is the same file for
 * everyone, so Start a Play shows until the browser says otherwise.
 */
export const StartAction = () => {
  const entered = useSyncExternalStore(subscribe, readAppEntered, () => false);

  return (
    <Link
      href={appRoutes.mainline}
      className={buttonVariants({ className: "max-sm:w-full" })}
    >
      {entered ? (
        <>
          <AppIcon icon={appIcons.actions.continue} inline="start" />
          Continue
        </>
      ) : (
        "Start a Play"
      )}
    </Link>
  );
};
