import { sortVersionGroupPokedexes } from "@/modules/codex/features/games/shared/data/version-group-pokedexes";
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

/* Same generation and region first, then same generation, then same region. */
const getRelatedGameSortScore = (versions: Game[], relatedGame: Game) => {
  const sameGeneration = versions.some((version) => {
    return version.generation_id === relatedGame.generation_id;
  });
  const sameRegion = versions.some((version) => {
    return version.region_id === relatedGame.region_id;
  });

  if (sameGeneration && sameRegion) {
    return 0;
  }

  return sameGeneration ? 1 : 2;
};

const sortRelatedGames = (
  versions: Game[],
  generationById: Map<number, Generation>,
  versionGroupById: Map<number, VersionGroup>,
) => {
  return (firstCard: GameCard, secondCard: GameCard) => {
    const getGenerationOrder = (card: GameCard) =>
      generationById.get(card.game.generation_id)?.sort_order ??
      fallbackSortOrder;
    const getVersionGroupOrder = (card: GameCard) =>
      versionGroupById.get(card.game.version_group_id)?.sort_order ??
      fallbackSortOrder;

    return (
      getRelatedGameSortScore(versions, firstCard.game) -
        getRelatedGameSortScore(versions, secondCard.game) ||
      getGenerationOrder(firstCard) - getGenerationOrder(secondCard) ||
      firstCard.game.release_year - secondCard.game.release_year ||
      getVersionGroupOrder(firstCard) - getVersionGroupOrder(secondCard) ||
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
  versionSlug?: string,
): CodexGameDetailData | null => {
  const cardRows = {
    gamePlatforms: rows.gamePlatforms,
    gameTypes: rows.gameTypes,
    generations: rows.generations,
    platforms: rows.platforms,
    regions: rows.regions,
    versionGroups: rows.versionGroups,
  };
  const versions = buildGameCards({ ...cardRows, games: rows.versions });
  const version =
    versions.find((card) => card.game.slug === versionSlug) ?? versions[0];

  if (!version) {
    return null;
  }

  const generationById = byId(rows.generations);
  const versionGroupById = byId(rows.versionGroups);
  const relatedGames = buildGameCards({ ...cardRows, games: rows.relatedGames })
    .sort(sortRelatedGames(rows.versions, generationById, versionGroupById))
    .slice(0, RELATED_GAME_LIMIT);
  const pokedexes = buildPokedexSummaries({
    ...rows,
    pokedexes: sortVersionGroupPokedexes(rows.pokedexes, versionGroupById),
  });
  /* The base game's own largest Pokédex: not an expansion's, not the National one. */
  const availablePokemonCount = Math.max(
    0,
    ...pokedexes
      .filter(({ pokedex }) => {
        return (
          pokedex.version_group_id === rows.versionGroup.id &&
          pokedex.pokedex_kind !== "national"
        );
      })
      .map((pokedex) => pokedex.pokemonCount),
  );

  return {
    availablePokemonCount,
    pokedexes,
    relatedGames,
    version,
    versionGroup: rows.versionGroup,
    versions,
  };
};
