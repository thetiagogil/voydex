import type { ReferenceRow, ViewRow } from "@/shared/types/database-helpers";
import type { PokemonCategoryFilterValue } from "@/shared/domain/pokemon/pokemon-categories";

export type Ability = ReferenceRow<"abilities">;
export type AbilityAttribute = ReferenceRow<"ability_attributes">;
export type AvailabilityMethod = ReferenceRow<"availability_methods">;
export type EggGroup = ReferenceRow<"egg_groups">;
export type EvolutionMethod = ReferenceRow<"evolution_methods">;
export type Game = ReferenceRow<"games">;
export type GameContentScope = ReferenceRow<"game_content_scopes">;
export type GamePlatform = ReferenceRow<"game_platforms">;
export type GameType = ReferenceRow<"game_types">;
export type Generation = ReferenceRow<"generations">;
export type LearnMethod = ReferenceRow<"learn_methods">;
export type Move = ReferenceRow<"moves">;
export type MoveAttribute = ReferenceRow<"move_attributes">;
export type Platform = ReferenceRow<"platforms">;
export type Pokedex = ReferenceRow<"pokedex">;
export type PokedexEntry = ReferenceRow<"pokedex_entries">;
export type PokemonAttributes = ReferenceRow<"pokemon_attributes">;
export type PokemonEvolutionEdge = ReferenceRow<"pokemon_evolution_edges">;
export type PokemonForm = ReferenceRow<"pokemon_forms">;
export type PokemonSpecies = ReferenceRow<"pokemon_species">;
export type Region = ReferenceRow<"regions">;
export type Type = ReferenceRow<"types">;
export type VersionGroup = ReferenceRow<"version_groups">;

export type ResolvedPokemonAvailability =
  ViewRow<"reference_resolved_pokemon_availability">;
export type ResolvedPokemonLearnset =
  ViewRow<"reference_resolved_pokemon_learnsets">;

export type PokemonTypePair = {
  primaryType: Type | null;
  secondaryType: Type | null;
};

export type PokedexPokemonBrowseReference = {
  id: number;
  name: string;
  slug: string;
};

export type PokedexPokemonBrowseCard = {
  detailGameSlug: string;
  id: number;
  imageAlt: string;
  imageUrl: string | null;
  introducedGeneration: PokedexPokemonBrowseReference | null;
  isBaby: boolean;
  isLegendary: boolean;
  isMythical: boolean;
  name: string;
  nationalNumber: number;
  primaryType: PokedexPokemonBrowseReference | null;
  secondaryType: PokedexPokemonBrowseReference | null;
  slug: string;
};

export type PokemonDetailMenuGroup = {
  key: string;
  kind: string;
  name: string;
};

export type PokemonDetailMenuPokemon = {
  id: number;
  imageAlt: string;
  imageUrl: string | null;
  name: string;
  nationalNumber: number;
  pokedexGroup: PokemonDetailMenuGroup | null;
  pokedexNumber: number | null;
  primaryType: PokedexPokemonBrowseReference | null;
  secondaryType: PokedexPokemonBrowseReference | null;
  slug: string;
};

export type PokemonDetailMenuPage = {
  nextOffset: number | null;
  pokemon: PokemonDetailMenuPokemon[];
  total: number;
};

export type PokedexCategoryFilter = PokemonCategoryFilterValue;

export type PokedexPageFilters = {
  category: PokedexCategoryFilter;
  generation: string;
  query: string;
  type: string;
};

export type PokedexPageData = {
  filters: PokedexPageFilters;
  generations: Generation[];
  pokemon: PokedexPokemonBrowseCard[];
  types: Type[];
};

export type PokemonFormSummary = {
  attributesByGeneration: PokemonAttributes[];
  form: PokemonForm;
  latestAttributes: PokemonAttributes | null;
  typePair: PokemonTypePair;
  introducedGeneration: Generation | null;
};

export type PokemonGenerationFormSummary = {
  attributes: PokemonAttributes | null;
  form: PokemonForm;
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

export type PokemonLearnsetSummary = {
  attributes: MoveAttribute | null;
  game: Game | null;
  learnset: ResolvedPokemonLearnset;
  method: LearnMethod | null;
  move: Move;
  sourceVersionGroup: VersionGroup | null;
  targetVersionGroup: VersionGroup | null;
  type: Type | null;
};

export type PokemonGenerationDetail = {
  availability: PokemonAvailabilitySummary[];
  forms: PokemonGenerationFormSummary[];
  games: Game[];
  generation: Generation;
  learnsets: PokemonLearnsetSummary[];
  pokedexEntries: PokemonPokedexSummary[];
  versionGroups: VersionGroup[];
};

export type PokemonEvolutionFormSummary = {
  form: PokemonForm;
  latestAttributes: PokemonAttributes | null;
  typePair: PokemonTypePair;
};

export type PokemonEvolutionSpeciesSummary = {
  defaultForm: PokemonForm | null;
  forms: PokemonEvolutionFormSummary[];
  introducedGeneration: Generation | null;
  latestAttributes: PokemonAttributes | null;
  species: PokemonSpecies;
  typePair: PokemonTypePair;
};

export type PokemonEvolutionEdgeSummary = {
  edge: PokemonEvolutionEdge;
  fromForm: PokemonForm | null;
  fromSpecies: PokemonSpecies | null;
  introducedGeneration: Generation | null;
  method: EvolutionMethod | null;
  toForm: PokemonForm | null;
  toSpecies: PokemonSpecies | null;
};

export type PokemonEvolutionFamilySummary = {
  edges: PokemonEvolutionEdgeSummary[];
  species: PokemonEvolutionSpeciesSummary[];
};

export type PokemonDetailData = {
  abilities: Ability[];
  abilityAttributes: AbilityAttribute[];
  defaultForm: PokemonFormSummary | null;
  eggGroups: EggGroup[];
  evolutionFamily: PokemonEvolutionFamilySummary;
  species: PokemonSpecies;
  forms: PokemonFormSummary[];
  generationDetails: PokemonGenerationDetail[];
  availability: PokemonAvailabilitySummary[];
  learnsets: PokemonLearnsetSummary[];
  pokedexEntries: PokemonPokedexSummary[];
};

export type GameCard = {
  coverImageUrl: string | null;
  game: Game;
  generation: Generation | null;
  region: Region | null;
  versionGroup: VersionGroup | null;
  gameType: GameType | null;
  platforms: Platform[];
};

export type GamesPageFilters = {
  gameType: string;
  generation: string;
  query: string;
  region: string;
};

export type GamesPageData = {
  filters: GamesPageFilters;
  gameTypes: GameType[];
  games: GameCard[];
  generations: Generation[];
  regions: Region[];
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
