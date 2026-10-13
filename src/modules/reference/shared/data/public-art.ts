import { getGameCoverImageUrlBySlug } from "@/modules/reference/features/games/data/game-images";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";

/*
 * The reference helpers the public pages draw with: Pokémon renders, game
 * covers and a game's colour. Global features can't import a module, so their
 * routes pass these in.
 */
export const publicArt = {
  gameColour: getGameColourStyle,
  gameCover: getGameCoverImageUrlBySlug,
  pokemon: (form: { name: string; sprite_slug: string }) =>
    getPokemonFormImageUrl(form),
};
