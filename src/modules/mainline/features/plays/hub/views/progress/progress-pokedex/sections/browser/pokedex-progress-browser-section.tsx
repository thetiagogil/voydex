"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";

import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BrowseFilterPanel } from "@/shared/components/browse-filter-panel";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";
import { Button } from "@/shared/components/ui/button";
import {
  ButtonGroup,
  ButtonGroupText,
} from "@/shared/components/ui/button-group";
import { useIsMobile } from "@/shared/hooks/use-mobile";
import { cn } from "@/shared/utils/cn";

import {
  filterPokedexEntries,
  getPokedexEntriesForBrowseScope,
  groupPokedexEntriesByNumberRange,
} from "../../data/pokedex-progress-model";
import type {
  MainlinePlayPokedexScope,
  PokedexInclusionFilter,
  PokedexProgressFilter,
  PokedexProgressState,
  PokedexUpdateMode,
  PokedexViewMode,
} from "../../types";
import { PokedexEntryScopeFilter } from "./pokedex-entry-scope-filter";
import { PokedexProgressEntrySection } from "./pokedex-progress-entry-section";

const INITIAL_VISIBLE_SECTION_COUNT = 1;

const progressOptions = [
  { label: "All progress", value: "all" },
  { label: "Missing", value: "missing" },
  { label: "Seen", value: "seen" },
  { label: "Caught", value: "caught" },
] as const;

const inclusionOptions = [
  { label: "All entries", value: "all" },
  { label: "Required", value: "required" },
  { label: "Optional", value: "optional" },
] as const;

const PokedexBrowserHeaderActions = ({
  onUpdateModeChange,
  onViewModeChange,
  updateMode,
  viewMode,
}: {
  onUpdateModeChange: (mode: PokedexUpdateMode) => void;
  onViewModeChange: (mode: PokedexViewMode) => void;
  updateMode: PokedexUpdateMode;
  viewMode: PokedexViewMode;
}) => {
  return (
    <div className="flex flex-wrap items-center gap-2">
      <ButtonGroup aria-label="Pokédex Card update mode">
        <ButtonGroupText className="text-xs whitespace-nowrap">
          Mark mode
        </ButtonGroupText>
        <Button
          type="button"
          aria-pressed={updateMode === "seen"}
          size="xs"
          variant="outline"
          onClick={() => onUpdateModeChange("seen")}
        >
          <AppIcon icon={appIcons.product.seen} aria-hidden />
          Seen
        </Button>
        <Button
          type="button"
          aria-pressed={updateMode === "caught"}
          size="xs"
          variant="outline"
          onClick={() => onUpdateModeChange("caught")}
        >
          <AppIcon icon={appIcons.product.caught} aria-hidden />
          Caught
        </Button>
      </ButtonGroup>

      <ButtonGroup aria-label="Pokédex display">
        <Button
          type="button"
          aria-label="Grid view"
          aria-pressed={viewMode === "grid"}
          size="xs"
          variant="outline"
          onClick={() => onViewModeChange("grid")}
        >
          <AppIcon icon={appIcons.views.display.grid} aria-hidden />
          Grid
        </Button>
        <Button
          type="button"
          aria-label="List view"
          aria-pressed={viewMode === "list"}
          size="xs"
          variant="outline"
          onClick={() => onViewModeChange("list")}
        >
          <AppIcon icon={appIcons.views.display.list} aria-hidden />
          List
        </Button>
      </ButtonGroup>
    </div>
  );
};

