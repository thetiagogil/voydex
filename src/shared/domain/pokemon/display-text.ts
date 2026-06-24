const pokemonBrandPattern = /\bPokemon\b/gi;

export const formatPokemonDisplayText = (value: string) => {
  return value.replace(pokemonBrandPattern, "Pokémon");
};

export const formatOptionalPokemonDisplayText = (
  value: string | null | undefined,
  fallback: string,
) => {
  return value ? formatPokemonDisplayText(value) : fallback;
};
