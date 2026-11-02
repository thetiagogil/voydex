"use client";

import { useMemo, useState, type ReactNode } from "react";

import { CollectionFilterBand } from "@/modules/mainline/features/collection/components/collection-filter-band";
import {
  countActiveFavouriteFilters,
  countFavouriteKinds,
  defaultFavouriteFilters,
  favouriteKindLabels,
  favouriteSortLabels,
  filterAndSortFavourites,
  hasActiveFavouriteFilters,
  type FavouriteFilters,
  type FavouriteKind,
  type FavouriteSort,
} from "@/modules/mainline/features/collection/data/favourite-pokemon-browse-model";
import type { FavouritePokemon } from "@/modules/mainline/features/collection/data/favourite-pokemon-model";
import {
  getTrainerFamilyEntries,
  type TrainerPokemonEntry,
  type TrainerPokemonType,
} from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { TrainerSpeciesSheet } from "@/modules/mainline/shared/components/trainer-species-sheet";
import { formatNationalNumber } from "@/modules/mainline/shared/utils/trainer-pokemon-display";
import { PokemonCardLink } from "@/modules/reference/features/pokemon/components/pokemon-card-link";
import { PokemonSticker } from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import type { SpeciesGeneration } from "@/modules/reference/features/pokemon/data/species-generations";
import { CountMark } from "@/shared/components/corner-bubble";
import { EmptyState } from "@/shared/components/empty-state";
import { ResetListButton } from "@/shared/components/reset-list-button";

type CollectionFavouritesProps = {
  /* The Collection's Pokémon, for the sheet's evolution family. */
  entries: TrainerPokemonEntry[];
  favourites: FavouritePokemon[];
  /* Every generation, for the Generation filter. */
  generations: SpeciesGeneration[];
  /* The page's head, which opens the band above the toolbar. */
  head: ReactNode;
  types: TrainerPokemonType[];
  /* The views switch, under the head. */
  viewSwitch: ReactNode;
};

const kindOrder: FavouriteKind[] = ["all", "owned", "waiting"];
const sortOrder: FavouriteSort[] = ["recent", "dex", "used"];

const countPlays = (count: number) =>
  `${count} ${count === 1 ? "Play" : "Plays"}`;

/*
 * Collection's Favourites: every Pokémon you hearted in the Codex, newest
 * first, under the same toolbar as the Pokémon view. One that has joined
 * your teams is yours, so it wears the sticker with its Play count and opens
 * its sheet; one that hasn't yet is a plain card opening its Codex entry.
 */
export const CollectionFavourites = ({
  entries,
  favourites,
  generations,
  head,
  types,
  viewSwitch,
}: CollectionFavouritesProps) => {
  const [filters, setFilters] = useState<FavouriteFilters>(
    defaultFavouriteFilters,
  );
  /*
   * The sheet is the species'; the hearted form that opened it is the one
   * picked (two forms of one species are two favourites).
   */
  const [open, setOpen] = useState<{
    formId: number | null;
    speciesId: number;
  } | null>(null);
  const counts = useMemo(() => countFavouriteKinds(favourites), [favourites]);
  const shown = useMemo(
    () => filterAndSortFavourites(favourites, filters, generations),
    [favourites, filters, generations],
  );
  const openEntry =
    entries.find((entry) => entry.speciesId === open?.speciesId) ?? null;
  const resetList = () => {
    setFilters(defaultFavouriteFilters);
  };

  return (
    <>
      <CollectionFilterBand
        activeCount={countActiveFavouriteFilters(filters)}
        defaults={defaultFavouriteFilters}
        filters={filters}
        generations={generations}
        hasFilters={hasActiveFavouriteFilters(filters)}
        head={head}
        idPrefix="favourites"
        kinds={kindOrder.map((kind) => ({
          count: counts[kind],
          label: favouriteKindLabels[kind],
          value: kind,
        }))}
        listName="your favourites"
        noun="Pokémon"
        onChange={(next) => setFilters((current) => ({ ...current, ...next }))}
        onReset={resetList}
        shownCount={shown.length}
        sorts={sortOrder.map((sort) => ({
          label: favouriteSortLabels[sort],
          value: sort,
        }))}
        totalCount={favourites.length}
        types={types}
        viewSwitch={viewSwitch}
      />

      <section aria-label="Your favourites" className="flex flex-col gap-4">
        {shown.length ? (
          <ul className="grid grid-cols-2 gap-x-3 gap-y-4 min-[480px]:grid-cols-3 sm:grid-cols-[repeat(auto-fill,minmax(150px,1fr))] sm:gap-x-4 sm:gap-y-5">
            {shown.map((favourite) => {
              const number = formatNationalNumber(favourite.nationalNumber);
              const { owned } = favourite;

              return (
                <li key={favourite.formId} className="min-w-0">
                  {owned ? (
                    <PokemonSticker
                      variant="compact"
                      className="w-full"
                      imageUrl={favourite.imageUrl}
                      name={favourite.name}
                      number={number}
                      mark={
                        <CountMark
                          count={owned.playIds.length}
                          label={countPlays(owned.playIds.length)}
                        />
                      }
                      types={favourite.types}
                      selected={open?.formId === favourite.formId}
                      detail="See its Plays"
                      onClick={() =>
                        setOpen({
                          formId: favourite.formId,
                          speciesId: owned.speciesId,
                        })
                      }
                    />
                  ) : (
                    <PokemonCardLink
                      detail="open in the Codex"
                      href={favourite.codexHref}
                      imageUrl={favourite.imageUrl}
                      name={favourite.name}
                      number={number}
                      subtitle="Not on a team yet"
                      types={favourite.types}
                    />
                  )}
                </li>
              );
            })}
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
          onOpenSpecies={(relative) =>
            setOpen({ formId: null, speciesId: relative.speciesId })
          }
          onOpenChange={(isOpen) => {
            if (!isOpen) setOpen(null);
          }}
        />
      </section>
    </>
  );
};