export const PokedexProgressBrowserSection = ({
  browseScopes,
  gameSlug,
  isSpeciesPending,
  onSpeciesBulkStateChange,
  onSpeciesStateChange,
  scope,
  stateBySpeciesId,
}: {
  browseScopes: MainlinePlayPokedexScope[];
  gameSlug: string;
  isSpeciesPending: (speciesId: number) => boolean;
  onSpeciesBulkStateChange: (
    speciesIds: number[],
    state: PokedexProgressState,
  ) => void;
  onSpeciesStateChange: (
    speciesId: number,
    state: PokedexProgressState,
  ) => void;
  scope: MainlinePlayPokedexScope;
  stateBySpeciesId: ReadonlyMap<number, PokedexProgressState>;
}) => {
  const isMobile = useIsMobile();
  const [query, setQuery] = useState("");
  const [progressFilter, setProgressFilter] =
    useState<PokedexProgressFilter>("all");
  const [inclusionFilter, setInclusionFilter] =
    useState<PokedexInclusionFilter>("all");
  const [browseScopeId, setBrowseScopeId] = useState("all");
  const [updateMode, setUpdateMode] = useState<PokedexUpdateMode>("caught");
  const [preferredView, setPreferredView] = useState<PokedexViewMode | null>(
    null,
  );
  const [visibleSectionCount, setVisibleSectionCount] = useState(
    INITIAL_VISIBLE_SECTION_COUNT,
  );
  const [supportsAutomaticLoading, setSupportsAutomaticLoading] =
    useState(true);
  const automaticLoadTriggerRef = useRef<HTMLDivElement | null>(null);
  const viewMode = preferredView ?? (isMobile ? "list" : "grid");
  const browseScope =
    browseScopes.find((candidate) => String(candidate.id) === browseScopeId) ??
    null;
  const scopedEntries = useMemo(
    () =>
      getPokedexEntriesForBrowseScope({
        browseScope,
        entries: scope.entries,
      }),
    [browseScope, scope.entries],
  );
  const filteredEntries = useMemo(
    () =>
      filterPokedexEntries({
        entries: scopedEntries,
        inclusionFilter,
        progressFilter,
        query,
        stateBySpeciesId,
      }),
    [inclusionFilter, progressFilter, query, scopedEntries, stateBySpeciesId],
  );
  const maxPokedexNumber = useMemo(
    () =>
      scope.entries.reduce(
        (currentMaximum, entry) =>
          Math.max(currentMaximum, entry.pokedexNumber),
        0,
      ),
    [scope.entries],
  );
  const filteredSections = useMemo(
    () =>
      groupPokedexEntriesByNumberRange({
        entries: filteredEntries,
        maxPokedexNumber,
      }),
    [filteredEntries, maxPokedexNumber],
  );
  const visibleSections = filteredSections.slice(0, visibleSectionCount);
  const visibleEntryCount = visibleSections.reduce(
    (count, section) => count + section.entries.length,
    0,
  );
  const hasMoreSections = visibleSections.length < filteredSections.length;
  const hasFilters =
    Boolean(query.trim()) ||
    browseScopeId !== "all" ||
    progressFilter !== "all" ||
    inclusionFilter !== "all";

  const resetVisibleSections = () => {
    setVisibleSectionCount(INITIAL_VISIBLE_SECTION_COUNT);
  };

  const loadNextSection = useCallback(() => {
    setVisibleSectionCount((currentCount) =>
      Math.min(currentCount + 1, filteredSections.length),
    );
  }, [filteredSections.length]);

  useEffect(() => {
    if (!hasMoreSections || typeof window === "undefined") {
      return;
    }

    if (!("IntersectionObserver" in window)) {
      const fallbackTimer = setTimeout(() => {
        setSupportsAutomaticLoading(false);
      }, 0);

      return () => {
        clearTimeout(fallbackTimer);
      };
    }

    const automaticLoadTrigger = automaticLoadTriggerRef.current;

    if (!automaticLoadTrigger) {
      return;
    }

    const observer = new IntersectionObserver(
      (entries) => {
        if (entries.some((entry) => entry.isIntersecting)) {
          loadNextSection();
        }
      },
      {
        rootMargin: "900px 0px",
        threshold: 0,
      },
    );

    observer.observe(automaticLoadTrigger);

    return () => {
      observer.disconnect();
    };
  }, [hasMoreSections, loadNextSection]);

  const resetFilters = () => {
    setQuery("");
    setBrowseScopeId("all");
    setProgressFilter("all");
    setInclusionFilter("all");
    resetVisibleSections();
  };

  return (
    <MainlinePlaySectionCard
      title="Pokédex entries"
      description={`Browse and update Pokémon in ${scope.name}.`}
      action={
        <PokedexBrowserHeaderActions
          updateMode={updateMode}
          viewMode={viewMode}
          onUpdateModeChange={setUpdateMode}
          onViewModeChange={setPreferredView}
        />
      }
      headerClassName="flex-col items-stretch gap-3 sm:flex-row sm:items-center"
      showSeparator
      contentClassName={cn(
        "grid gap-4 px-0 pt-3",
        viewMode === "list" ? "pb-0" : "pb-3",
      )}
    >
      <BrowseFilterPanel
        variant="bare"
        className={cn(
          "grid-cols-1 gap-2.5 px-3 sm:grid-cols-2 xl:gap-3",
          browseScopes.length > 0
            ? "xl:grid-cols-[minmax(8rem,1fr)_15rem_10rem_10rem]"
            : "xl:grid-cols-[minmax(8rem,1fr)_10rem_10rem]",
        )}
        onSubmit={(event) => {
          event.preventDefault();
        }}
      >
        <SearchControl
          ariaLabel={`Search ${scope.name}`}
          value={query}
          onValueChange={(value) => {
            setQuery(value);
            resetVisibleSections();
          }}
          placeholder="Search Pokémon or number"
          className="sm:col-span-2 xl:col-span-1"
        />
        {browseScopes.length > 0 ? (
          <PokedexEntryScopeFilter
            completionScopeName={scope.name}
            onValueChange={(value) => {
              setBrowseScopeId(value);
              resetVisibleSections();
            }}
            scopes={browseScopes}
            value={browseScopeId}
          />
        ) : null}
        <SelectControl
          ariaLabel="Filter Pokédex progress"
          className="w-full"
          onValueChange={(value) => {
            setProgressFilter(value as PokedexProgressFilter);
            resetVisibleSections();
          }}
          options={progressOptions}
          placeholder="All progress"
          value={progressFilter}
        />
        <SelectControl
          ariaLabel="Filter Pokédex completion requirement"
          className="w-full"
          onValueChange={(value) => {
            setInclusionFilter(value as PokedexInclusionFilter);
            resetVisibleSections();
          }}
          options={inclusionOptions}
          placeholder="All entries"
          value={inclusionFilter}
        />
      </BrowseFilterPanel>

      <div className="flex min-h-8 items-center justify-between gap-3 px-4">
        <p
          className="text-muted-foreground text-sm leading-6"
          aria-live="polite"
        >
          Showing {visibleEntryCount} of {filteredEntries.length} entries
        </p>

        {hasFilters ? <ClearFiltersButton onClick={resetFilters} /> : null}
      </div>

      {visibleSections.length ? (
        <>
          <div className="grid min-w-0">
            {visibleSections.map((section) => (
              <PokedexProgressEntrySection
                key={section.id}
                gameSlug={gameSlug}
                isSpeciesPending={isSpeciesPending}
                onBulkStateChange={onSpeciesBulkStateChange}
                onSpeciesStateChange={onSpeciesStateChange}
                section={section}
                stateBySpeciesId={stateBySpeciesId}
                updateMode={updateMode}
                viewMode={viewMode}
              />
            ))}
          </div>

          {hasMoreSections ? (
            supportsAutomaticLoading ? (
              <div ref={automaticLoadTriggerRef} className="h-px" aria-hidden />
            ) : (
              <div className="flex justify-center px-3 pt-1 pb-3">
                <Button
                  type="button"
                  variant="outline"
                  onClick={loadNextSection}
                >
                  Show next 60 Pokémon
                </Button>
              </div>
            )
          ) : null}
        </>
      ) : (
        <div className="px-3 pb-3">
          <EmptyState
            title="No matching Pokémon"
            description={`No entries in ${scope.name} match the current filters.`}
            action={
              hasFilters ? (
                <ClearFiltersButton variant="outline" onClick={resetFilters} />
              ) : undefined
            }
          />
        </div>
      )}
    </MainlinePlaySectionCard>
  );
};
