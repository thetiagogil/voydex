"use client";

import { usePathname } from "next/navigation";
import { useEffect, useMemo, useState, type ReactNode } from "react";

import { PlayCard } from "@/modules/mainline/features/plays/browse/components/play-card";
import { PlayGridCard } from "@/modules/mainline/features/plays/browse/components/play-grid-card";
import { PlaysToolbar } from "@/modules/mainline/features/plays/browse/components/plays-toolbar";
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
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import { ResetListButton } from "@/shared/components/reset-list-button";
import { EmptyState } from "@/shared/components/empty-state";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import {
  FoldHead,
  FoldPanel,
  FoldToggle,
  useFold,
} from "@/shared/components/fold";
import { PageBand } from "@/shared/components/page-band";

type PlaysBrowserProps = {
  /* The page's head, which opens the band above the toolbar. */
  head: ReactNode;
  params?: PlayBrowseParams;
  plays: PlayBrowseItem[];
};

const URL_UPDATE_DELAY_MS = 250;

/*
 * The library: the band with the page's head and the toolbar, then the
 * results line and the Plays as one list.
 */
export const PlaysBrowser = ({ head, params, plays }: PlaysBrowserProps) => {
  const pathname = usePathname();
  const options = useMemo(() => getPlayBrowseOptions(plays), [plays]);
  const initialFilters = useMemo(
    () => getInitialPlayBrowseFilters(params, options),
    [options, params],
  );
  const [filters, setFilters] = useState(initialFilters);
  /* Filtering happens on the device, so the list follows every pick at once. */
  const shownPlays = useMemo(
    () => filterAndSortPlays(plays, filters),
    [filters, plays],
  );
  const hasActiveFilters = hasActivePlayBrowseFilters(filters);
  const fold = useFold({ defaultOpen: hasActiveFilters });

  /* The address follows a moment later, without asking the server. */
  useEffect(() => {
    const updateTimer = window.setTimeout(() => {
      const query = getPlayBrowseUrlSearchParams(filters).toString();

      window.history.replaceState(
        null,
        "",
        query ? `${pathname}?${query}` : pathname,
      );
    }, URL_UPDATE_DELAY_MS);

    return () => {
      window.clearTimeout(updateTimer);
    };
  }, [filters, pathname]);

  const updateFilter = <FilterKey extends keyof PlayBrowseFilters>(
    key: FilterKey,
    value: PlayBrowseFilters[FilterKey],
  ) => {
    setFilters((currentFilters) => ({
      ...currentFilters,
      [key]: value,
    }));
  };

  const isReordered = filters.sort !== defaultPlayBrowseFilters.sort;

  /* The display is how you look at the list, not a filter: it stays. */
  const resetList = () => {
    setFilters((currentFilters) => ({
      ...defaultPlayBrowseFilters,
      display: currentFilters.display,
    }));
  };

  return (
    <>
      <PageBand>
        <FoldHead
          toggle={
            <FoldToggle
              controls={fold.panelId}
              open={fold.open}
              onOpenChange={fold.setOpen}
            />
          }
        >
          {head}
        </FoldHead>
        <FoldPanel id={fold.panelId} open={fold.open}>
          <PlaysToolbar
            filters={filters}
            games={options.games}
            generations={options.generations}
            statuses={options.statuses}
            tags={options.tags}
            matchingCount={shownPlays.length}
            onDisplayChange={(display) => {
              updateFilter("display", display);
            }}
            onGameChange={(game) => {
              updateFilter("game", game);
            }}
            onGenerationChange={(generation) => {
              updateFilter("generation", generation);
            }}
            onQueryChange={(query) => {
              updateFilter("query", query);
            }}
            onStatusChange={(status) => {
              updateFilter("status", status);
            }}
            onTagChange={(tag) => {
              updateFilter("tag", tag);
            }}
            onSortChange={(sort) => {
              updateFilter("sort", sort);
            }}
          />
          <FilterResultsLine
            className="mt-3"
            hasActiveFilters={hasActiveFilters}
            isReordered={isReordered}
            noun="Plays"
            nounOne="Play"
            onReset={resetList}
            shownCount={shownPlays.length}
            totalCount={plays.length}
          />
        </FoldPanel>
      </PageBand>

      <section aria-label="Play library" className="flex flex-col">
        <h2 className="sr-only">Your Plays</h2>
        {shownPlays.length ? (
          <ul
            className={
              filters.display === "grid"
                ? "mt-6 grid grid-cols-2 gap-3 sm:mt-8 sm:grid-cols-[repeat(auto-fill,minmax(210px,1fr))]"
                : "mt-6 grid gap-3 sm:mt-8"
            }
          >
            {shownPlays.map((play) => {
              const Item = filters.display === "grid" ? PlayGridCard : PlayCard;

              return (
                <Item
                  key={play.play_id ?? `${play.game_id}-${play.created_at}`}
                  play={play}
                />
              );
            })}
          </ul>
        ) : (
          <EmptyState
            headingLevel="h2"
            className="mt-5"
            title="No Plays found"
            description="Try another search, game, generation, status or tag."
            action={<ResetListButton onClick={resetList} />}
          />
        )}
      </section>
    </>
  );
};
