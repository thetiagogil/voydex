import type { GameDetailRows } from "@/modules/codex/features/games/detail/server/game-detail-loaders";
import {
  buildGameCards,
  byId,
} from "@/modules/codex/shared/data/reference-data-utils";
import type {
  Game,
  GameCard,
  GameDetailData,
  Generation,
  Pokedex,
  PokedexEntry,
  VersionGroup,
} from "@/modules/codex/shared/types";

const fallbackSortOrder = Number.MAX_SAFE_INTEGER;

const getRelatedGameSortScore = (currentGame: Game, relatedGame: Game) => {
  const sameGeneration =
    relatedGame.generation_id === currentGame.generation_id;
  const sameRegion = relatedGame.region_id === currentGame.region_id;

  if (sameGeneration && sameRegion) {
    return 0;
  }

  return sameGeneration ? 1 : 2;
};

const sortRelatedGames = (
  currentGame: Game,
  generationById: Map<number, Generation>,
  versionGroupById: Map<number, VersionGroup>,
) => {
  return (firstCard: GameCard, secondCard: GameCard) => {
    const firstGenerationSortOrder =
      generationById.get(firstCard.game.generation_id)?.sort_order ??
      fallbackSortOrder;
    const secondGenerationSortOrder =
      generationById.get(secondCard.game.generation_id)?.sort_order ??
      fallbackSortOrder;
    const firstVersionGroupSortOrder =
      versionGroupById.get(firstCard.game.version_group_id)?.sort_order ??
      fallbackSortOrder;
    const secondVersionGroupSortOrder =
      versionGroupById.get(secondCard.game.version_group_id)?.sort_order ??
      fallbackSortOrder;

    return (
      getRelatedGameSortScore(currentGame, firstCard.game) -
        getRelatedGameSortScore(currentGame, secondCard.game) ||
      firstGenerationSortOrder - secondGenerationSortOrder ||
      firstVersionGroupSortOrder - secondVersionGroupSortOrder ||
      firstCard.game.sort_order - secondCard.game.sort_order ||
      firstCard.game.name.localeCompare(secondCard.game.name)
    );
  };
};

const getPokedexPokemonCounts = (entries: PokedexEntry[]) => {
  const speciesIdsByPokedexId = new Map<number, Set<number>>();

  for (const entry of entries) {
    const speciesIds =
      speciesIdsByPokedexId.get(entry.pokedex_id) ?? new Set<number>();

    speciesIds.add(entry.species_id);
    speciesIdsByPokedexId.set(entry.pokedex_id, speciesIds);
  }

  return new Map(
    Array.from(speciesIdsByPokedexId.entries()).map(
      ([pokedexId, speciesIds]) => {
        return [pokedexId, speciesIds.size];
      },
    ),
  );
};

const buildPokedexSummaries = (
  pokedexes: Pokedex[],
  entries: PokedexEntry[],
): GameDetailData["pokedexes"] => {
  const pokemonCountByPokedexId = getPokedexPokemonCounts(entries);

  return pokedexes.map((pokedex) => ({
    pokedex,
    pokemonCount: pokemonCountByPokedexId.get(pokedex.id) ?? 0,
  }));
};

export const buildGameDetailData = (rows: GameDetailRows): GameDetailData => {
  const [card] = buildGameCards({
    gamePlatforms: rows.gamePlatforms,
    games: [rows.game],
    gameTypes: rows.gameTypes,
    generations: rows.generations,
    platforms: rows.platforms,
    regions: rows.regions,
    versionGroups: rows.versionGroups,
  });
  const generationById = byId(rows.generations);
  const versionGroupById = byId(rows.versionGroups);
  const relatedGames = buildGameCards({
    gamePlatforms: rows.gamePlatforms,
    games: rows.relatedGames,
    gameTypes: rows.gameTypes,
    generations: rows.generations,
    platforms: rows.platforms,
    regions: rows.regions,
    versionGroups: rows.versionGroups,
  })
    .sort(sortRelatedGames(rows.game as Game, generationById, versionGroupById))
    .slice(0, 5);
  const pokedexes = buildPokedexSummaries(rows.pokedexes, rows.pokedexEntries);
  const availablePokemonCount = Math.max(
    0,
    ...pokedexes.map((pokedex) => pokedex.pokemonCount),
  );

  return {
    ...card,
    availablePokemonCount,
    pokedexes,
    relatedGames,
  };
};
