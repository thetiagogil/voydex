"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import {
  recordMainlinePlayMilestoneAction,
  recordMainlinePlayMilestoneTeamAction,
  undoMainlinePlayMilestoneAction,
} from "@/modules/mainline/features/plays/hub/server/play-milestone-record-action";
import { formatMilestoneRange } from "@/modules/mainline/features/plays/shared/data/play-milestones";

type RecordableMilestone = {
  id: number;
  name: string;
};

type RecordOptions = {
  decisionOptionId?: number | null;
  /* "Record with the N before it": recorded too, and undone together. */
  earlierMilestoneIds?: number[];
  /* Saves the team you have now with it ("Record with your team"). */
  includeTeam?: boolean;
  /*
   * Runs once it is saved, such as starting the stamp's slap, with any
   * recorded along with it.
   */
  onRecorded?: (milestoneId: number, earlierMilestoneIds: number[]) => void;
  /* Runs once Undo has cleared it and any recorded along with it. */
  onUndone?: (milestoneIds: number[]) => void;
  /* The toast's line, when the default "X recorded · n of total" won't do. */
  toastMessage?: string;
};

/*
 * v3's Record: one tap records the milestone where you are (Overview,
 * Story), without the team; the toast says so with Undo and, where the
 * milestone keeps snapshots, "Add team" to save the team you have now with
 * it. The page redraws from the server. Undo marks it incomplete again,
 * with any recorded along with it, taking its moment out of History too.
 */
export const useRecordMilestone = (playId: string) => {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();
  const [pendingMilestoneId, setPendingMilestoneId] = useState<number | null>(
    null,
  );

  const undo = (
    milestone: RecordableMilestone,
    earlierMilestoneIds: number[],
    onUndone: RecordOptions["onUndone"],
  ) => {
    void undoMainlinePlayMilestoneAction({
      earlierMilestoneIds,
      milestoneId: milestone.id,
      playId,
    }).then((result) => {
      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      toast.success(
        earlierMilestoneIds.length
          ? `${milestone.name} and ${formatMilestoneRange(earlierMilestoneIds.length, "before")} are no longer recorded`
          : `${milestone.name} is no longer recorded`,
      );
      onUndone?.([...earlierMilestoneIds, milestone.id]);
      router.refresh();
    });
  };

  const addTeam = (milestone: RecordableMilestone) => {
    void recordMainlinePlayMilestoneTeamAction({
      milestoneId: milestone.id,
      playId,
    }).then((result) => {
      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      toast.success(result.message);
      router.refresh();
    });
  };

  const record = (
    milestone: RecordableMilestone,
    options: RecordOptions = {},
  ) => {
    /* One record at a time: a second tap while saving does nothing. */
    if (isPending) {
      return;
    }

    setPendingMilestoneId(milestone.id);
    startTransition(async () => {
      const result = await recordMainlinePlayMilestoneAction({
        decisionOptionId: options.decisionOptionId ?? null,
        earlierMilestoneIds: options.earlierMilestoneIds ?? [],
        includeTeam: options.includeTeam ?? false,
        milestoneId: milestone.id,
        playId,
      });

      setPendingMilestoneId(null);

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      options.onRecorded?.(milestone.id, result.recordedEarlierIds);
      const earlierCount = result.recordedEarlierIds.length;
      const recordedName = earlierCount
        ? `${result.milestoneName} and ${formatMilestoneRange(earlierCount, "before")}`
        : result.milestoneName;
      const undoAction = {
        label: "Undo",
        onClick: () =>
          undo(milestone, result.recordedEarlierIds, options.onUndone),
      };
      toast.success(
        options.toastMessage ??
          (result.totalCount
            ? `${recordedName} recorded · ${result.completedCount} of ${result.totalCount}`
            : `${recordedName} recorded`),
        result.keepsSnapshot && !options.includeTeam
          ? {
              action: { label: "Add team", onClick: () => addTeam(milestone) },
              cancel: undoAction,
              /* Two choices to read, so it stays a little longer. */
              duration: 8000,
            }
          : { action: undoAction },
      );
      router.refresh();
    });
  };

  return { isPending, pendingMilestoneId, record };
};
