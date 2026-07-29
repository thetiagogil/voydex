"use client";

import { useState } from "react";
import { usePathname, useRouter } from "next/navigation";
import { toast } from "sonner";

import { EmptyState } from "@/shared/components/empty-state";

import { CollectibleEntriesSection } from "./sections/entries/collectible-entries-section";
import { CollectibleScopeOverviewSection } from "./sections/scope-overview/collectible-scope-overview-section";
import {
  updateCollectibleEntryProgress,
  updateCollectibleEntryProgressBulk,
} from "./server/collectibles-progress-action";
import type {
  MainlinePlayCollectibleEntry,
  MainlinePlayProgressCollectiblesData,
} from "./types";
import { getCollectibleEntryState } from "./utils/collectibles-progress-model";

const buildInitialCollectibleState = (
  data: MainlinePlayProgressCollectiblesData,
) =>
  new Map(
    data.groups.flatMap((group) =>
      group.entries.map((entry) => [entry.id, entry.isCollected] as const),
    ),
  );

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
  const activeGroup =
    data.groups.find((group) => group.id === activeGroupId) ??
    data.groups[0] ??
    null;

  if (!activeGroup) {
    return (
      <EmptyState
        title="No collectibles available"
        description="This game does not have collectible tracking data yet."
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

  const toggleEntry = async (entry: MainlinePlayCollectibleEntry) => {
    if (pendingEntryIds.has(entry.id)) {
      return;
    }

    const previousState = getCollectibleEntryState(entry, stateByEntryId);
    const nextState = !previousState;

    setStateByEntryId((current) => {
      const next = new Map(current);
      next.set(entry.id, nextState);
      return next;
    });
    setPendingEntryIds((current) => new Set(current).add(entry.id));

    try {
      const result = await updateCollectibleEntryProgress({
        collectibleEntryId: entry.id,
        isCollected: nextState,
        playId,
      });

      if (result.status === "error") {
        throw new Error(result.message);
      }
    } catch (error) {
      setStateByEntryId((current) => {
        const next = new Map(current);
        next.set(entry.id, previousState);
        return next;
      });
      toast.error(
        error instanceof Error
          ? error.message
          : "Unable to update collectible progress.",
      );
    } finally {
      setPendingEntryIds((current) => {
        const next = new Set(current);
        next.delete(entry.id);
        return next;
      });
    }
  };

  const updateEntries = async (
    entries: MainlinePlayCollectibleEntry[],
    isCollected: boolean,
  ) => {
    const entriesToUpdate = entries.filter(
      (entry) =>
        !pendingEntryIds.has(entry.id) &&
        getCollectibleEntryState(entry, stateByEntryId) !== isCollected,
    );

    if (!entriesToUpdate.length) {
      return;
    }

    const previousStates = new Map(
      entriesToUpdate.map(
        (entry) =>
          [entry.id, getCollectibleEntryState(entry, stateByEntryId)] as const,
      ),
    );
    const entryIds = entriesToUpdate.map((entry) => entry.id);

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
      const result = await updateCollectibleEntryProgressBulk({
        collectibleEntryIds: entryIds,
        isCollected,
        playId,
      });

      if (result.status === "error") {
        throw new Error(result.message);
      }

      toast.success(result.message);
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

  return (
    <div className="grid gap-4">
      <CollectibleScopeOverviewSection
        group={activeGroup}
        groups={data.groups}
        onGroupChange={selectGroup}
        stateByEntryId={stateByEntryId}
      />

      <CollectibleEntriesSection
        key={activeGroup.id}
        group={activeGroup}
        isEntryPending={(entryId) => pendingEntryIds.has(entryId)}
        onEntryToggle={(entry) => {
          void toggleEntry(entry);
        }}
        onSectionStateChange={(entries, isCollected) => {
          void updateEntries(entries, isCollected);
        }}
        stateByEntryId={stateByEntryId}
      />
    </div>
  );
};
