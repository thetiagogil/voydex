export const pokemonGameSlugs = [
  "red",
  "blue",
  "yellow",
  "gold",
  "silver",
  "crystal",
  "ruby",
  "sapphire",
  "firered",
  "leafgreen",
  "emerald",
  "diamond",
  "pearl",
  "platinum",
  "heartgold",
  "soulsilver",
  "black",
  "white",
  "black-2",
  "white-2",
  "x",
  "y",
  "omega-ruby",
  "alpha-sapphire",
  "sun",
  "moon",
  "ultra-sun",
  "ultra-moon",
  "lets-go-pikachu",
  "lets-go-eevee",
  "sword",
  "shield",
  "brilliant-diamond",
  "shining-pearl",
  "legends-arceus",
  "scarlet",
  "violet",
  "legends-za",
] as const;

export type PokemonGameSlug = (typeof pokemonGameSlugs)[number];

const pokemonGameSlugSet = new Set<string>(pokemonGameSlugs);

export const isPokemonGameSlug = (slug: string): slug is PokemonGameSlug => {
  return pokemonGameSlugSet.has(slug);
};
