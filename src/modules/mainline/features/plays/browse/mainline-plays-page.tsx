import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { PlaysBrowser } from "@/modules/mainline/features/plays/browse/components/plays-browser";
import { PlaysPageHeader } from "@/modules/mainline/features/plays/browse/components/plays-page-header";
import type { PlayBrowseParams } from "@/modules/mainline/features/plays/browse/play-browse-model";
import type { PlaysPageData } from "@/modules/mainline/features/plays/browse/types";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { EmptyState } from "@/shared/components/empty-state";
import { buttonVariants } from "@/shared/components/ui/button";

type MainlinePlaysPageProps = {
  data: PlaysPageData;
  params?: PlayBrowseParams;
};

const emptyLibraryArtUrl = getPokemonFormImageUrl({
  name: "Pikachu",
  sprite_slug: "pikachu",
});

export const MainlinePlaysPage = ({ data, params }: MainlinePlaysPageProps) => {
  return (
    <div className="flex flex-col gap-5 sm:gap-6">
      <PlaysPageHeader plays={data.plays} />

      <section aria-label="Play library">
        {data.plays.length ? (
          <PlaysBrowser plays={data.plays} params={params} />
        ) : (
          <EmptyState
            headingLevel="h2"
            artUrl={emptyLibraryArtUrl}
            title="Your first Play starts here"
            description="Your Plays will appear here once you start one."
            action={
              <Link
                href={appRoutes.codexPokemon}
                className={buttonVariants({ variant: "outline" })}
              >
                <AppIcon icon={appIcons.actions.browseCodex} inline="start" />
                Browse the Codex
              </Link>
            }
          />
        )}
      </section>
    </div>
  );
};
