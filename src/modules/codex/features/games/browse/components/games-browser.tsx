"use client";

import { useMemo, useState } from "react";

import { GamesFilterForm } from "@/modules/codex/features/games/browse/components/games-filter-form";
import { GamesGrid } from "@/modules/codex/features/games/browse/components/games-grid";
import { CodexBrowseMeta } from "@/modules/codex/shared/components/codex-browse-meta";
import { CodexEmptyState } from "@/modules/codex/shared/components/codex-empty-state";
import type {
  GameCard,
  GamesPageData,
  GamesPageFilters,
} from "@/modules/reference/types";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";

type GamesBrowserProps = {
  data: GamesPageData;
};

const defaultGamesPageFilters: GamesPageFilters = {
  gameType: "",
  generation: "",
  query: "",
  region: "",
};

const getSearchableGameText = (card: GameCard) => {
  return [
    card.game.name,
    card.game.slug,
    card.game.release_year,
    card.generation?.name,
    card.generation?.slug,
    card.region?.name,
    card.region?.slug,
    card.gameType?.name,
    card.gameType?.slug,
    card.versionGroup?.name,
    card.versionGroup?.slug,
  ]
    .filter(Boolean)
    .join(" ")
    .toLowerCase();
};

const filterGames = (games: GameCard[], filters: GamesPageFilters) => {
  const normalizedQuery = filters.query.trim().toLowerCase();

  return games.filter((card) => {
    if (filters.generation && card.generation?.slug !== filters.generation) {
      return false;
    }

    if (filters.region && card.region?.slug !== filters.region) {
      return false;
    }

    if (filters.gameType && card.gameType?.slug !== filters.gameType) {
      return false;
    }

    return (
      !normalizedQuery || getSearchableGameText(card).includes(normalizedQuery)
    );
  });
};

const hasActiveGamesFilters = (filters: GamesPageFilters) => {
  return (
    filters.query.trim() !== "" ||
    filters.generation !== "" ||
    filters.region !== "" ||
    filters.gameType !== ""
  );
};

export const GamesBrowser = ({ data }: GamesBrowserProps) => {
  const [filters, setFilters] = useState(data.filters);
  const filteredGames = useMemo(
    () => filterGames(data.games, filters),
    [data.games, filters],
  );
  const hasActiveFilters = hasActiveGamesFilters(filters);

  const updateFilter = <FilterKey extends keyof GamesPageFilters>(
    key: FilterKey,
    value: GamesPageFilters[FilterKey],
  ) => {
    setFilters((currentFilters) => ({
      ...currentFilters,
      [key]: value,
    }));
  };

  const clearFilters = () => {
    setFilters(defaultGamesPageFilters);
  };

  return (
    <>
      <GamesFilterForm
        filters={filters}
        gameTypes={data.gameTypes}
        generations={data.generations}
        onGameTypeChange={(gameType) => {
          updateFilter("gameType", gameType);
        }}
        onGenerationChange={(generation) => {
          updateFilter("generation", generation);
        }}
        onQueryChange={(query) => {
          updateFilter("query", query);
        }}
        onRegionChange={(region) => {
          updateFilter("region", region);
        }}
        regions={data.regions}
      />

      <div className="flex min-h-8 flex-row items-center justify-between gap-3">
        <CodexBrowseMeta>
          {hasActiveFilters
            ? `Showing ${filteredGames.length} of ${data.games.length} games`
            : `Showing ${data.games.length} games`}
        </CodexBrowseMeta>

        {hasActiveFilters ? (
          <ClearFiltersButton
            className="self-start sm:self-auto"
            onClick={clearFilters}
          />
        ) : null}
      </div>

      {filteredGames.length ? (
        <GamesGrid games={filteredGames} />
      ) : (
        <CodexEmptyState
          title="No games found"
          description="Try a different search, generation, region, or type filter."
          action={
            <ClearFiltersButton variant="outline" onClick={clearFilters} />
          }
        />
      )}
    </>
  );
};
