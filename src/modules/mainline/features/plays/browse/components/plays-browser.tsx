"use client";

import { usePathname, useRouter } from "next/navigation";
import { useEffect, useMemo, useState } from "react";

import { PlayStatusGroup } from "@/modules/mainline/features/plays/browse/components/play-status-group";
import { PlaysToolbar } from "@/modules/mainline/features/plays/browse/components/plays-toolbar";
import { formatPlayCount } from "@/modules/mainline/features/plays/browse/play-browse-display";
import {
  defaultPlayBrowseFilters,
  filterAndSortPlays,
  getInitialPlayBrowseFilters,
  getPlayBrowseOptions,
  getPlayBrowseUrlSearchParams,
  groupPlaysByStatus,
  hasActivePlayBrowseFilters,
  type PlayBrowseFilters,
  type PlayBrowseParams,
} from "@/modules/mainline/features/plays/browse/play-browse-model";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { cn } from "@/shared/utils/cn";

type PlaysBrowserProps = {
  params?: PlayBrowseParams;
  plays: PlayBrowseItem[];
};

const URL_UPDATE_DELAY_MS = 250;

export const PlaysBrowser = ({ params, plays }: PlaysBrowserProps) => {
  const pathname = usePathname();
  const router = useRouter();
  const options = useMemo(() => getPlayBrowseOptions(plays), [plays]);
  const initialFilters = useMemo(
    () => getInitialPlayBrowseFilters(params, options),
    [options, params],
  );
  const [filters, setFilters] = useState(initialFilters);
  const [appliedFilters, setAppliedFilters] = useState(initialFilters);
  const groups = useMemo(
    () => groupPlaysByStatus(filterAndSortPlays(plays, appliedFilters)),
    [appliedFilters, plays],
  );
  const shownCount = groups.reduce(
    (count, group) => count + group.plays.length,
    0,
  );
  /* Counted before the URL catches up, for the phone sheet's button. */
  const matchingCount = useMemo(
    () => filterAndSortPlays(plays, filters).length,
    [filters, plays],
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
    <div className="flex flex-col">
      <PlaysToolbar
        filters={filters}
        games={options.games}
        generations={options.generations}
        matchingCount={matchingCount}
        onGameChange={(game) => {
          updateFilter("game", game);
        }}
        onGenerationChange={(generation) => {
          updateFilter("generation", generation);
        }}
        onQueryChange={(query) => {
          updateFilter("query", query);
        }}
        onSortChange={(sort) => {
          updateFilter("sort", sort);
        }}
      />

      <div
        className={cn(
          "mt-3 flex min-h-9 items-center justify-between gap-3 px-1",
          !hasActiveFilters && "sr-only",
        )}
      >
        <p className="text-ink-2 text-14 font-semibold" aria-live="polite">
          {hasActiveFilters
            ? `Showing ${shownCount} of ${formatPlayCount(plays.length)}`
            : `Showing all ${formatPlayCount(plays.length)}`}
        </p>
        {/* With no matches, the empty state below carries the recovery. */}
        {hasActiveFilters && shownCount ? (
          <ClearFiltersButton onClick={clearFilters} />
        ) : null}
      </div>

      {groups.length ? (
        <div className="mt-6 grid gap-8 sm:mt-8">
          {groups.map((group) => (
            <PlayStatusGroup key={group.id} group={group} />
          ))}
        </div>
      ) : (
        <EmptyState
          headingLevel="h2"
          className="mt-5"
          title="No Plays found"
          description="Try another search, game or generation."
          action={
            <ClearFiltersButton variant="outline" onClick={clearFilters} />
          }
        />
      )}
    </div>
  );
};
