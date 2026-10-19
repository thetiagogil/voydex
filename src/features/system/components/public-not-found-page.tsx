import { appRoutes } from "@/config/routes";
import { modules } from "@/config/modules";
import { SystemState } from "@/features/system/components/system-state";
import {
  getNotFoundDescription,
  type NotFoundPokemon,
} from "@/features/system/utils/not-found-copy";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";
import Link from "next/link";

type PublicNotFoundPageProps = {
  /* The Pokémon that looked for the page, when the route passes its art. */
  pokemon?: NotFoundPokemon;
};

/* v3's not found: one Pokémon on grass, one sentence, home and the Codex. */
export const PublicNotFoundPage = ({ pokemon }: PublicNotFoundPageProps) => {
  return (
    <SystemState
      art={pokemon ? { name: pokemon.name, url: pokemon.artUrl } : null}
      eyebrow="404"
      title="This page wandered off"
      description={getNotFoundDescription(
        pokemon,
        "The link might be old, or the page moved.",
      )}
      actions={
        <>
          <Link
            href={appRoutes.home}
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
