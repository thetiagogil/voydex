"use client";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { ButtonGroup } from "@/shared/components/ui/button-group";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { cn } from "@/shared/utils/cn";
import { RecordMilestoneButton } from "@/modules/mainline/features/plays/shared/components/record-milestone-button";

import type { StoryMilestoneActionIntent } from "../../server/story-milestone-action";
import type { StoryMilestone } from "../../types";
import {
  hasRecordedStoryMilestoneDecision,
  hasRecordedStoryMilestoneNote,
  hasRecordedStoryMilestoneSnapshot,
} from "../../utils/story-milestone-recording";

/*
 * A milestone still ahead offers the main button to record it, the same
 * size for every milestone. In a linear story it also records the required
 * milestones before it still open; the round arrow beside it offers "Record
 * with your team" and, when there are some, "Record only this one".
 * A recorded one keeps its extras behind one quiet Edit menu as wide as the
 * panel: the note, the team snapshot, the decision, and marking it
 * incomplete. Adding wears a plus, updating the
 * pencil.
 */
/* What a milestone's actions ask for: an editor intent, or a way to record. */
export type StoryMilestoneChoice =
  | StoryMilestoneActionIntent
  | "complete-only"
  | "complete-with-team";

export const StoryMilestoneActions = ({
  className,
  milestone,
  onAction,
}: {
  className?: string;
  milestone: StoryMilestone;
  onAction: (choice: StoryMilestoneChoice) => void;
}) => {
  if (!milestone.isCompleted) {
    const keepsTeam = milestone.snapshotPolicySlug !== "none";
    const earlierCount = milestone.earlierToRecord.length;

    /*
     * The panel's main button, full width. Where there is another way to
     * record it, its arrow offers them (as the Planner's Random team offers
     * its other ways).
     */
    return (
      <ButtonGroup
        aria-label={`Record ${milestone.name}`}
        className={cn("w-full min-w-0", className)}
      >
        <RecordMilestoneButton
          disabled={!milestone.isAvailable}
          onClick={() => onAction("complete")}
          label={`Record ${milestone.name}`}
          className="min-w-0 flex-1 sm:whitespace-normal"
        />
        {keepsTeam || earlierCount ? (
          <DropdownMenu>
            <DropdownMenuTrigger
              render={
                <Button
                  type="button"
                  size="icon-lg"
                  disabled={!milestone.isAvailable}
                  aria-label="More ways to record"
                />
              }
            >
              <AppIcon icon={appIcons.actions.expand} />
            </DropdownMenuTrigger>
            <DropdownMenuContent align="end" className="w-auto min-w-60">
              <DropdownMenuItem onClick={() => onAction("complete")}>
                <AppIcon icon={appIcons.product.completion} />
                Record
              </DropdownMenuItem>
              {keepsTeam ? (
                <DropdownMenuItem
                  onClick={() => onAction("complete-with-team")}
                >
                  <AppIcon icon={appIcons.product.teamSnapshot} />
                  Record with your team
                </DropdownMenuItem>
              ) : null}
              {earlierCount ? (
                <DropdownMenuItem onClick={() => onAction("complete-only")}>
                  <AppIcon icon={appIcons.product.milestone} />
                  Record only this one
                </DropdownMenuItem>
              ) : null}
            </DropdownMenuContent>
          </DropdownMenu>
        ) : null}
      </ButtonGroup>
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
            variant="secondary"
            className={cn("w-full", className)}
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
