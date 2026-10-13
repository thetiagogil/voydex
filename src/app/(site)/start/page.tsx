import { readStartIntentParams } from "@/config/start-intent";
import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import {
  StartPage,
  type StartPick,
} from "@/features/site/components/start-page";
import { getSiteVisitor } from "@/features/site/server/site-visitor-query";
import {
  readGameShelfGames,
  readGameStarters,
} from "@/modules/reference/features/games/server/game-shelf-reader";
import { publicArt } from "@/modules/reference/public-art";

import { StartGameShelf } from "@/modules/reference/features/games/components/start-game-shelf";

type StartRouteProps = {
  searchParams?: Promise<{ game?: string; gen?: string; partner?: string }>;
};

/* `?gen=` from a meadow partner: a generation the shelf can open at. */
const readGeneration = (value: string | undefined) => {
  const generation = Number(value);

  return Number.isInteger(generation) && generation >= 1 && generation <= 99
    ? generation
    : undefined;
};

export default async function Page({ searchParams }: StartRouteProps) {
  const params = await searchParams;
  const intent = readStartIntentParams(params ?? {});
  const generation = readGeneration(params?.gen);
  const [games, starters, { isAuthenticated }] = await Promise.all([
    readGameShelfGames(),
    intent ? readGameStarters(intent.gameSlug) : null,
    getSiteVisitor(),
  ]);
  const game = intent
    ? (games.find((candidate) => candidate.slug === intent.gameSlug) ?? null)
    : null;
  const pick: StartPick | null =
    game && starters
      ? {
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
        }
      : null;

  return (
    <PublicAppShell
      hero={
        <StartPage
          art={publicArt}
          isAuthenticated={isAuthenticated}
          partnerSlug={intent?.partnerSpeciesSlug ?? null}
          pick={pick}
          shelf={
            <StartGameShelf
              /* A meadow partner opens the shelf afresh at its generation. */
              key={generation ?? "shelf"}
              games={games}
              initialGeneration={generation}
              value={pick?.game.slug ?? null}
            />
          }
        />
      }
    >
      {null}
    </PublicAppShell>
  );
}
