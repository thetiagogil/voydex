import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { CollectionViewSwitch } from "@/modules/mainline/features/collection/components/collection-view-switch";
import { CollectionBrowser } from "@/modules/mainline/features/collection/sections/collection-browser";
import { CollectionGamesShelf } from "@/modules/mainline/features/collection/sections/collection-games-shelf";
import type {
  CollectionPageData,
  CollectionView,
} from "@/modules/mainline/features/collection/types";
import { NewPlayTrigger } from "@/modules/mainline/features/plays/shared/components/new-play-trigger";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { EmptyState } from "@/shared/components/empty-state";
import { PageBand } from "@/shared/components/page-band";
import { PageHeader } from "@/shared/components/page-header";
import { buttonVariants } from "@/shared/components/ui/button";

type MainlineCollectionPageProps = {
  data: CollectionPageData;
  initialSpeciesSlug?: string | null;
  view: CollectionView;
};

const emptyArt = {
  name: "Eevee",
  url: getPokemonFormImageUrl({ name: "Eevee", slug: "eevee" }),
};

const formatCount = (count: number, one: string, many: string) =>
  `${count} ${count === 1 ? one : many}`;

const getGamesDescription = ({ games }: CollectionPageData) => {
  if (!games.playedGameCount) {
    return "Every game you play takes its place here";
  }

  return `You've played ${games.playedGameCount} of ${formatCount(games.totalGameCount, "game", "games")}, across ${formatCount(games.playCount, "Play", "Plays")}`;
};

const getDescription = (data: CollectionPageData) => {
  if (!data.entries.length) {
    return "Every Pokémon that joins your teams";
  }

  return `${formatCount(data.entries.length, "Pokémon has", "Pokémon have")} joined your teams, across ${formatCount(data.pokemonPlayCount, "Play", "Plays")} and ${formatCount(data.gameCount, "game", "games")}`;
};

/*
 * Collection (v3 `collection`), in two views. Pokémon: every species that has
 * joined one of your teams, with the Plays it was part of. Each one is yours,
 * so it wears a sticker; the toolbar and filters stay quiet. Games: the ones
 * you've played first, each with its Plays, then the rest as open slots.
 */
export const MainlineCollectionPage = ({
  data,
  initialSpeciesSlug,
  view,
}: MainlineCollectionPageProps) => {
  const viewSwitch = (
    <CollectionViewSwitch
      gameCount={data.games.playedGameCount}
      pokemonCount={data.entries.length}
      value={view}
    />
  );

  if (view === "games") {
    return (
      <div className="flex flex-col gap-5 sm:gap-6">
        <PageBand>
          <PageHeader
            title="Collection"
            description={getGamesDescription(data)}
          />
          {viewSwitch}
        </PageBand>
        <CollectionGamesShelf games={data.games} />
      </div>
    );
  }

  const head = (
    <PageHeader title="Collection" description={getDescription(data)} />
  );

  return (
    <div className="flex flex-col gap-5 sm:gap-6">
      {data.entries.length ? (
        <CollectionBrowser
          head={head}
          entries={data.entries}
          gameCount={data.games.playedGameCount}
          generations={data.generations}
          initialSpeciesSlug={initialSpeciesSlug}
          types={data.types}
        />
      ) : (
        <>
          <PageBand>
            {head}
            {viewSwitch}
          </PageBand>
          <EmptyState
            headingLevel="h2"
            art={emptyArt}
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
                <NewPlayTrigger className={buttonVariants()}>
                  <AppIcon icon={appIcons.actions.create} inline="start" />
                  Start a Play
                </NewPlayTrigger>
              )
            }
          />
        </>
      )}
    </div>
  );
};
