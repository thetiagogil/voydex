import type { ExternalToast } from "sonner";

import type {
  PlayMilestoneRecordResult,
  PlayMilestoneUndoResult,
} from "@/modules/mainline/features/plays/hub/server/play-milestone-record-action";
import { formatMilestoneRange } from "@/modules/mainline/features/plays/shared/data/play-milestones";

export type RecordableMilestone = {
  id: number;
  name: string;
};

/*
 * Recording at once (Story, Overview's next objective): the page shows it
 * recorded, the reward plays and the toast comes up straight away, while it
 * saves in the background, as the Pokédex and Collectibles mark. `onChange`
 * shows milestones recorded (true) or not (false), and is called again the
 * other way round if a save fails.
 */
export type InstantRecordOptions = {
  earlierMilestoneIds: number[];
  includeTeam: boolean;
  /* Whether the milestone keeps team snapshots, for "Add team". */
  keepsSnapshot: boolean;
  onChange: (milestoneIds: number[], recorded: boolean) => void;
  toastMessage: string;
};

/* What an instant record talks to: the Server Actions, the toast and a redraw. */
export type InstantRecordDeps = {
  addTeam: (milestone: RecordableMilestone) => void;
  notify: {
    error: (message: string) => void;
    success: (message: string, options?: ExternalToast) => void;
  };
  record: (input: {
    earlierMilestoneIds: number[];
    includeTeam: boolean;
    milestoneId: number;
    playId: string;
  }) => Promise<PlayMilestoneRecordResult>;
  refresh: () => void;
  undo: (input: {
    earlierMilestoneIds: number[];
    milestoneId: number;
    playId: string;
  }) => Promise<PlayMilestoneUndoResult>;
};

/*
 * Records a milestone at once and saves it in the background. The toast's
 * Undo waits for that save and clears only what it recorded: the database
 * keeps a milestone that was already recorded, so the ones it reports, not
 * the ones this page asked for, are the ones Undo may clear. Resolves to the
 * earlier milestones recorded with it, or null if the save failed.
 */
export const recordMilestoneInstantly = (
  deps: InstantRecordDeps,
  playId: string,
  milestone: RecordableMilestone,
  options: InstantRecordOptions,
): Promise<number[] | null> => {
  const shownIds = [...options.earlierMilestoneIds, milestone.id];

  options.onChange(shownIds, true);

  const saved = deps
    .record({
      earlierMilestoneIds: options.earlierMilestoneIds,
      includeTeam: options.includeTeam,
      milestoneId: milestone.id,
      playId,
    })
    .then((result) => {
      if (result.status === "error") {
        options.onChange(shownIds, false);
        deps.notify.error(result.message);
        return null;
      }

      deps.refresh();
      return result.recordedEarlierIds;
    });

  const undo = () =>
    void saved.then(async (recordedEarlierIds) => {
      if (!recordedEarlierIds) {
        return;
      }

      const undoneIds = [...recordedEarlierIds, milestone.id];

      options.onChange(undoneIds, false);

      const result = await deps.undo({
        earlierMilestoneIds: recordedEarlierIds,
        milestoneId: milestone.id,
        playId,
      });

      if (result.status === "error") {
        options.onChange(undoneIds, true);
        deps.notify.error(result.message);
        return;
      }

      deps.notify.success(
        recordedEarlierIds.length
          ? `${milestone.name} and ${formatMilestoneRange(recordedEarlierIds.length, "before")} are no longer recorded`
          : `${milestone.name} is no longer recorded`,
      );
      deps.refresh();
    });
  const undoAction = { label: "Undo", onClick: undo };

  deps.notify.success(
    options.toastMessage,
    options.keepsSnapshot && !options.includeTeam
      ? {
          action: {
            label: "Add team",
            onClick: () =>
              void saved.then((ids) => {
                if (ids) {
                  deps.addTeam(milestone);
                }
              }),
          },
          cancel: undoAction,
          /* Two choices to read, so it stays a little longer. */
          duration: 8000,
        }
      : { action: undoAction },
  );

  return saved;
};
