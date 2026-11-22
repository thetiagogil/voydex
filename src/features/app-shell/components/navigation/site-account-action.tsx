"use client";

import { useSyncExternalStore } from "react";

import { readSignedIn } from "@/config/front-door";
import { appRoutes } from "@/config/routes";
import { Link } from "@/shared/components/link";
import { TextLink } from "@/shared/components/text-link";
import { buttonVariants } from "@/shared/components/ui/button";

const subscribe = () => () => undefined;

/* Whether this browser is logged in, as the app last noted it. */
const useSignedIn = () =>
  useSyncExternalStore(subscribe, readSignedIn, () => false);

/*
 * The site bar's account action, on the red: Log in, or, on a browser that
 * is already logged in (you left the app, you didn't log out), the way back
 * into the app.
 */
export const SiteAccountAction = () => {
  const signedIn = useSignedIn();

  return (
    <Link
      href={signedIn ? appRoutes.mainline : appRoutes.login}
      className={buttonVariants({ size: "sm", variant: "inverse" })}
    >
      {signedIn ? "Open the app" : "Log in"}
    </Link>
  );
};

/* The footer's Log in, which goes once you are logged in. */
export const FooterLogInLink = () =>
  useSignedIn() ? null : (
    <TextLink href={appRoutes.login} tone="quiet">
      Log in
    </TextLink>
  );
