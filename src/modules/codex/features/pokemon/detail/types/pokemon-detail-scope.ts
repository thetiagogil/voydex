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

/* What the entry's address asks for: a base version group and, optionally, a form. */
export type PokemonDetailScopeParams = {
  form?: string;
  versionGroup: string;
};

/* A base version group the entry can be read in, with its games and expansions. */
export type PokemonDetailVersionGroupScope = {
  /* Child groups such as The Isle of Armor, in release order. */
  expansions: VersionGroup[];
  games: Game[];
  versionGroup: VersionGroup;
};

export type ResolvedPokemonDetailScope = {
  availability: PokemonAvailabilitySummary[];
  form: PokemonGenerationFormSummary | null;
  forms: PokemonGenerationFormSummary[];
  generation: PokemonGenerationDetail;
  learnsets: PokemonLearnsetSummary[];
  mechanics: GameMechanicsProfile;
  pokedexEntries: PokemonPokedexSummary[];
  versionGroup: PokemonDetailVersionGroupScope;
  /* The generation's base version groups, for the version group switch. */
  versionGroups: PokemonDetailVersionGroupScope[];
};
