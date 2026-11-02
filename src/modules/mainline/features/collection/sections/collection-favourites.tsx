"use client";

import Link from "next/link";
import { useState } from "react";

import type { FavouritePokemon } from "@/modules/mainline/features/collection/data/favourite-pokemon-model";
import {
  getTrainerFamilyEntries,
  type TrainerPokemonEntry,
} from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { TrainerSpeciesSheet } from "@/modules/mainline/shared/components/trainer-species-sheet";
import { formatNationalNumber } from "@/modules/mainline/shared/utils/trainer-pokemon-display";
import { PokemonCard } from "@/modules/reference/features/pokemon/components/pokemon-card";
import { PokemonSticker } from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { CountMark } from "@/shared/components/corner-bubble";

type CollectionFavouritesProps = {
  /* The Collection's Pokémon, for the sheet's evolution family. */
  entries: TrainerPokemonEntry[];
  favourites: FavouritePokemon[];
};

const countPlays = (count: number) =>
  `${count} ${count === 1 ? "Play" : "Plays"}`;

/*
 * Collection's Favourites: every Pokémon you hearted in the Codex, newest
 * first. One that has joined your teams is yours, so it wears the sticker
 * with its Play count and opens its sheet, as in Pokémon; one that hasn't
 * yet is a plain card opening its Codex entry.
 */
export const CollectionFavourites = ({
  entries,
  favourites,
}: CollectionFavouritesProps) => {
  const [openSpeciesId, setOpenSpeciesId] = useState<number | null>(null);
  const openEntry =
    entries.find((entry) => entry.speciesId === openSpeciesId) ?? null;

  return (
    <section aria-label="Your favourites">
      <ul className="grid grid-cols-2 gap-x-3 gap-y-4 min-[480px]:grid-cols-3 sm:grid-cols-[repeat(auto-fill,minmax(150px,1fr))] sm:gap-x-4 sm:gap-y-5">
        {favourites.map((favourite) => {
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
                  shiny={owned.shiny}
                  mark={
                    <CountMark
                      count={owned.playIds.length}
                      label={countPlays(owned.playIds.length)}
                    />
                  }
                  types={favourite.types}
                  selected={openSpeciesId === owned.speciesId}
                  detail="See its Plays"
                  onClick={() => setOpenSpeciesId(owned.speciesId)}
                />
              ) : (
                <Link
                  href={favourite.codexHref}
                  className="block h-full min-w-0 rounded-xl"
                >
                  <PokemonCard
                    state="plain"
                    imageAlt=""
                    imageUrl={favourite.imageUrl}
                    name={favourite.name}
                    number={number}
                    subtitle="Not on a team yet"
                    types={favourite.types}
                  />
                  <span className="sr-only">, open in the Codex</span>
                </Link>
              )}
            </li>
          );
        })}
      </ul>

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
