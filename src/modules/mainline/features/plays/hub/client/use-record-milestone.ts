"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import {
  recordMainlinePlayMilestoneAction,
  recordMainlinePlayMilestoneTeamAction,
  undoMainlinePlayMilestoneAction,
} from "@/modules/mainline/features/plays/hub/server/play-milestone-record-action";
import {
  recordMilestoneInstantly,
  type InstantRecordOptions,
  type RecordableMilestone,
} from "@/modules/mainline/features/plays/hub/client/instant-milestone-record";

type RecordOptions = {
  decisionOptionId?: number | null;
  /* Saves the team you have now with it ("Record with your team"). */
  includeTeam?: boolean;
  /* Runs once it is saved, such as starting the stamp's slap. */
  onRecorded?: (milestoneId: number) => void;
  /* The toast's line, when the default "X recorded · n of total" won't do. */
  toastMessage?: string;
};

/*
 * v3's Record: one tap records the milestone where you are, without the
 * team; the toast says so with Undo and, where the milestone keeps
 * snapshots, "Add team" to save the team you have now with it. Undo marks
 * it incomplete again, taking its moment out of History too. `record` waits
 * for the save (a partner choice); `recordInstant` shows it at once and
 * saves in the background (Story, Overview's next objective).
 */
export const useRecordMilestone = (playId: string) => {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();
  const [pendingMilestoneId, setPendingMilestoneId] = useState<number | null>(
    null,
  );

  const undo = (milestone: RecordableMilestone) => {
    void undoMainlinePlayMilestoneAction({
      earlierMilestoneIds: [],
      milestoneId: milestone.id,
      playId,
    }).then((result) => {
      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      toast.success(`${milestone.name} is no longer recorded`);
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

  const recordInstant = (
    milestone: RecordableMilestone,
    options: InstantRecordOptions,
  ) =>
    void recordMilestoneInstantly(
      {
        addTeam,
        notify: toast,
        record: recordMainlinePlayMilestoneAction,
        refresh: router.refresh,
        undo: undoMainlinePlayMilestoneAction,
      },
      playId,
      milestone,
      options,
    );

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
        earlierMilestoneIds: [],
        includeTeam: options.includeTeam ?? false,
        milestoneId: milestone.id,
        playId,
      });

      setPendingMilestoneId(null);

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      options.onRecorded?.(milestone.id);
      const recordedName = result.milestoneName;
      const undoAction = { label: "Undo", onClick: () => undo(milestone) };
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

  return { isPending, pendingMilestoneId, record, recordInstant };
};
