"use client";

import { useState } from "react";
import { usePathname, useRouter } from "next/navigation";
import { toast } from "sonner";

import { EmptyState } from "@/shared/components/empty-state";

import { CollectibleEntriesSection } from "./sections/entries/collectible-entries-section";
import { CollectiblesPageHead } from "./sections/head/collectibles-page-head";
import { CollectiblesHeroSection } from "./sections/hero/collectibles-hero-section";
import {
  updateCollectibleEntryProgress,
  updateCollectibleEntryProgressBulk,
} from "./server/collectibles-progress-action";
import type {
  CollectibleSort,
  MainlinePlayCollectibleEntry,
  MainlinePlayProgressCollectiblesData,
} from "./types";
import {
  describeCollectibleWhereabouts,
  getCollectibleAreaLevel,
  getCollectibleAreaSummaries,
  getCollectibleEntryState,
  getCollectibleLocations,
} from "./utils/collectibles-progress-model";

const buildInitialCollectibleState = (
  data: MainlinePlayProgressCollectiblesData,
) =>
  new Map(
    data.groups.flatMap((group) =>
      group.entries.map((entry) => [entry.id, entry.isCollected] as const),
    ),
  );

/*
 * Collectibles: the page head, the hero in gold and the checklist. Marking
 * is optimistic; a failed save puts the tokens back and says why. The sort
 * lives here, so the area summaries are worked out once for the hero and
 * the checklist, and it stays when you switch collectible.
 */
