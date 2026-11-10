import { connection } from "next/server";

import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { StartPage } from "@/features/site/components/start-page";
import type { StartPick } from "@/features/site/components/start-meadow";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";
import { publicArt } from "@/modules/reference/public-art";

import { StartGameShelf } from "@/modules/reference/features/games/components/start-game-shelf";

/*
 * Start a Play reads every game and its first partners up front, so picking
 * a game or a partner shows at once; the picks live in the address (`?game=`,
 * `?partner=`, `?gen=`), which the page's client parts read.
 */
export default async function Page() {
  /* Its picks live in the address, read as the page renders. */
  await connection();
  const {
    badgeCountsByGameSlug,
    games,
    startersByGameSlug: startersByGame,
  } = await readGameCatalogue();
  const picks: Record<string, StartPick> = {};

  for (const game of games) {
    const starters = startersByGame[game.slug];

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

  return (
    <PublicAppShell>
      <StartPage
        art={publicArt}
        picks={picks}
        shelf={<StartGameShelf games={games} />}
      />
    </PublicAppShell>
  );
}
