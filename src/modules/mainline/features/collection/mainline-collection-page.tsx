import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { CollectionBrowser } from "@/modules/mainline/features/collection/sections/collection-browser";
import type { CollectionPageData } from "@/modules/mainline/features/collection/types";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { EmptyState } from "@/shared/components/empty-state";
import { PageHeader } from "@/shared/components/page-header";
import { buttonVariants } from "@/shared/components/ui/button";

type MainlineCollectionPageProps = {
  data: CollectionPageData;
  initialSpeciesSlug?: string | null;
};

const emptyArtUrl = getPokemonFormImageUrl({
  name: "Eevee",
  sprite_slug: "eevee",
});

const formatCount = (count: number, one: string, many: string) =>
  `${count} ${count === 1 ? one : many}`;

const getDescription = (data: CollectionPageData) => {
  if (!data.entries.length) {
    return "Every Pokémon that joins your teams";
  }

  return `${formatCount(data.entries.length, "Pokémon has", "Pokémon have")} joined your teams, across ${formatCount(data.playCount, "Play", "Plays")} and ${formatCount(data.gameCount, "game", "games")}`;
};

/*
 * Collection (v3 `collection`): every species that has joined one of your
 * teams, with the Plays it was part of. Each one is yours, so it wears a
 * sticker; the toolbar and filters stay quiet.
 */
export const MainlineCollectionPage = ({
  data,
  initialSpeciesSlug,
}: MainlineCollectionPageProps) => {
  return (
    <div className="flex flex-col gap-5 sm:gap-6">
      <PageHeader title="Collection" description={getDescription(data)} />

      {data.entries.length ? (
        <CollectionBrowser
          entries={data.entries}
          initialSpeciesSlug={initialSpeciesSlug}
          types={data.types}
        />
      ) : (
        <EmptyState
          headingLevel="h2"
          artUrl={emptyArtUrl}
          title="Nothing here yet"
          description="Every Pokémon that joins one of your teams gets a place here, with the Plays it was part of."
          action={
            data.latestPlayId ? (
              <Link
                href={appRoutes.mainlinePlayTeamAdd(data.latestPlayId)}
                className={buttonVariants()}
              >
                <AppIcon icon={appIcons.actions.create} inline="start" />
                Add to your team
              </Link>
            ) : (
              <Link
                href={appRoutes.mainlinePlayNew()}
                className={buttonVariants()}
              >
                <AppIcon icon={appIcons.actions.create} inline="start" />
                Start a Play
              </Link>
            )
          }
        />
      )}
    </div>
  );
};
