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
 * A milestone still ahead offers the main button to record it, the same
 * size for every milestone. A recorded one
 * keeps its extras behind one quiet Edit menu: the note, the team snapshot,
 * the decision, and marking it incomplete. Adding wears a plus, updating the
 * pencil.
 */
export const StoryMilestoneActions = ({
  className,
  milestone,
  onAction,
}: {
  className?: string;
  milestone: StoryMilestone;
  onAction: (intent: StoryMilestoneActionIntent) => void;
}) => {
  if (!milestone.isCompleted) {
    return (
      <Button
        type="button"
        size="lg"
        disabled={!milestone.isAvailable}
        onClick={() => onAction("complete")}
        className={cn(
          "h-auto min-h-13 w-full py-3 text-left whitespace-normal sm:w-auto",
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
          <AppIcon
            icon={hasNote ? appIcons.actions.edit : appIcons.actions.create}
          />
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
            <AppIcon
              icon={
                hasDecision ? appIcons.actions.edit : appIcons.actions.create
              }
            />
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
