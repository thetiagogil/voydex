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

/*
 * A version group's name as the Codex reads it: "Red / Blue" is "Red and
 * Blue"; "Pokémon Legends: Arceus" is "Legends: Arceus".
 */
export const getVersionGroupShortName = (name: string) => {
  return formatNameList(getGameShortName(name).split(" / "));
};

/* A version group page's title: "Pokémon Sword and Shield". */
export const getVersionGroupTitle = (name: string) => {
  return `Pokémon ${getVersionGroupShortName(name)}`;
};

/* "Generation VIII" reads as "VIII" beside a row's "Generation" label. */
export const getGenerationNumeral = (generationName: string) => {
  return generationName.replace(/^Generation\s+/, "");
};
