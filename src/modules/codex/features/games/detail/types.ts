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

/* A Gym Leader, kahuna or Champion of the picked game, as the region card lists them. */
export type CodexGameLeader = {
  /* The strongest Pokémon of your first battle with them; null when no team is seeded. */
  ace: { imageUrl: string | null; name: string } | null;
  key: string;
  name: string;
  /* Where you face them: a Gym's town, a grand trial's site, the League. */
  place: string | null;
  /* Their portrait; null where Voydex has none (their initials stand in). */
  portraitUrl: string | null;
  role: string;
  /* The type they specialise in; a Champion usually has none. */
  type: { name: string; slug: string } | null;
};

/* A version group's page: Sword and Shield, read with one of its games picked. */
export type CodexGameDetailData = {
  firstPartners: CodexGameFirstPartners;
  /* The picked game's leaders in the order you meet them; empty for a game without them. */
  leaders: CodexGameLeader[];
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
