const POKEMON_NAME_PREFIX_PATTERN = /^Pok(?:e|é)mon\s+/i;

/* "Pokémon Sword" reads as "Sword" on shelves, switches and crumbs. */
export const getGameShortName = (name: string) => {
  return name.replace(POKEMON_NAME_PREFIX_PATTERN, "");
};

const POKEDEX_SUFFIX_PATTERN = /\s+Pok(?:e|\u00e9)dex$/i;

/* "Galar Pokédex" reads as "Galar" on its tile and in the Pokédex switch. */
export const getPokedexShortName = (name: string) => {
  return name.replace(POKEDEX_SUFFIX_PATTERN, "");
};

const listFormatter = new Intl.ListFormat("en", {
  style: "long",
  type: "conjunction",
});

export const formatNameList = (names: string[]) => {
  return listFormatter.format(names);
};
