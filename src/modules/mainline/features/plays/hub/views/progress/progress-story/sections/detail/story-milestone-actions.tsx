"use client";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { cn } from "@/shared/utils/cn";

import type { StoryMilestoneActionIntent } from "../../server/story-milestone-action";
import type { StoryMilestone } from "../../types";
import {
  hasRecordedStoryMilestoneDecision,
  hasRecordedStoryMilestoneNote,
  hasRecordedStoryMilestoneSnapshot,
} from "../../utils/story-milestone-recording";

/*
 * A milestone still ahead offers the main button to record it: large for the
 * next objective, small for any other open milestone. A recorded one
 * keeps its extras behind one quiet Edit menu: the note, the team snapshot,
 * the decision, and marking it incomplete.
 */
export const StoryMilestoneActions = ({
  className,
  isNext,
  milestone,
  onAction,
}: {
  className?: string;
  isNext: boolean;
  milestone: StoryMilestone;
  onAction: (intent: StoryMilestoneActionIntent) => void;
}) => {
  if (!milestone.isCompleted) {
    return (
      <Button
        type="button"
        size={isNext ? "lg" : "sm"}
        disabled={!milestone.isAvailable}
        onClick={() => onAction("complete")}
        className={cn(
          "h-auto w-full text-left whitespace-normal sm:w-auto",
          isNext ? "min-h-13 py-3" : "min-h-9 py-1.5",
          className,
        )}
      >
        <AppIcon icon={appIcons.product.completion} />
        Record {milestone.name}
      </Button>
    );
  }

  const hasNote = hasRecordedStoryMilestoneNote(milestone);
  const hasSnapshot = hasRecordedStoryMilestoneSnapshot(milestone);
  const hasDecision = hasRecordedStoryMilestoneDecision(milestone);

  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={
          <Button
            type="button"
            variant="outline"
            size="sm"
            className={cn("w-full sm:w-auto", className)}
          />
        }
      >
        <AppIcon icon={appIcons.actions.edit} inline="start" />
        Edit
        <AppIcon icon={appIcons.actions.expand} inline="end" />
      </DropdownMenuTrigger>
      <DropdownMenuContent align="start" className="w-auto min-w-56">
        <DropdownMenuItem onClick={() => onAction("note")}>
          <AppIcon icon={appIcons.actions.edit} />
          {hasNote ? "Update note" : "Add note"}
        </DropdownMenuItem>
        {milestone.snapshotPolicySlug !== "none" ? (
          <DropdownMenuItem onClick={() => onAction("story-moment")}>
            <AppIcon icon={appIcons.product.team} />
            {hasSnapshot ? "Update team snapshot" : "Record team snapshot"}
          </DropdownMenuItem>
        ) : null}
        {milestone.decisionOptions.length ? (
          <DropdownMenuItem onClick={() => onAction("decision")}>
            <AppIcon icon={appIcons.product.activity} />
            {hasDecision ? "Update decision" : "Add decision"}
          </DropdownMenuItem>
        ) : null}
        <DropdownMenuSeparator />
        <DropdownMenuItem
          variant="destructive"
          onClick={() => onAction("incomplete")}
        >
          <AppIcon icon={appIcons.actions.retry} />
          Mark incomplete
        </DropdownMenuItem>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
