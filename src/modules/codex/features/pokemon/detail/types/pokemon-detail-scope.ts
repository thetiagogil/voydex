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

/* A form the generation has, and the group its page opens in. */
export type PokemonDetailGenerationForm = {
  form: PokemonGenerationFormSummary;
  versionGroupSlug: string;
};

/* A Pokédex listing, and the group whose Pokédex page it opens. */
export type PokemonDetailGenerationPokedexEntry = PokemonPokedexSummary & {
  versionGroupSlug: string;
};

export type ResolvedPokemonDetailScope = {
  availability: PokemonAvailabilitySummary[];
  form: PokemonGenerationFormSummary | null;
  forms: PokemonGenerationFormSummary[];
  generation: PokemonGenerationDetail;
  /*
   * The entry reads by generation: Where to find, the Pokédex numbers and
   * the form switch cover every base group of it. Only the learnset is read
   * in the address's group, since moves differ between a generation's games.
   */
  generationAvailability: {
    availability: PokemonAvailabilitySummary[];
    versionGroup: PokemonDetailVersionGroupScope;
  }[];
  generationForms: PokemonDetailGenerationForm[];
  /*
   * Each base group's learnset, for the learnset's game switch, which picks
   * among them on the page. `isFound` is false where the form can't be found.
   */
  generationLearnsets: {
    isFound: boolean;
    learnsets: PokemonLearnsetSummary[];
    versionGroup: PokemonDetailVersionGroupScope;
  }[];
  generationPokedexEntries: PokemonDetailGenerationPokedexEntry[];
  learnsets: PokemonLearnsetSummary[];
  mechanics: GameMechanicsProfile;
  pokedexEntries: PokemonPokedexSummary[];
  versionGroup: PokemonDetailVersionGroupScope;
  /* The generation's base version groups, for the learnset's game switch. */
  versionGroups: PokemonDetailVersionGroupScope[];
};
