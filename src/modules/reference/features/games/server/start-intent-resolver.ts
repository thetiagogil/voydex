import type {
  ResolveStartIntent,
  StartIntentPokemon,
} from "@/config/start-intent";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-shelf-reader";
import type { GameStarter } from "@/modules/reference/types";

const toIntentPokemon = (starter: GameStarter): StartIntentPokemon => ({
  imageUrl: starter.imageUrl,
  name: starter.name,
  speciesSlug: starter.speciesSlug,
});

/*
 * The routes' resolver for the pick from Start a Play (Log in, Sign up, Check
 * your email, Welcome): the game from the picker's shelf read, the partner
 * only when that game offers it. An unknown game resolves to null, so the
 * pages drop it; a failed read throws to the page's error boundary.
 */
export const resolveStartIntent: ResolveStartIntent = async (intent) => {
  const { games, startersByGameSlug } = await readGameCatalogue();
  const game = games.find((candidate) => candidate.slug === intent.gameSlug);
  const starters = startersByGameSlug[intent.gameSlug];

  if (!game || !starters) {
    return null;
  }

  const partner = starters.isSolo
    ? starters.starters[0]
    : starters.starters.find(
        (starter) => starter.speciesSlug === intent.partnerSpeciesSlug,
      );

  return {
    game: { name: game.name, slug: game.slug },
    gameShortName: game.shortName,
    partner: partner ? toIntentPokemon(partner) : null,
    starters: starters.starters.map(toIntentPokemon),
  };
};
