import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameCoverImageUrlBySlug } from "@/modules/reference/features/games/data/game-images";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import {
  PokemonCard,
  type PokemonCardSize,
  type PokemonCardState,
} from "@/modules/reference/features/pokemon/components/pokemon-card";
import { PokemonTypeIcon } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";

type PublicPokemonForm = { name: string; sprite_slug: string };

/*
 * The reference helpers and components the public pages draw with: Pokémon
 * renders, the game cover, a game's colour, the one Pokémon card and the type
 * icon. Global features can't import a module, so their routes pass these in
 * and the public pages draw the same things the app does.
 */
export const publicArt = {
  gameColour: getGameColourStyle,
  /* A game's cover, decorative: the words beside it name the game. */
  gameCover: ({
    className,
    game,
  }: {
    className?: string;
    game: { name: string; slug: string };
  }) => (
    <GameCover
      alt=""
      className={className}
      coverImageUrl={getGameCoverImageUrlBySlug(game.slug)}
      gameName={game.name}
      gameSlug={game.slug}
    />
  ),
  pokemon: (form: PublicPokemonForm) => getPokemonFormImageUrl(form),
  pokemonCard: ({
    className,
    number,
    pokemon,
    size,
    state,
    types,
  }: {
    className?: string;
    number: string;
    pokemon: PublicPokemonForm;
    size?: PokemonCardSize;
    state: PokemonCardState;
    types: readonly string[];
  }) => (
    <PokemonCard
      className={className}
      imageAlt=""
      imageUrl={getPokemonFormImageUrl(pokemon)}
      name={pokemon.name}
      number={number}
      size={size}
      state={state}
      types={types.filter(isPokemonTypeSlug).map((slug) => ({
        name: slug,
        slug,
      }))}
    />
  ),
  typeIcon: ({
    className,
    type,
  }: {
    className?: string;
    type: PokemonTypeSlug;
  }) => <PokemonTypeIcon type={type} className={className} />,
};

const psyduckArtUrl = getPokemonFormImageUrl({
  name: "Psyduck",
  sprite_slug: "psyduck",
});

/* The Pokémon that looks for a page that isn't there (v3's not found). */
export const notFoundPokemon = psyduckArtUrl
  ? { name: "Psyduck", artUrl: psyduckArtUrl }
  : undefined;
