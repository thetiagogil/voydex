import type { PokemonTypePair } from "@/modules/reference/features/pokemon/types";
import type { GameCoverShape } from "@/modules/reference/features/games/domain/game-cover-shapes";
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

/*
 * A game on the cover shelf of the game picker (Start a Play, New Play, the
 * Team Planner), in release order.
 */
export type GameShelfGame = {
  coverImageUrl: string | null;
  /* The box's shape, so the cover holds its place before the art loads. */
  coverShape: GameCoverShape;
  generation: {
    id: number;
    /* "Generation VIII". */
    name: string;
    /* "VIII". */
    numeral: string;
    /* The generation's place in the series: 8 for Generation VIII. */
    number: number;
  };
  id: number;
  /* "Pokémon Sword". */
  name: string;
  platformNames: string[];
  regionName: string | null;
  releaseYear: number;
  /* "Sword". */
  shortName: string;
  slug: string;
  /* The base version group it belongs to (Sword and Shield), for Codex and Planner links. */
  versionGroupSlug: string;
};

/* One first partner, as a game offers it. */
export type GameStarter = {
  formId: number;
  /* The form's own name, such as "Pikachu (Partner)" in Let's Go, Pikachu!. */
  formName: string;
  formSlug: string;
  /* False for a special form, such as the Let's Go partners. */
  isDefaultForm: boolean;
  imageUrl: string | null;
  /* The species' name: "Grookey". */
  name: string;
  nationalNumber: number;
  speciesId: number;
  speciesSlug: string;
  /* The form's types in the game's generation. */
  typePair: PokemonTypePair;
};

/*
 * A game's first partner choice: the trio you pick from at the start, or the
 * one partner chosen for you (`isSolo`), as in Yellow and the Let's Go games.
 * Empty when Voydex has no starter for the game.
 */
export type GameStarters = {
  gameSlug: string;
  isSolo: boolean;
  starters: GameStarter[];
};

/* An optional content scope (DLC) a game's Play can own. */
export type GameExpansion = {
  name: string;
  versionGroupId: number;
};

/*
 * Everything the game picker offers, read once and cached (it only changes
 * when the reference data is reseeded): every game, its first partners and
 * its expansions, by game slug.
 */
export type GameCatalogue = {
  expansionsByGameSlug: Record<string, GameExpansion[]>;
  games: GameShelfGame[];
  startersByGameSlug: Record<string, GameStarters>;
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
  /* How many Pokémon each of them lists, by Pokédex id. */
  pokemonCountByPokedexId: Record<number, number>;
  types: Type[];
  /* The base version group the Pokédex belongs to (Sword / Shield for Isle of Armor). */
  versionGroup: VersionGroup;
};
