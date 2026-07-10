import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

const pokemonTypeBackgroundImageUrls = {
  normal: "/backgrounds/pokemon-types/normal.webp",
  fire: "/backgrounds/pokemon-types/fire.webp",
  water: "/backgrounds/pokemon-types/water.webp",
  electric: "/backgrounds/pokemon-types/electric.webp",
  grass: "/backgrounds/pokemon-types/grass.webp",
  ice: "/backgrounds/pokemon-types/ice.webp",
  fighting: "/backgrounds/pokemon-types/fighting.webp",
  poison: "/backgrounds/pokemon-types/poison.webp",
  ground: "/backgrounds/pokemon-types/ground.webp",
  flying: "/backgrounds/pokemon-types/flying.webp",
  psychic: "/backgrounds/pokemon-types/psychic.webp",
  bug: "/backgrounds/pokemon-types/bug.webp",
  rock: "/backgrounds/pokemon-types/rock.webp",
  ghost: "/backgrounds/pokemon-types/ghost.webp",
  dragon: "/backgrounds/pokemon-types/dragon.webp",
  dark: "/backgrounds/pokemon-types/dark.webp",
  steel: "/backgrounds/pokemon-types/steel.webp",
  fairy: "/backgrounds/pokemon-types/fairy.webp",
} satisfies Record<PokemonTypeSlug, string>;

export const getPokemonTypeBackgroundImageUrl = (
  type: PokemonTypeSlug | null,
) => {
  return type ? pokemonTypeBackgroundImageUrls[type] : undefined;
};
