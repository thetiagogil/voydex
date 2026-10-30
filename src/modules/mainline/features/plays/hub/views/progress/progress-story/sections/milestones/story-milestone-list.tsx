"use client";

import { useState } from "react";

import type { StampOrder } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

import type { StoryMilestone, StoryScope } from "../../types";
import {
  getStoryMilestoneRowState,
  StoryMilestoneRow,
} from "./story-milestone-row";

/*
 * The scope's milestones under their chapters, as Fredoka group headings.
 * Decisions and saved teams stay out of the rows (a signpost and a camera
 * mark them) until "Show details" beside a chapter's heading brings them
 * in, for the whole list. Milestones recorded together cascade: each row
 * waits as it was, then turns recorded with its marker stamping down, one
 * after another in Story order. The list is where you look, so the stamp
 * card above stays still. Rows un-recorded pop back to their numbers.
 */
export const StoryMilestoneList = ({
  className,
  fadingMilestoneIds,
  onMilestoneSelect,
  onMotionEnd,
  scope,
  selectedMilestoneId,
  stampOrder,
  waitingMilestoneIds,
}: {
  className?: string;
  /* The milestones un-recorded a moment ago, whose rows fade back once. */
  fadingMilestoneIds: ReadonlySet<number>;
  onMilestoneSelect: (milestone: StoryMilestone) => void;
  /* Called once a row's marker has popped. */
  onMotionEnd: (milestoneId: number) => void;
  scope: StoryScope;
  /* The row shown in the panel or sheet right now, if any. */
  selectedMilestoneId: number | null;
  /* The milestones recorded a moment ago, whose markers pop as they turn. */
  stampOrder: StampOrder;
  /* Recorded a moment ago but still waiting their turn in the cascade. */
  waitingMilestoneIds: ReadonlySet<number>;
}) => {
  const nextMilestoneId = scope.nextMilestone?.id ?? null;
  const [showDetails, setShowDetails] = useState(false);

  return (
    <div className={cn("flex min-w-0 flex-col gap-6", className)}>
      {scope.sections.map((section) => (
        <section
          key={section.id}
          aria-labelledby={`story-chapter-${section.id}`}
          className="min-w-0"
        >
          <div className="mb-2.5 flex min-h-9 items-center justify-between gap-3">
            <h3 id={`story-chapter-${section.id}`} className="title-card">
              {section.name}
            </h3>
            {section.milestones.some(
              (milestone) =>
                milestone.snapshotMembers.length > 0 ||
                milestone.selectedDecisionLabel,
            ) ? (
              <Button
                type="button"
                variant="ghost"
                size="sm"
                aria-pressed={showDetails}
                onClick={() => setShowDetails((current) => !current)}
              >
                <AppIcon icon={appIcons.product.details} inline="start" />
                {showDetails ? "Hide details" : "Show details"}
              </Button>
            ) : null}
          </div>
          <ol className="grid gap-2">
            {section.milestones.map((savedMilestone) => {
              /* Its turn in the cascade hasn't come: shown as it was. */
              const isWaiting = waitingMilestoneIds.has(savedMilestone.id);
              const milestone = isWaiting
                ? { ...savedMilestone, completedAt: null, isCompleted: false }
                : savedMilestone;

              return (
                <StoryMilestoneRow
                  key={milestone.id}
                  milestone={milestone}
                  onSettled={() => onMotionEnd(milestone.id)}
                  motion={
                    isWaiting
                      ? null
                      : milestone.isCompleted
                        ? stampOrder.has(milestone.id)
                          ? "recorded"
                          : null
                        : fadingMilestoneIds.has(milestone.id)
                          ? "unrecorded"
                          : null
                  }
                  onSelect={() => onMilestoneSelect(savedMilestone)}
                  selected={milestone.id === selectedMilestoneId}
                  showDetails={showDetails}
                  state={getStoryMilestoneRowState(milestone, nextMilestoneId)}
                />
              );
            })}
          </ol>
        </section>
      ))}
    </div>
  );
};
