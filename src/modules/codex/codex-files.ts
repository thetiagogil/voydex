import { getPrebuiltDataPath } from "@/platform/prebuilt-data/prebuilt-data";

/*
 * The Codex's pre-built files under /codex-data/, one per page and address
 * (`npm run codex:build` writes them; the pages read them). Null for a slug
 * that can't name a file, which is a page that doesn't exist.
 */
export const codexFiles = {
  /* Games browse: its rows, mapped with the page's filters. */
  games: () => getPrebuiltDataPath("games"),
  /* A base version group's page, every game of it. */
  game: (versionGroupSlug: string) =>
    getPrebuiltDataPath("games", versionGroupSlug),
  /* One Pokédex of a base version group. */
  gamePokedex: (versionGroupSlug: string, pokedexSlug: string) =>
    getPrebuiltDataPath("games", versionGroupSlug, pokedexSlug),
  /* Pokémon browse. */
  pokemon: () => getPrebuiltDataPath("pokemon"),
  /* A species' entry, every game's, as rows. */
  pokemonEntry: (speciesSlug: string) =>
    getPrebuiltDataPath("pokemon", speciesSlug),
  /* The species picker of a base version group, every Pokémon in it. */
  pokemonMenu: (versionGroupSlug: string) =>
    getPrebuiltDataPath("pokemon-menu", versionGroupSlug),
  /* Every game and version group, which Codex addresses resolve against. */
  versionGroups: () => getPrebuiltDataPath("version-groups"),
};
