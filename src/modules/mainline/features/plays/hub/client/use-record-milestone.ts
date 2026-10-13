"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import {
  recordMainlinePlayMilestoneAction,
  undoMainlinePlayMilestoneAction,
} from "@/modules/mainline/features/plays/hub/server/play-milestone-record-action";

type RecordableMilestone = {
  id: number;
  name: string;
};

type RecordOptions = {
  decisionOptionId?: number | null;
  /* Runs once it is saved, such as starting the stamp's slap. */
  onRecorded?: (milestoneId: number) => void;
  /* The toast's line, when the default "X recorded · n of total" won't do. */
  toastMessage?: string;
};

/*
 * v3's Record: one tap records the milestone where you are (Overview,
 * Story), the toast says so with Undo, and the page redraws from the server.
 * Undo marks it incomplete again, taking its moment out of History too.
 */
export const useRecordMilestone = (playId: string) => {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();
  const [pendingMilestoneId, setPendingMilestoneId] = useState<number | null>(
    null,
  );

  const undo = (milestone: RecordableMilestone) => {
    void undoMainlinePlayMilestoneAction({
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
        milestoneId: milestone.id,
        playId,
      });

      setPendingMilestoneId(null);

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      options.onRecorded?.(milestone.id);
      toast.success(
        options.toastMessage ??
          (result.totalCount
            ? `${result.milestoneName} recorded · ${result.completedCount} of ${result.totalCount}`
            : `${result.milestoneName} recorded`),
        {
          action: { label: "Undo", onClick: () => undo(milestone) },
        },
      );
      router.refresh();
    });
  };

  return { isPending, pendingMilestoneId, record };
};
