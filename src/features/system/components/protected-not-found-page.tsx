import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { modules } from "@/config/modules";
import {
  getNotFoundDescription,
  type NotFoundPokemon,
} from "@/features/system/utils/not-found-copy";
import { SystemState } from "@/features/system/components/system-state";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";

type ProtectedNotFoundPageProps = {
  /* The Pokémon that looked for the page, when the route passes its art. */
  pokemon?: NotFoundPokemon;
};

/* Not found inside the app: home is the section you were last in. */
export const ProtectedNotFoundPage = ({
  pokemon,
}: ProtectedNotFoundPageProps) => {
  return (
    <SystemState
      artUrl={pokemon?.artUrl}
      eyebrow="404"
      title="This page wandered off"
      description={getNotFoundDescription(
        pokemon,
        "The link might be old, the page moved, or it belongs to another account.",
      )}
      actions={
        <>
          <Link
            href={appRoutes.appEntry}
            className={buttonVariants({ size: "lg" })}
          >
            <AppIcon icon={appIcons.actions.home} inline="start" />
            Back home
          </Link>
          <Link
            href={modules.codex.defaultHref}
            className={buttonVariants({ variant: "secondary", size: "lg" })}
          >
            <AppIcon icon={appIcons.actions.browseCodex} inline="start" />
            Browse the Codex
          </Link>
        </>
      }
    />
  );
};
