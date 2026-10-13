import { selectPokedexPreviewEntries } from "@/modules/codex/features/games/detail/data/game-detail-pokedex-previews";
import type { GameDetailRows } from "@/modules/codex/features/games/detail/server/game-detail-loaders";
import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import {
  getPokedexEntryKey,
  selectGamePokedexEntryForms,
} from "@/modules/codex/features/games/shared/data/pokedex-entry-forms";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { buildGameCards, byId } from "@/modules/reference/reference-data";
import type {
  Game,
  GameCard,
  Generation,
  PokedexEntry,
  VersionGroup,
} from "@/modules/reference/types";

const fallbackSortOrder = Number.MAX_SAFE_INTEGER;
const RELATED_GAME_LIMIT = 5;

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
  rows: GameDetailRows,
): CodexGameDetailData["pokedexes"] => {
  const pokemonCountByPokedexId = getPokedexPokemonCounts(rows.pokedexEntries);
  const previewEntriesByPokedexId = selectPokedexPreviewEntries(
    rows.pokedexes,
    rows.pokedexEntries,
  );
  const previewFormsByEntryKey = selectGamePokedexEntryForms({
    entries: [...previewEntriesByPokedexId.values()].flat(),
    forms: rows.previewForms,
  });

  return rows.pokedexes.map((pokedex) => ({
    pokedex,
    pokemonCount: pokemonCountByPokedexId.get(pokedex.id) ?? 0,
    previewImageUrls: (previewEntriesByPokedexId.get(pokedex.id) ?? []).flatMap(
      (entry) => {
        const imageUrl = getPokemonFormImageUrl(
          previewFormsByEntryKey.get(getPokedexEntryKey(entry)) ?? null,
        );

        return imageUrl ? [imageUrl] : [];
      },
    ),
  }));
};

export const buildGameDetailData = (
  rows: GameDetailRows,
): CodexGameDetailData => {
  const cardRows = {
    gamePlatforms: rows.gamePlatforms,
    gameTypes: rows.gameTypes,
    generations: rows.generations,
    platforms: rows.platforms,
    regions: rows.regions,
    versionGroups: rows.versionGroups,
  };
  const [card] = buildGameCards({ ...cardRows, games: [rows.game] });
  const generationById = byId(rows.generations);
  const versionGroupById = byId(rows.versionGroups);
  const otherGameCards = buildGameCards({
    ...cardRows,
    games: rows.relatedGames,
  });
  /* The other versions of this game sit in the header's version switch, not among related games. */
  const isVersion = (other: GameCard) =>
    other.game.version_group_id === rows.game.version_group_id;
  const versions = [card, ...otherGameCards.filter(isVersion)].toSorted(
    (first, second) =>
      first.game.sort_order - second.game.sort_order ||
      first.game.name.localeCompare(second.game.name),
  );
  const relatedGames = otherGameCards
    .filter((other) => !isVersion(other))
    .sort(sortRelatedGames(rows.game, generationById, versionGroupById))
    .slice(0, RELATED_GAME_LIMIT);
  const pokedexes = buildPokedexSummaries(rows);
  const availablePokemonCount = Math.max(
    0,
    ...pokedexes.map((pokedex) => pokedex.pokemonCount),
  );

  return {
    ...card,
    availablePokemonCount,
    pokedexes,
    relatedGames,
    versions,
  };
};
