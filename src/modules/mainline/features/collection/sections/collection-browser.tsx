"use client";

import { useMemo, useState, type ReactNode } from "react";

import { CollectionFilterBand } from "@/modules/mainline/features/collection/components/collection-filter-band";
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
import { EmptyState } from "@/shared/components/empty-state";

type CollectionBrowserProps = {
  entries: TrainerPokemonEntry[];
  /* Every generation, for the Generation filter. */
  generations: SpeciesGeneration[];
  /* The page's head, which opens the band above the toolbar. */
  head: ReactNode;
  /* Opens on one species' sheet, as Statistics' old friends link here. */
  initialSpeciesSlug?: string | null;
  types: TrainerPokemonType[];
  /* The views switch, under the head. */
  viewSwitch: ReactNode;
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
  generations,
  head,
  initialSpeciesSlug,
  types,
  viewSwitch,
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
  const update = (next: Partial<CollectionFilters>) => {
    setFilters((current) => ({ ...current, ...next }));
  };
  const resetList = () => {
    setFilters(defaultCollectionFilters);
  };

  return (
    <>
      <CollectionFilterBand
        activeCount={countActiveCollectionFilters(filters)}
        defaults={defaultCollectionFilters}
        filters={filters}
        generations={generations}
        hasFilters={hasActiveCollectionFilters(filters)}
        head={head}
        idPrefix="collection"
        kinds={kindOrder.map((kind) => ({
          count: counts[kind],
          label: collectionKindLabels[kind],
          value: kind,
        }))}
        listName="your Pokémon"
        onChange={update}
        onReset={resetList}
        shownCount={shown.length}
        sorts={sortOrder.map((sort) => ({
          label: collectionSortLabels[sort],
          value: sort,
        }))}
        totalCount={entries.length}
        types={types}
        viewSwitch={viewSwitch}
      />

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
