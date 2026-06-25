export const pokemonCategoryOptions = [
  { label: "Standard", value: "standard" },
  { label: "Baby", value: "baby" },
  { label: "Legendary", value: "legendary" },
  { label: "Mythical", value: "mythical" },
] as const;

export type PokemonCategorySlug =
  (typeof pokemonCategoryOptions)[number]["value"];
export type PokemonCategoryFilterValue = "all" | PokemonCategorySlug;

export type PokemonCategoryFlags = {
  isBaby: boolean;
  isLegendary: boolean;
  isMythical: boolean;
};

const pokemonCategorySlugSet = new Set<string>(
  pokemonCategoryOptions.map((category) => category.value),
);

export const isPokemonCategorySlug = (
  value: string,
): value is PokemonCategorySlug => {
  return pokemonCategorySlugSet.has(value);
};

export const toPokemonCategoryFilterValue = (
  value: string,
): PokemonCategoryFilterValue => {
  return isPokemonCategorySlug(value) ? value : "all";
};

export const getPokemonCategoryLabel = (pokemon: PokemonCategoryFlags) => {
  if (pokemon.isMythical) {
    return "Mythical";
  }

  if (pokemon.isLegendary) {
    return "Legendary";
  }

  if (pokemon.isBaby) {
    return "Baby";
  }

  return null;
};

export const matchesPokemonCategory = (
  pokemon: PokemonCategoryFlags,
  category: PokemonCategoryFilterValue,
) => {
  if (category === "baby") {
    return pokemon.isBaby;
  }

  if (category === "legendary") {
    return pokemon.isLegendary;
  }

  if (category === "mythical") {
    return pokemon.isMythical;
  }

  if (category === "standard") {
    return !pokemon.isBaby && !pokemon.isLegendary && !pokemon.isMythical;
  }

  return true;
};
