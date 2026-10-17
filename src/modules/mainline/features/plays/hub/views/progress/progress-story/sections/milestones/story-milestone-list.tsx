"use client";

import { useState } from "react";

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
 * in, for the whole list.
 */
export const StoryMilestoneList = ({
  className,
  onMilestoneSelect,
  onPopEnd,
  poppingMilestoneId,
  scope,
  selectedMilestoneId,
}: {
  className?: string;
  onMilestoneSelect: (milestone: StoryMilestone) => void;
  onPopEnd: () => void;
  /* The milestone recorded a moment ago, whose row pops once. */
  poppingMilestoneId: number | null;
  scope: StoryScope;
  /* The row shown in the panel or sheet right now, if any. */
  selectedMilestoneId: number | null;
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
            <h3 id={`story-chapter-${section.id}`} className="text-20">
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
            {section.milestones.map((milestone) => (
              <StoryMilestoneRow
                key={milestone.id}
                isJustRecorded={
                  milestone.isCompleted && milestone.id === poppingMilestoneId
                }
                milestone={milestone}
                onPopEnd={onPopEnd}
                onSelect={() => onMilestoneSelect(milestone)}
                selected={milestone.id === selectedMilestoneId}
                showDetails={showDetails}
                state={getStoryMilestoneRowState(milestone, nextMilestoneId)}
              />
            ))}
          </ol>
        </section>
      ))}
    </div>
  );
};
