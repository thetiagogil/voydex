"use client";

import { useState } from "react";

import { appRoutes } from "@/config/routes";
import type {
  StatsFriend,
  StatsModel,
} from "@/modules/mainline/features/stats/data/stats-model";
import { StatsHeroSection } from "@/modules/mainline/features/stats/sections/stats-hero-section";
import { StatsRegionsSection } from "@/modules/mainline/features/stats/sections/stats-regions-section";
import { StatsStyleSection } from "@/modules/mainline/features/stats/sections/stats-style-section";
import { StatsTimeSection } from "@/modules/mainline/features/stats/sections/stats-time-section";
import { TrainerSpeciesSheet } from "@/modules/mainline/shared/components/trainer-species-sheet";
import {
  getTrainerFamilyEntries,
  type TrainerPokemonEntry,
} from "@/modules/mainline/shared/data/trainer-pokemon-model";

/*
 * Statistics with a few Plays: the band, your team style, the regions and,
 * last, where your time went (most Plays have none recorded). An old friend
 * opens its family's sheet here, and each of them its own, with a way on to
 * the Collection.
 */
export const StatsBoard = ({ stats }: { stats: StatsModel }) => {
  const [openEntry, setOpenEntry] = useState<TrainerPokemonEntry | null>(null);
  /* The open friend's whole family, so the sheet can move between them. */
  const [openFamily, setOpenFamily] = useState<TrainerPokemonEntry[]>([]);
  /* Set while the sheet shows the friend's whole family, not one species. */
  const [familyTitle, setFamilyTitle] = useState<string | undefined>();
  const openFriend = (friend: StatsFriend) => {
    setOpenEntry(friend.entry);
    setOpenFamily(friend.family);
    setFamilyTitle(friend.family.length > 1 ? friend.name : undefined);
  };
  const openSpecies = (entry: TrainerPokemonEntry) => {
    setOpenEntry(entry);
    setFamilyTitle(undefined);
  };

  return (
    <div className="flex flex-col gap-8 sm:gap-10">
      <StatsHeroSection onOpenFriend={openFriend} stats={stats} />
      <StatsStyleSection onOpenFriend={openFriend} stats={stats} />
      <StatsRegionsSection stats={stats} />
      <StatsTimeSection stats={stats} />
      <TrainerSpeciesSheet
        collectionHref={
          openEntry
            ? appRoutes.mainlineCollectionSpecies(openEntry.speciesSlug)
            : undefined
        }
        entry={openEntry}
        family={openEntry ? getTrainerFamilyEntries(openFamily, openEntry) : []}
        familyTitle={familyTitle}
        onOpenSpecies={openSpecies}
        onOpenChange={(open) => {
          if (!open) setOpenEntry(null);
        }}
      />
    </div>
  );
};
