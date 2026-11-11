"use client";

import { StartPage } from "@/features/site/components/start-page";
import type { StartPick } from "@/features/site/components/start-meadow";
import { useGameCatalogue } from "@/modules/reference/features/games/client/game-catalogue";
import { StartGameShelf } from "@/modules/reference/features/games/components/start-game-shelf";
import type { GameCatalogue } from "@/modules/reference/features/games/types";
import { publicArt } from "@/modules/reference/public-art";
import { Spinner } from "@/shared/components/ui/spinner";

const noPicks: Readonly<Record<string, StartPick>> = {};

/* Every game's first partner choice, by game slug. */
const getStartPicks = ({
  badgeCountsByGameSlug,
  games,
  startersByGameSlug,
}: GameCatalogue) => {
  const picks: Record<string, StartPick> = {};

  for (const game of games) {
    const starters = startersByGameSlug[game.slug];

    if (starters) {
      picks[game.slug] = {
        badgeCount: badgeCountsByGameSlug[game.slug] ?? 0,
        game: {
          name: game.name,
          regionName: game.regionName,
          shortName: game.shortName,
          slug: game.slug,
        },
        isSolo: starters.isSolo,
        starters: starters.starters.map((starter) => ({
          imageUrl: starter.imageUrl,
          name: starter.name,
          speciesSlug: starter.speciesSlug,
        })),
      };
    }
  }

  return picks;
};

/*
 * Start a Play with every game and its first partners from the pre-built
 * game catalogue, so picking a game or a partner shows at once; the picks
 * live in the address (`?game=`, `?partner=`, `?gen=`). The meadow stands
 * while the games download.
 */
export const StartRoute = () => {
  const catalogue = useGameCatalogue();

  if (catalogue.status === "failed" || catalogue.status === "missing") {
    throw new Error(
      "The games didn't download. Check the connection and try again.",
    );
  }

  return (
    <StartPage
      art={publicArt}
      picks={
        catalogue.status === "ready" ? getStartPicks(catalogue.data) : noPicks
      }
      shelf={
        catalogue.status === "ready" ? (
          <StartGameShelf games={catalogue.data.games} />
        ) : (
          <div className="flex min-h-40 items-center justify-center">
            <Spinner
              aria-label="Loading the games"
              className="text-action size-7"
            />
          </div>
        )
      }
    />
  );
};
