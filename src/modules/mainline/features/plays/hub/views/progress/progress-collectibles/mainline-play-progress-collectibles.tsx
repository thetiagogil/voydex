"use client";

import { useState } from "react";
import { usePathname, useRouter } from "next/navigation";
import { toast } from "sonner";

import { useOptimisticMarks } from "@/modules/mainline/features/plays/shared/client/use-optimistic-marks";
import { EmptyState } from "@/shared/components/empty-state";

import { FoldHead, FoldToggle, useFold } from "@/shared/components/fold";

import { CollectibleEntriesSection } from "./sections/entries/collectible-entries-section";
import { CollectiblesPageHead } from "./sections/head/collectibles-page-head";
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
  getCollectibleAreaLevel,
  getCollectibleAreaSummaries,
  getCollectibleEntryState,
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
  const {
    isPending: isEntryPending,
    mark,
    valueById: stateByEntryId,
  } = useOptimisticMarks(() => buildInitialCollectibleState(data));
  const [sort, setSort] = useState<CollectibleSort>("canonical");
  /* The search and filter bar folds under the title, opened from its row. */
  const fold = useFold({});
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

  /* Marks entries found or not, at once, and saves them. */
  const saveEntryStates = async ({
    entryIds,
    isCollected,
  }: {
    entryIds: number[];
    isCollected: boolean;
  }) => {
    const result = await mark({
      fallbackError: "Unable to update collectible progress.",
      next: new Map(entryIds.map((entryId) => [entryId, isCollected])),
      previous: new Map(entryIds.map((entryId) => [entryId, !isCollected])),
      save: () =>
        entryIds.length === 1
          ? updateCollectibleEntryProgress({
              collectibleEntryId: entryIds[0],
              isCollected,
              playId,
            })
          : updateCollectibleEntryProgressBulk({
              collectibleEntryIds: entryIds,
              isCollected,
              playId,
            }),
    });

    return result !== null;
  };

  const toggleEntry = async (entry: MainlinePlayCollectibleEntry) => {
    if (isEntryPending(entry.id)) {
      return;
    }

    const previousState = getCollectibleEntryState(entry, stateByEntryId);
    const isCollected = !previousState;
    const isSaved = await saveEntryStates({
      entryIds: [entry.id],
      isCollected,
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
          !isEntryPending(entry.id) &&
          getCollectibleEntryState(entry, stateByEntryId) !== isCollected,
      )
      .map((entry) => entry.id);

    if (!entryIds.length) {
      return;
    }

    const isSaved = await saveEntryStates({ entryIds, isCollected });

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

  return (
    <div className="grid min-w-0 grid-cols-1 gap-6">
      <FoldHead
        toggle={
          <FoldToggle
            controls={fold.panelId}
            open={fold.open}
            onOpenChange={fold.setOpen}
          />
        }
      >
        <CollectiblesPageHead
          group={activeGroup}
          groups={data.groups}
          onGroupChange={selectGroup}
          areaCount={areaSummaries.length}
          completeAreaCount={
            areaSummaries.filter((area) => area.isComplete).length
          }
          stateByEntryId={stateByEntryId}
        />
      </FoldHead>

      <CollectibleEntriesSection
        key={activeGroup.id}
        areaLevel={areaLevel}
        areaSummaries={areaSummaries}
        group={activeGroup}
        isEntryPending={isEntryPending}
        onAreaStateChange={(label, entries, isCollected) => {
          void updateAreaEntries(label, entries, isCollected);
        }}
        onEntryToggle={(entry) => {
          void toggleEntry(entry);
        }}
        onSortChange={setSort}
        searchOpen={fold.open}
        searchPanelId={fold.panelId}
        sort={sort}
        stateByEntryId={stateByEntryId}
      />
    </div>
  );
};
