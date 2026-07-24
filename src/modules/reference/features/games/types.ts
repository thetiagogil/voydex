import type { PokemonTypePair } from "@/modules/reference/features/pokemon/types";
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
  region: Region | null;
  versionGroup: VersionGroup | null;
  gameType: GameType | null;
  platforms: Platform[];
};

export type GamePokedexSummary = {
  pokedex: Pokedex;
  pokemonCount: number;
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
  availablePokemonCount: number;
  pokedexes: GamePokedexSummary[];
  relatedGames: GameCard[];
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
  game: Game;
  generation: Generation;
  mechanics: GameMechanicsProfile;
  pokedex: Pokedex;
  pokedexes: Pokedex[];
  types: Type[];
};
