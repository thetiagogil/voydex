"use client";

import { Link } from "@/shared/components/link";

import { appRoutes } from "@/config/routes";
import { getStartPlayHref } from "@/config/start-intent";
import { useAuthSession } from "@/platform/local-db/account-session";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";

type SiteActionsProps = {
  /* How it works, as a third way in (the front door; the Intro leaves it out). */
  showIntro?: boolean;
};

/*
 * A front door's two ways in: the main button (Start a Play, which opens the
 * game picker, or Continue to the module you used last once you're signed
 * in on this browser), Browse the Codex and, on the front door, How it
 * works. The page is the same file for everyone, so Start a Play shows
 * until the browser says you're signed in.
 */
export const SiteActions = ({ showIntro = false }: SiteActionsProps) => {
  const isAuthenticated = Boolean(useAuthSession());

  return (
    <div className="flex w-full flex-col gap-3 sm:w-auto sm:flex-row sm:flex-wrap sm:justify-center">
      {isAuthenticated ? (
        <Link
          href={appRoutes.appEntry}
          className={buttonVariants({ size: "lg" })}
        >
          <AppIcon icon={appIcons.actions.continue} inline="start" />
          Continue
        </Link>
      ) : (
        <Link
          href={getStartPlayHref()}
          className={buttonVariants({ size: "lg" })}
        >
          Start a Play
        </Link>
      )}
      <Link
        href={appRoutes.codexPokemon}
        className={buttonVariants({ size: "lg", variant: "secondary" })}
      >
        <AppIcon icon={appIcons.actions.browseCodex} inline="start" />
        Browse the Codex
      </Link>
      {showIntro ? (
        <Link
          href={appRoutes.intro}
          className={buttonVariants({ size: "lg", variant: "secondary" })}
        >
          <AppIcon icon={appIcons.status.info} inline="start" />
          How it works
        </Link>
      ) : null}
    </div>
  );
};
