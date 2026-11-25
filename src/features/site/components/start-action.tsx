"use client";

import { useSyncExternalStore } from "react";

import { readHasPlays, readSignedIn } from "@/config/front-door";
import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Link } from "@/shared/components/link";
import { buttonVariants } from "@/shared/components/ui/button";

const subscribe = () => () => undefined;

/*
 * The front page's one way in, the page's main action. Start a Play opens
 * the app, whose Home asks which game you are playing; on a device that
 * already holds a Play it reads Continue. A device that opened the app but
 * never started a Play still has one to start. The page is the same file
 * for everyone, so Start a Play shows until the browser says otherwise.
 */
export const StartAction = () => {
  const hasPlays = useSyncExternalStore(subscribe, readHasPlays, () => false);

  return (
    <Link
      href={appRoutes.mainline}
      className={buttonVariants({ className: "max-sm:w-full", size: "lg" })}
    >
      {hasPlays ? (
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

/*
 * The line under the button: what you have without an account, or, on a
 * browser that is already logged in, that the account is still there.
 */
export const StartNote = () =>
  useSyncExternalStore(subscribe, readSignedIn, () => false)
    ? "You're logged in. Your Plays are saved on this device and backed up to your account."
    : "No account needed. Your Plays are saved on this device.";
