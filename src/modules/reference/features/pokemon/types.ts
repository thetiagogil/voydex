import type { PokemonCategoryFilterValue } from "@/modules/reference/features/pokemon/domain/pokemon-categories";
import type {
  Ability,
  AbilityAttribute,
  AvailabilityMethod,
  EggGroup,
  EvolutionMethod,
  Game,
  Generation,
  LearnMethod,
  Move,
  MoveAttribute,
  Pokedex,
  PokedexEntry,
  PokemonAttributes,
  PokemonEvolutionEdge,
  PokemonForm,
  PokemonSpecies,
  ResolvedPokemonAvailability,
  ResolvedPokemonLearnset,
  Type,
  VersionGroup,
} from "@/modules/reference/shared/database-types";

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
