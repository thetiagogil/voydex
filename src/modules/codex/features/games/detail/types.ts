import type {
  GameCard,
  GamePokedexSummary,
  VersionGroup,
} from "@/modules/reference/types";

export type CodexGamePokedexSummary = GamePokedexSummary & {
  /* Art for the first entries, shown as the strip on the Pokédex tile. */
  previewImageUrls: string[];
};

/* A version group's page: Sword and Shield, read with one of its games picked. */
export type CodexGameDetailData = {
  availablePokemonCount: number;
  pokedexes: CodexGamePokedexSummary[];
  relatedGames: GameCard[];
  /* The picked game, which the cover and the eyebrow follow. */
  version: GameCard;
  versionGroup: VersionGroup;
  /* Every game in the group, in its own order. */
  versions: GameCard[];
};
