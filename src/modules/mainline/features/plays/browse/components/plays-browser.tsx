"use client";

import { usePathname, useRouter } from "next/navigation";
import { useEffect, useMemo, useState } from "react";

import { PlaySummaryCard } from "@/modules/mainline/features/plays/browse/components/play-summary-card";
import { PlaysFilterForm } from "@/modules/mainline/features/plays/browse/components/plays-filter-form";
import {
  defaultPlayBrowseFilters,
  filterAndSortPlays,
  getInitialPlayBrowseFilters,
  getPlayBrowseOptions,
  getPlayBrowseUrlSearchParams,
  hasActivePlayBrowseFilters,
  type PlayBrowseFilters,
  type PlayBrowseParams,
} from "@/modules/mainline/features/plays/browse/play-browse-model";
import type { MainlinePlaysPageData } from "@/modules/mainline/features/plays/shared/types";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";

type PlaysBrowserProps = {
  data: MainlinePlaysPageData;
  params?: PlayBrowseParams;
};

const URL_UPDATE_DELAY_MS = 250;

export const PlaysBrowser = ({ data, params }: PlaysBrowserProps) => {
  const pathname = usePathname();
  const router = useRouter();
  const options = useMemo(() => getPlayBrowseOptions(data.plays), [data.plays]);
  const initialFilters = useMemo(
    () => getInitialPlayBrowseFilters(params, options),
    [options, params],
  );
  const [filters, setFilters] = useState(initialFilters);
  const [appliedFilters, setAppliedFilters] = useState(initialFilters);
  const filteredPlays = useMemo(
    () => filterAndSortPlays(data.plays, appliedFilters),
    [appliedFilters, data.plays],
  );
  const hasActiveFilters = hasActivePlayBrowseFilters(appliedFilters);

  useEffect(() => {
    const updateTimer = window.setTimeout(() => {
      setAppliedFilters(filters);

      const searchParams = getPlayBrowseUrlSearchParams(filters);
      const query = searchParams.toString();

      router.replace(query ? `${pathname}?${query}` : pathname, {
        scroll: false,
      });
    }, URL_UPDATE_DELAY_MS);

    return () => {
      window.clearTimeout(updateTimer);
    };
  }, [filters, pathname, router]);

  const updateFilter = <FilterKey extends keyof PlayBrowseFilters>(
    key: FilterKey,
    value: PlayBrowseFilters[FilterKey],
  ) => {
    setFilters((currentFilters) => ({
      ...currentFilters,
      [key]: value,
    }));
  };

  const clearFilters = () => {
    setFilters((currentFilters) => ({
      ...defaultPlayBrowseFilters,
      sort: currentFilters.sort,
    }));
  };

  return (
    <div className="flex flex-col gap-2.5">
      <PlaysFilterForm
        filters={filters}
        games={options.games}
        onGameChange={(game) => {
          updateFilter("game", game);
        }}
        onQueryChange={(query) => {
          updateFilter("query", query);
        }}
        onSortChange={(sort) => {
          updateFilter("sort", sort);
        }}
        onStatusChange={(status) => {
          updateFilter("status", status);
        }}
        statuses={options.statuses}
      />

      <div className="flex min-h-8 items-center justify-between gap-3 px-1">
        <p
          className="text-muted-foreground text-sm leading-6"
          aria-live="polite"
        >
          {hasActiveFilters
            ? `Showing ${filteredPlays.length} of ${data.plays.length} plays`
            : `Showing ${data.plays.length} plays`}
        </p>

        {hasActiveFilters ? (
          <ClearFiltersButton onClick={clearFilters} />
        ) : null}
      </div>

      {filteredPlays.length ? (
        <div className="divide-y">
          {filteredPlays.map((play, index) => (
            <PlaySummaryCard
              key={play.play_id ?? `${play.game_id}-${play.created_at}`}
              play={play}
              priority={index < 2}
            />
          ))}
        </div>
      ) : (
        <EmptyState
          title="No plays found"
          description="Try a different search, status, or game filter."
          action={
            <ClearFiltersButton variant="outline" onClick={clearFilters} />
          }
        />
      )}
    </div>
  );
};
