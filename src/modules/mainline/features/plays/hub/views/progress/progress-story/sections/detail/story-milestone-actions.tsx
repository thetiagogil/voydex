import {
  Camera,
  CircleCheck,
  GitFork,
  NotebookPen,
  RotateCcw,
} from "lucide-react";

import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

import type { StoryMilestoneActionIntent } from "../../server/story-milestone-action";
import type { StoryMilestone } from "../../types";
import { getStoryMilestoneRecordingActionVariant } from "../../utils/story-milestone-action-variant";
import {
  hasRecordedStoryMilestoneDecision,
  hasRecordedStoryMilestoneNote,
  hasRecordedStoryMilestoneSnapshot,
} from "../../utils/story-milestone-recording";

const fullWidthActionClassName = "sm:col-span-2";

export const StoryMilestoneActions = ({
  milestone,
  onAction,
}: {
  milestone: StoryMilestone;
  onAction: (intent: StoryMilestoneActionIntent) => void;
}) => {
  const hasDecision = milestone.decisionOptions.length > 0;
  const canRecordStoryMoment = milestone.snapshotPolicySlug !== "none";
  const hasSupportingAction = hasDecision || canRecordStoryMoment;
  const hasRecordedDecision = hasRecordedStoryMilestoneDecision(milestone);
  const hasRecordedNote = hasRecordedStoryMilestoneNote(milestone);
  const hasRecordedSnapshot = hasRecordedStoryMilestoneSnapshot(milestone);
  const isLocked = !milestone.isCompleted && !milestone.isAvailable;

  if (!milestone.isCompleted) {
    return (
      <div className="grid gap-2">
        <Button
          type="button"
          className="w-full"
          disabled={isLocked}
          onClick={() => onAction("complete")}
        >
          <CircleCheck data-icon="inline-start" aria-hidden />
          Complete milestone
        </Button>
        {isLocked ? (
          <p className="text-muted-foreground text-xs leading-5">
            Complete the required prerequisites before recording this milestone.
          </p>
        ) : (
          <p className="text-muted-foreground text-xs leading-5">
            You can add relevant details while completing it.
          </p>
        )}
      </div>
    );
  }

  return (
    <div className="grid gap-2 sm:grid-cols-2">
      <Button
        type="button"
        variant={getStoryMilestoneRecordingActionVariant(hasRecordedNote)}
        className={cn(
          "w-full",
          !hasSupportingAction && fullWidthActionClassName,
        )}
        onClick={() => onAction("note")}
      >
        <NotebookPen data-icon="inline-start" aria-hidden />
        {hasRecordedNote ? "Update note" : "Add note"}
      </Button>

      {canRecordStoryMoment ? (
        <Button
          type="button"
          variant={getStoryMilestoneRecordingActionVariant(hasRecordedSnapshot)}
          className="w-full"
          onClick={() => onAction("story-moment")}
          aria-label={
            hasRecordedSnapshot
              ? "Replace the recorded team snapshot"
              : undefined
          }
        >
          <Camera data-icon="inline-start" aria-hidden />
          {hasRecordedSnapshot ? "Snapshot recorded" : "Record snapshot"}
        </Button>
      ) : null}

      {hasDecision ? (
        <Button
          type="button"
          variant={getStoryMilestoneRecordingActionVariant(hasRecordedDecision)}
          className="w-full"
          onClick={() => onAction("decision")}
        >
          <GitFork data-icon="inline-start" aria-hidden />
          {hasRecordedDecision ? "Update decision" : "Add decision"}
        </Button>
      ) : null}

      <div className={cn("grid pt-1", fullWidthActionClassName)}>
        <Button
          type="button"
          variant="outline"
          className="w-full"
          onClick={() => onAction("incomplete")}
        >
          <RotateCcw data-icon="inline-start" aria-hidden />
          Mark incomplete
        </Button>
      </div>
    </div>
  );
};
