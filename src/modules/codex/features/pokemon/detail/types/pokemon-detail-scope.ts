import type {
  Game,
  PokemonAvailabilitySummary,
  PokemonGenerationDetail,
  PokemonGenerationFormSummary,
  PokemonPokedexSummary,
  VersionGroup,
} from "@/modules/codex/shared/types";

export type PokemonDetailScopeParams = {
  form?: string;
  game?: string;
  generation?: string;
  versionGroup?: string;
};

export type PokemonDetailVersionGroupScope = {
  games: Game[];
  versionGroup: VersionGroup;
};

export type ResolvedPokemonDetailScope = {
  availability: PokemonAvailabilitySummary[];
  form: PokemonGenerationFormSummary | null;
  forms: PokemonGenerationFormSummary[];
  game: Game | null;
  generation: PokemonGenerationDetail;
  pokedexEntries: PokemonPokedexSummary[];
  versionGroup: PokemonDetailVersionGroupScope | null;
  versionGroups: PokemonDetailVersionGroupScope[];
};
