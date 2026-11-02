"use client";

import { useMemo, useState, type ReactNode } from "react";

import { CollectionViewSwitch } from "@/modules/mainline/features/collection/components/collection-view-switch";
import { PokemonTypeFilter } from "@/modules/reference/features/pokemon/components/pokemon-type-filter";
import {
  collectionKindLabels,
  collectionSortLabels,
  countActiveCollectionFilters,
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
import type { SpeciesGeneration } from "@/modules/reference/features/pokemon/data/species-generations";
import { CountMark } from "@/shared/components/corner-bubble";
import { ResetListButton } from "@/shared/components/reset-list-button";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import {
  FoldHead,
  FoldPanel,
  FoldToggle,
  useFold,
} from "@/shared/components/fold";
import { EmptyState } from "@/shared/components/empty-state";
import { PageBand } from "@/shared/components/page-band";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import {
  FilterSheetRow,
  FilterToolbar,
} from "@/shared/components/filter-toolbar";

type CollectionBrowserProps = {
  entries: TrainerPokemonEntry[];
  /* Played games, for the Games switch's count. */
  gameCount: number;
  /* Every generation, for the Generation filter. */
  generations: SpeciesGeneration[];
  /* The page's head, which opens the band above the toolbar. */
  head: ReactNode;
  /* Opens on one species' sheet, as Statistics' old friends link here. */
  initialSpeciesSlug?: string | null;
  types: TrainerPokemonType[];
};

const kindOrder: CollectionKind[] = ["all", "team", "many", "shiny"];
const sortOrder: CollectionSort[] = ["used", "dex", "recent"];

const countPlays = (count: number) =>
  `${count} ${count === 1 ? "Play" : "Plays"}`;

/*
 * The Collection's Pokémon: the views switch, a toolbar (search, what to
 * show, the generation, the order), the type dots, and every species as a
 * sticker with its Play count on a corner, opening its sheet.
 */
export const CollectionBrowser = ({
  entries,
  gameCount,
  generations,
  head,
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
    () => filterAndSortCollection(entries, filters, generations),
    [entries, filters, generations],
  );
  const openEntry =
    entries.find((entry) => entry.speciesId === openSpeciesId) ?? null;
  const hasFilters = hasActiveCollectionFilters(filters);
  const fold = useFold({ defaultOpen: hasFilters });
  const update = (next: Partial<CollectionFilters>) => {
    setFilters((current) => ({ ...current, ...next }));
  };
  const isReordered = filters.sort !== defaultCollectionFilters.sort;
  const resetList = () => {
    setFilters(defaultCollectionFilters);
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
        <CollectionViewSwitch
          gameCount={gameCount}
          pokemonCount={entries.length}
          value="pokemon"
        />
        <FoldPanel id={fold.panelId} open={fold.open}>
          <FilterToolbar
            ariaLabel="Filter your Collection"
            className="mt-5"
            activeCount={countActiveCollectionFilters(filters)}
            resultLabel={`Show ${shown.length} Pokémon`}
            search={
              <SearchControl
                id="collection-search"
                ariaLabel="Search your Pokémon"
                placeholder="Search your Pokémon"
                value={filters.query}
                onValueChange={(query) => update({ query })}
              />
            }
            controls={(placement) => {
              const generation = (
                <SelectControl
                  id={
                    placement === "line"
                      ? "collection-generation"
                      : "collection-sheet-generation"
                  }
                  ariaLabel="Filter by generation"
                  resetValue={defaultCollectionFilters.generation}
                  prefix={placement === "line" ? "Generation" : undefined}
                  value={filters.generation}
                  variant="ghost"
                  placeholder="All generations"
                  onValueChange={(generation) => update({ generation })}
                  options={[
                    { label: "All generations", value: "" },
                    ...generations.map((each) => ({
                      label: each.name,
                      value: String(each.id),
                    })),
                  ]}
                />
              );
              const sort = (
                <SelectControl
                  id={
                    placement === "line"
                      ? "collection-sort"
                      : "collection-sheet-sort"
                  }
                  ariaLabel="Sort your Collection"
                  resetValue={defaultCollectionFilters.sort}
                  prefix={placement === "line" ? "Sort" : undefined}
                  value={filters.sort}
                  variant="ghost"
                  placeholder={
                    collectionSortLabels[defaultCollectionFilters.sort]
                  }
                  onValueChange={(sort) =>
                    update({ sort: sort as CollectionSort })
                  }
                  options={sortOrder.map((sort) => ({
                    label: collectionSortLabels[sort],
                    value: sort,
                  }))}
                />
              );

              return placement === "line" ? (
                <>
                  {generation}
                  {sort}
                </>
              ) : (
                <>
                  <FilterSheetRow
                    htmlFor="collection-sheet-generation"
                    label="Generation"
                  >
                    {generation}
                  </FilterSheetRow>
                  <FilterSheetRow htmlFor="collection-sheet-sort" label="Sort">
                    {sort}
                  </FilterSheetRow>
                </>
              );
            }}
            filters={(placement) => {
              const kind = (
                <SegmentedControl
                  variant="segment"
                  selectedTone="soft"
                  ariaLabel="Show"
                  value={filters.kind}
                  onValueChange={(kind) => update({ kind })}
                  options={kindOrder.map((kind) => ({
                    count: counts[kind],
                    label: collectionKindLabels[kind],
                    value: kind,
                  }))}
                />
              );

              return placement === "line" ? (
                kind
              ) : (
                <FilterSheetRow label="Show">{kind}</FilterSheetRow>
              );
            }}
            row={(placement) => {
              const type = (
                <PokemonTypeFilter
                  types={types}
                  value={filters.type}
                  onValueChange={(type) => update({ type })}
                />
              );

              return placement === "line" ? (
                type
              ) : (
                <FilterSheetRow label="Type">{type}</FilterSheetRow>
              );
            }}
          />
          <FilterResultsLine
            className="mt-3"
            hasActiveFilters={hasFilters}
            isReordered={isReordered}
            noun="Pokémon"
            onReset={resetList}
            shownCount={shown.length}
            totalCount={entries.length}
          />
        </FoldPanel>
      </PageBand>

      <section aria-label="Your Pokémon" className="flex flex-col gap-4">
        {shown.length ? (
          <ul className="grid grid-cols-2 gap-x-3 gap-y-4 min-[480px]:grid-cols-3 sm:grid-cols-[repeat(auto-fill,minmax(150px,1fr))] sm:gap-x-4 sm:gap-y-5">
            {shown.map((entry) => (
              <li key={entry.speciesId} className="min-w-0">
                <PokemonSticker
                  variant="compact"
                  className="w-full"
                  imageUrl={entry.imageUrl}
                  name={entry.name}
                  number={formatNationalNumber(entry.nationalNumber)}
                  shiny={entry.shiny}
                  mark={
                    <CountMark
                      count={entry.playIds.length}
                      label={countPlays(entry.playIds.length)}
                    />
                  }
                  types={entry.types}
                  selected={openSpeciesId === entry.speciesId}
                  detail="See its Plays"
                  onClick={() => setOpenSpeciesId(entry.speciesId)}
                />
              </li>
            ))}
          </ul>
        ) : (
          <EmptyState
            variant="bare"
            title="Nothing matches."
            action={<ResetListButton onClick={resetList} />}
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
    </>
  );
};
