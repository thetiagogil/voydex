import { cn } from "@/shared/utils/cn";

import type { StoryMilestone, StoryScope } from "../../types";
import {
  getStoryMilestoneRowState,
  StoryMilestoneRow,
} from "./story-milestone-row";

/* The scope's milestones under their chapters, as Fredoka group headings. */
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

  return (
    <div className={cn("flex min-w-0 flex-col gap-6", className)}>
      {scope.sections.map((section) => (
        <section
          key={section.id}
          aria-labelledby={`story-chapter-${section.id}`}
          className="min-w-0"
        >
          <h3 id={`story-chapter-${section.id}`} className="text-20 mb-2.5">
            {section.name}
          </h3>
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
                state={getStoryMilestoneRowState(milestone, nextMilestoneId)}
              />
            ))}
          </ol>
        </section>
      ))}
    </div>
  );
};
