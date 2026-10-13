const POKEMON_NAME_PREFIX_PATTERN = /^Pok(?:e|é)mon\s+/i;

export const getGameInitials = (name: string) => {
  const displayName = name.replace(POKEMON_NAME_PREFIX_PATTERN, "");
  const words = displayName.match(/[A-Za-z0-9]+/g) ?? [];

  return (words.length ? words : [displayName])
    .slice(0, 2)
    .map((word) => word.slice(0, 1))
    .join("")
    .toUpperCase();
};

/* "Pokémon Sword" reads as "Sword" on shelves, switches and crumbs. */
export const getGameShortName = (name: string) => {
  return name.replace(POKEMON_NAME_PREFIX_PATTERN, "");
};

/* "Generation VIII" reads as "VIII" beside a row's "Generation" label. */
export const getGenerationNumeral = (generationName: string) => {
  return generationName.replace(/^Generation\s+/, "");
};