export const MainlinePlayProgressCollectibles = ({
  data,
  initialGroupSlug,
  playId,
}: {
  data: MainlinePlayProgressCollectiblesData;
  initialGroupSlug?: string;
  playId: string;
}) => {
  const pathname = usePathname();
  const router = useRouter();
  const initialGroup =
    data.groups.find((group) => group.slug === initialGroupSlug) ??
    data.groups[0];
  const [activeGroupId, setActiveGroupId] = useState(initialGroup?.id ?? null);
  const [stateByEntryId, setStateByEntryId] = useState(() =>
    buildInitialCollectibleState(data),
  );
  const [pendingEntryIds, setPendingEntryIds] = useState(
    () => new Set<number>(),
  );
  const [sort, setSort] = useState<CollectibleSort>("canonical");
  const activeGroup =
    data.groups.find((group) => group.id === activeGroupId) ??
    data.groups[0] ??
    null;

  if (!activeGroup) {
    return (
      <EmptyState
        headingLevel="h2"
        title="No collectibles available"
        description="This game doesn't have collectible tracking yet."
      />
    );
  }

  const selectGroup = (groupId: number) => {
    const group = data.groups.find((candidate) => candidate.id === groupId);

    if (!group) {
      return;
    }

    setActiveGroupId(group.id);

    const searchParams = new URLSearchParams(window.location.search);
    searchParams.set("collectible", group.slug);
    router.replace(`${pathname}?${searchParams.toString()}`, {
      scroll: false,
    });
  };

  /*
   * Shows the new states at once and saves them. On failure the previous
   * states come back. Reads no render state, so a toast's Undo can call it
   * after later renders.
   */
  const saveEntryStates = async ({
    entryIds,
    isCollected,
    previousStates,
  }: {
    entryIds: number[];
    isCollected: boolean;
    previousStates: ReadonlyMap<number, boolean>;
  }) => {
    setStateByEntryId((current) => {
      const next = new Map(current);

      for (const entryId of entryIds) {
        next.set(entryId, isCollected);
      }

      return next;
    });
    setPendingEntryIds((current) => {
      const next = new Set(current);

      for (const entryId of entryIds) {
        next.add(entryId);
      }

      return next;
    });

    try {
      const result =
        entryIds.length === 1
          ? await updateCollectibleEntryProgress({
              collectibleEntryId: entryIds[0],
              isCollected,
              playId,
            })
          : await updateCollectibleEntryProgressBulk({
              collectibleEntryIds: entryIds,
              isCollected,
              playId,
            });

      if (result.status === "error") {
        throw new Error(result.message);
      }

      return true;
    } catch (error) {
      setStateByEntryId((current) => {
        const next = new Map(current);

        for (const [entryId, previousState] of previousStates) {
          next.set(entryId, previousState);
        }

        return next;
      });
      toast.error(
        error instanceof Error
          ? error.message
          : "Unable to update collectible progress.",
      );

      return false;
    } finally {
      setPendingEntryIds((current) => {
        const next = new Set(current);

        for (const entryId of entryIds) {
          next.delete(entryId);
        }

        return next;
      });
    }
  };

  const toggleEntry = async (entry: MainlinePlayCollectibleEntry) => {
    if (pendingEntryIds.has(entry.id)) {
      return;
    }

    const previousState = getCollectibleEntryState(entry, stateByEntryId);
    const isCollected = !previousState;
    const isSaved = await saveEntryStates({
      entryIds: [entry.id],
      isCollected,
      previousStates: new Map([[entry.id, previousState]]),
    });

    if (isSaved) {
      toast.success(
        isCollected ? `${entry.name} found` : `${entry.name} unmarked`,
        {
          action: {
            label: "Undo",
            onClick: () => {
              void saveEntryStates({
                entryIds: [entry.id],
                isCollected: previousState,
                previousStates: new Map([[entry.id, isCollected]]),
              });
            },
          },
        },
      );
    }
  };

  const updateAreaEntries = async (
    label: string,
    entries: MainlinePlayCollectibleEntry[],
    isCollected: boolean,
  ) => {
    const entryIds = entries
      .filter(
        (entry) =>
          !pendingEntryIds.has(entry.id) &&
          getCollectibleEntryState(entry, stateByEntryId) !== isCollected,
      )
      .map((entry) => entry.id);

    if (!entryIds.length) {
      return;
    }

    const previousStates = new Map(
      entryIds.map((entryId) => [entryId, !isCollected] as const),
    );
    const isSaved = await saveEntryStates({
      entryIds,
      isCollected,
      previousStates,
    });

    if (isSaved) {
      toast.success(
        isCollected
          ? `${entryIds.length} marked found in ${label}`
          : `${entryIds.length} unmarked in ${label}`,
        {
          action: {
            label: "Undo",
            onClick: () => {
              void saveEntryStates({
                entryIds,
                isCollected: !isCollected,
                previousStates: new Map(
                  entryIds.map((entryId) => [entryId, isCollected] as const),
                ),
              });
            },
          },
        },
      );
    }
  };

  const areaLevel = getCollectibleAreaLevel(activeGroup.entries);
  const areaSummaries = getCollectibleAreaSummaries({
    areaLevel,
    entries: activeGroup.entries,
    sort,
    stateByEntryId,
  });
  const locations = getCollectibleLocations(activeGroup.entries);

  return (
    <div className="grid min-w-0 grid-cols-1 gap-6">
      <CollectiblesPageHead
        group={activeGroup}
        groups={data.groups}
        onGroupChange={selectGroup}
        stateByEntryId={stateByEntryId}
        whereabouts={describeCollectibleWhereabouts({
          entries: activeGroup.entries,
          gameName: data.gameName,
        })}
      />

      <CollectiblesHeroSection
        areaCount={areaSummaries.length}
        completeAreaCount={
          areaSummaries.filter((area) => area.isComplete).length
        }
        group={activeGroup}
        place={locations.length === 1 ? locations[0] : data.gameName}
        stateByEntryId={stateByEntryId}
      />

      <CollectibleEntriesSection
        key={activeGroup.id}
        areaLevel={areaLevel}
        areaSummaries={areaSummaries}
        group={activeGroup}
        isEntryPending={(entryId) => pendingEntryIds.has(entryId)}
        onAreaStateChange={(label, entries, isCollected) => {
          void updateAreaEntries(label, entries, isCollected);
        }}
        onEntryToggle={(entry) => {
          void toggleEntry(entry);
        }}
        onSortChange={setSort}
        sort={sort}
        stateByEntryId={stateByEntryId}
      />
    </div>
  );
};
