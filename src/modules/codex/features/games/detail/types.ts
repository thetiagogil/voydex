import type {
  GameCard,
  GamePokedexSummary,
  VersionGroup,
} from "@/modules/reference/types";

/* A Pokémon the page shows as a card (a first partner, an exclusive), opening its entry. */
export type CodexGamePokemon = {
  href: string;
  imageUrl: string | null;
  key: string;
  name: string;
  nationalNumber: number;
  types: { name: string; slug: string }[];
};

/* The picked game's first partner choice; `isSolo` when one is chosen for you. */
export type CodexGameFirstPartners = {
  isSolo: boolean;
  pokemon: CodexGamePokemon[];
};

/* What only one game of the group has, for one of its games. */
export type CodexGameVersionExclusives = {
  pokemon: CodexGamePokemon[];
  version: GameCard;
};

/* A version group's page: Sword and Shield, read with one of its games picked. */
export type CodexGameDetailData = {
  firstPartners: CodexGameFirstPartners;
  /* The group's Pokédexes, its expansions' too, each with its count. */
  pokedexes: GamePokedexSummary[];
  relatedGames: GameCard[];
  /* The picked game, which the cover and the eyebrow follow. */
  version: GameCard;
  versionGroup: VersionGroup;
  /*
   * Each game's exclusives, the picked game first, when the group has two
   * games or more; empty otherwise.
   */
  versionExclusives: CodexGameVersionExclusives[];
  /* Every game in the group, in its own order. */
  versions: GameCard[];
};
