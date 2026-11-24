import type { PublicArt } from "@/config/public-art";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameCoverImageUrlBySlug } from "@/modules/reference/features/games/data/game-images";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";

/*
 * The reference module's public entry for the art the global features draw:
 * Pokémon renders and the game cover.
 * Their routes pass it in (global features can't import a module), so the
 * public pages draw the same things the app does. The contract is
 * `PublicArt` in `@/config/public-art`.
 */
export const publicArt = {
  gameCover: ({ className, game }) => (
    <GameCover
      alt=""
      className={className}
      coverImageUrl={getGameCoverImageUrlBySlug(game.slug)}
      gameName={game.name}
      gameSlug={game.slug}
    />
  ),
  pokemon: (form) => getPokemonFormImageUrl(form),
} satisfies PublicArt;

const psyduckArtUrl = getPokemonFormImageUrl({
  name: "Psyduck",
  slug: "psyduck",
});

/* The Pokémon that looks for a page that isn't there (v3's not found). */
export const notFoundPokemon = psyduckArtUrl
  ? { name: "Psyduck", artUrl: psyduckArtUrl }
  : undefined;
