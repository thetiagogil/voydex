import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { getStartPlayHref } from "@/config/start-intent";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";

type SiteActionsProps = {
  isAuthenticated: boolean;
};

/*
 * A front door's two ways in: the main button (Start a Play, which opens the
 * game picker, or Continue to the module you used last once you're signed
 * in) and Browse the Codex.
 */
export const SiteActions = ({ isAuthenticated }: SiteActionsProps) => (
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
      className={buttonVariants({ size: "lg", variant: "outline" })}
    >
      <AppIcon icon={appIcons.actions.browseCodex} inline="start" />
      Browse the Codex
    </Link>
  </div>
);
