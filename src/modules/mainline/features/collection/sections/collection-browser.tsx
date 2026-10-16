"use client";

import { useMemo, useState } from "react";

import { PokemonTypeFilter } from "@/modules/reference/features/pokemon/components/pokemon-type-filter";
import {
  collectionKindLabels,
  collectionSortLabels,
  countCollectionKinds,
  defaultCollectionFilters,
  filterAndSortCollection,
  hasActiveCollectionFilters,
  type CollectionFilters,
  type CollectionKind,
  type CollectionSort,
} from "@/modules/mainline/features/collection/data/collection-browse-model";
import {
  getTrainerFamilyEntries,
  type TrainerPokemonEntry,
  type TrainerPokemonType,
} from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { TrainerSpeciesSheet } from "@/modules/mainline/shared/components/trainer-species-sheet";
import { formatNationalNumber } from "@/modules/mainline/shared/utils/trainer-pokemon-display";
import { PokemonSticker } from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import { EmptyState } from "@/shared/components/empty-state";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { Toolbar } from "@/shared/components/toolbar";

type CollectionBrowserProps = {
  entries: TrainerPokemonEntry[];
  /* Opens on one species' sheet, as Statistics' old friends link here. */
  initialSpeciesSlug?: string | null;
  types: TrainerPokemonType[];
};

const kindOrder: CollectionKind[] = ["all", "team", "many", "shiny"];
const sortOrder: CollectionSort[] = ["dex", "used", "recent"];

const getCountLine = (entry: TrainerPokemonEntry) => {
  const plays = entry.playIds.length;
  const playLine = `${plays} ${plays === 1 ? "Play" : "Plays"}`;

  return entry.members.length > plays
    ? `${playLine} · ${entry.members.length} caught`
    : playLine;
};

/*
 * The Collection's list: a toolbar (search, what to show, the order), the
 * type dots, and every species as a sticker that opens its sheet.
 */
export const CollectionBrowser = ({
  entries,
  initialSpeciesSlug,
  types,
}: CollectionBrowserProps) => {
  const [filters, setFilters] = useState<CollectionFilters>(
    defaultCollectionFilters,
  );
  const [openSpeciesId, setOpenSpeciesId] = useState<number | null>(
    () =>
      entries.find((entry) => entry.speciesSlug === initialSpeciesSlug)
        ?.speciesId ?? null,
  );
  const counts = useMemo(() => countCollectionKinds(entries), [entries]);
  const shown = useMemo(
    () => filterAndSortCollection(entries, filters),
    [entries, filters],
  );
  const openEntry =
    entries.find((entry) => entry.speciesId === openSpeciesId) ?? null;
  const hasFilters = hasActiveCollectionFilters(filters);
  const update = (next: Partial<CollectionFilters>) => {
    setFilters((current) => ({ ...current, ...next }));
  };
  const clearFilters = () => {
    setFilters((current) => ({
      ...defaultCollectionFilters,
      sort: current.sort,
    }));
  };

  return (
    <section aria-label="Your Pokémon" className="flex flex-col gap-4">
      <Toolbar
        aria-label="Filter your Collection"
        search={
          <SearchControl
            id="collection-search"
            ariaLabel="Search your Pokémon"
            placeholder="Search your Pokémon"
            value={filters.query}
            onValueChange={(query) => update({ query })}
          />
        }
        trailing={
          <>
            <SegmentedControl
              ariaLabel="Show"
              value={filters.kind}
              onValueChange={(kind) => update({ kind })}
              options={kindOrder.map((kind) => ({
                count: counts[kind],
                label: collectionKindLabels[kind],
                value: kind,
              }))}
            />
            <SelectControl
              id="collection-sort"
              ariaLabel="Sort your Collection"
              prefix="Sort"
              value={filters.sort}
              variant="ghost"
              placeholder={collectionSortLabels.dex}
              onValueChange={(sort) => update({ sort: sort as CollectionSort })}
              options={sortOrder.map((sort) => ({
                label: collectionSortLabels[sort],
                value: sort,
              }))}
            />
          </>
        }
      />

      <PokemonTypeFilter
        types={types}
        value={filters.type}
        onValueChange={(type) => update({ type })}
      />

      <FilterResultsLine
        hasActiveFilters={hasFilters}
        noun="Pokémon"
        onClearFilters={clearFilters}
        shownCount={shown.length}
        totalCount={entries.length}
      />

      {shown.length ? (
        <ul className="grid grid-cols-2 gap-x-3 gap-y-4 min-[480px]:grid-cols-3 sm:grid-cols-[repeat(auto-fill,minmax(150px,1fr))] sm:gap-x-4 sm:gap-y-5">
          {shown.map((entry) => (
            <li key={entry.speciesId} className="min-w-0">
              <PokemonSticker
                variant="compact"
                className="w-full"
                imageUrl={entry.imageUrl}
                name={entry.name}
                slotLabel={formatNationalNumber(entry.nationalNumber)}
                shiny={entry.shiny}
                subtitle={getCountLine(entry)}
                types={entry.types}
                selected={openSpeciesId === entry.speciesId}
                label={`${entry.name}, ${getCountLine(entry)}${entry.shiny ? ", shiny recorded" : ""}. See its Plays`}
                onClick={() => setOpenSpeciesId(entry.speciesId)}
              />
            </li>
          ))}
        </ul>
      ) : (
        <EmptyState
          variant="bare"
          title="Nothing matches."
          action={
            <ClearFiltersButton variant="outline" onClick={clearFilters} />
          }
        />
      )}

      <TrainerSpeciesSheet
        entry={openEntry}
        family={openEntry ? getTrainerFamilyEntries(entries, openEntry) : []}
        onOpenSpecies={(relative) => setOpenSpeciesId(relative.speciesId)}
        onOpenChange={(open) => {
          if (!open) setOpenSpeciesId(null);
        }}
      />
    </section>
  );
};
