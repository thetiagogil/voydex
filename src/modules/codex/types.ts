import type { ReferenceRow, ViewRow } from "@/shared/types/database-helpers";

export type AvailabilityMethod = ReferenceRow<"availability_methods">;
export type Game = ReferenceRow<"games">;
export type GamePlatform = ReferenceRow<"game_platforms">;
export type GameType = ReferenceRow<"game_types">;
export type Generation = ReferenceRow<"generations">;
export type Platform = ReferenceRow<"platforms">;
export type Pokedex = ReferenceRow<"pokedex">;
export type PokedexEntry = ReferenceRow<"pokedex_entries">;
export type PokemonAttributes = ReferenceRow<"pokemon_attributes">;
export type PokemonForm = ReferenceRow<"pokemon_forms">;
export type PokemonSpecies = ReferenceRow<"pokemon_species">;
export type Region = ReferenceRow<"regions">;
export type Type = ReferenceRow<"types">;
export type VersionGroup = ReferenceRow<"version_groups">;

export type ResolvedPokemonAvailability =
  ViewRow<"reference_resolved_pokemon_availability">;

export type PokemonTypePair = {
  primaryType: Type | null;
  secondaryType: Type | null;
};

export type PokedexPokemonCard = {
  species: PokemonSpecies;
  defaultForm: PokemonForm | null;
  latestAttributes: PokemonAttributes | null;
  typePair: PokemonTypePair;
  introducedGeneration: Generation | null;
};

export type PokedexPageData = {
  pokemon: PokedexPokemonCard[];
  searchQuery: string;
};

export type PokemonFormSummary = {
  form: PokemonForm;
  latestAttributes: PokemonAttributes | null;
  typePair: PokemonTypePair;
  introducedGeneration: Generation | null;
};

export type PokemonAvailabilitySummary = {
  availability: ResolvedPokemonAvailability;
  game: Game | null;
  method: AvailabilityMethod | null;
  targetVersionGroup: VersionGroup | null;
  sourceVersionGroup: VersionGroup | null;
};

export type PokemonPokedexSummary = {
  entry: PokedexEntry;
  pokedex: Pokedex | null;
};

export type PokemonDetailData = {
  species: PokemonSpecies;
  forms: PokemonFormSummary[];
  availability: PokemonAvailabilitySummary[];
  pokedexEntries: PokemonPokedexSummary[];
};

export type GenerationCard = {
  generation: Generation;
  gameCount: number;
  speciesCount: number;
};

export type GenerationsPageData = {
  generations: GenerationCard[];
};

export type GenerationDetailData = {
  generation: Generation;
  games: Array<{
    game: Game;
    region: Region | null;
    versionGroup: VersionGroup | null;
  }>;
  versionGroups: VersionGroup[];
  introducedSpecies: PokemonSpecies[];
};

export type GameCard = {
  game: Game;
  generation: Generation | null;
  region: Region | null;
  versionGroup: VersionGroup | null;
  gameType: GameType | null;
  platforms: Platform[];
};

export type GamesPageData = {
  games: GameCard[];
};

export type GameDetailData = GameCard & {
  pokedexes: Pokedex[];
  contentScopes: Array<{
    game: Game | null;
    versionGroup: VersionGroup | null;
    isBaseScope: boolean;
  }>;
  availablePokemonCount: number;
};
