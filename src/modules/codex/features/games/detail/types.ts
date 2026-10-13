import type {
  GameCard,
  GameDetailData,
  GamePokedexSummary,
} from "@/modules/reference/types";

export type CodexGamePokedexSummary = GamePokedexSummary & {
  /* Art for the first entries, shown as the strip on the Pokédex tile. */
  previewImageUrls: string[];
};

export type CodexGameDetailData = Omit<GameDetailData, "pokedexes"> & {
  pokedexes: CodexGamePokedexSummary[];
  /* Every version in this game's version group, this one included, in release order. */
  versions: GameCard[];
};
