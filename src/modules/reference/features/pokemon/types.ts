import type { BattleFormLink } from "@/modules/reference/features/pokemon/data/battle-mechanics";
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

/* What a Legendary or Mythical species is called. */
export type LegendaryRarity = "Legendary" | "Mythical";

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
  /* The version group its entry opens in: the first of its own generation. */
  detailVersionGroupSlug: string;
  id: number;
  imageUrl: string | null;
  introducedGeneration: PokedexPokemonBrowseReference | null;
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

export type PokedexPageFilters = {
  generation: string;
  query: string;
  type: string;
};

export type PokedexPageData = {
  filters: PokedexPageFilters;
  generations: Generation[];
  pokemon: PokedexPokemonBrowseCard[];
  /* Each generation's home region, by generation slug: "Kanto" for Generation I. */
  regionNameByGenerationSlug: Record<string, string>;
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
  /* Its battle forms, shown only in the games that have their mechanic. */
  battleForms: BattleFormLink[];
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
  /* Every generation, in order, for the entry's pills (those it isn't in show disabled). */
  generations: Generation[];
  availability: PokemonAvailabilitySummary[];
  learnsets: PokemonLearnsetSummary[];
  pokedexEntries: PokemonPokedexSummary[];
};
