export const pokemonTypeSlugs = [
  "normal",
  "fire",
  "water",
  "electric",
  "grass",
  "ice",
  "fighting",
  "poison",
  "ground",
  "flying",
  "psychic",
  "bug",
  "rock",
  "ghost",
  "dragon",
  "dark",
  "steel",
  "fairy",
] as const;

export type PokemonTypeSlug = (typeof pokemonTypeSlugs)[number];

const pokemonTypeSlugSet = new Set<string>(pokemonTypeSlugs);

export function isPokemonTypeSlug(slug: string): slug is PokemonTypeSlug {
  return pokemonTypeSlugSet.has(slug);
}
