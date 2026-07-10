import type { ReferenceRow, ViewRow } from "@/shared/types/database-helpers";

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
