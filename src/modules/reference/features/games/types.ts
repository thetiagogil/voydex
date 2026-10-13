import type { PokemonTypePair } from "@/modules/reference/features/pokemon/types";
import type { GameKind } from "@/modules/reference/features/games/domain/game-kinds";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import type {
  Ability,
  Game,
  GameType,
  Generation,
  Platform,
  Pokedex,
  PokedexEntry,
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
  Region,
  Type,
  VersionGroup,
} from "@/modules/reference/shared/database-types";

export type GameCard = {
  coverImageUrl: string | null;
  game: Game;
  generation: Generation | null;
  /* How the Codex groups it: core series, companions and remakes, or Legends. */
  kind: GameKind;
  region: Region | null;
  /* Every game belongs to one; a game whose group can't be resolved fails the read. */
  versionGroup: VersionGroup;
  gameType: GameType | null;
  platforms: Platform[];
};

export type GamePokedexSummary = {
  pokedex: Pokedex;
  pokemonCount: number;
};

export type GamesPageFilters = {
  /* A game kind, or "" for every game. */
  kind: GameKind | "";
  query: string;
};

export type GamesPageData = {
  filters: GamesPageFilters;
  games: GameCard[];
  regions: Region[];
};

export type GamePokedexPokemonAbility = {
  ability: Ability;
  slot: "primary" | "secondary" | "hidden";
};

export type GamePokedexPokemon = {
  abilities: GamePokedexPokemonAbility[];
  attributes: PokemonAttributes | null;
  form: PokemonForm | null;
  imageAlt: string;
  imageUrl: string | null;
  entry: PokedexEntry;
  species: PokemonSpecies;
  typePair: PokemonTypePair;
};

export type GamePokedexData = {
  entries: GamePokedexPokemon[];
  /* The version group's games, in their own order. */
  games: Game[];
  generation: Generation;
  mechanics: GameMechanicsProfile;
  pokedex: Pokedex;
  /* Every Pokédex of the version group, its expansions' included. */
  pokedexes: Pokedex[];
  types: Type[];
  /* The base version group the Pokédex belongs to (Sword / Shield for Isle of Armor). */
  versionGroup: VersionGroup;
};
