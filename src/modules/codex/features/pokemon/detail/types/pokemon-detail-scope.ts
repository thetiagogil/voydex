import type {
  Game,
  PokemonAvailabilitySummary,
  PokemonGenerationDetail,
  PokemonGenerationFormSummary,
  PokemonLearnsetSummary,
  PokemonPokedexSummary,
  VersionGroup,
} from "@/modules/reference/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";

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
  learnsets: PokemonLearnsetSummary[];
  mechanics: GameMechanicsProfile;
  pokedexEntries: PokemonPokedexSummary[];
  versionGroup: PokemonDetailVersionGroupScope | null;
  versionGroups: PokemonDetailVersionGroupScope[];
};
