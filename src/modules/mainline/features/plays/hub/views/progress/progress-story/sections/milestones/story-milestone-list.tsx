import { EmptyState } from "@/shared/components/empty-state";
import { SearchControl } from "@/shared/components/search-control";
import { cn } from "@/shared/utils/cn";

import type { StoryMilestone, StoryScope } from "../../types";
import { getStoryMilestoneRowState } from "./story-milestone-marker";
import { StoryMilestoneRow } from "./story-milestone-row";

const matchesQuery = (milestone: StoryMilestone, query: string) => {
  const normalizedQuery = query.trim().toLocaleLowerCase();

  if (!normalizedQuery) {
    return true;
  }

  return [milestone.name, milestone.description, milestone.typeName].some(
    (value) => value?.toLocaleLowerCase().includes(normalizedQuery),
  );
};

/* The scope's milestones under their chapters, as Fredoka group headings. */
export const StoryMilestoneList = ({
  className,
  onMilestoneSelect,
  onPopEnd,
  onQueryChange,
  poppingMilestoneId,
  query,
  scope,
  selectedMilestoneId,
}: {
  className?: string;
  onMilestoneSelect: (milestone: StoryMilestone) => void;
  onPopEnd: () => void;
  onQueryChange: (query: string) => void;
  /* The milestone recorded a moment ago, whose row pops once. */
  poppingMilestoneId: number | null;
  query: string;
  scope: StoryScope;
  /* The row shown in the panel or sheet right now, if any. */
  selectedMilestoneId: number | null;
}) => {
  const nextMilestoneId = scope.nextMilestone?.id ?? null;
  const visibleSections = scope.sections.flatMap((section) => {
    const milestones = section.milestones.filter((milestone) =>
      matchesQuery(milestone, query),
    );

    return milestones.length ? [{ ...section, milestones }] : [];
  });

  return (
    <div className={cn("flex min-w-0 flex-col gap-6", className)}>
      <SearchControl
        id="story-milestone-search"
        name="storyMilestoneSearch"
        ariaLabel={`Search milestones in ${scope.label}`}
        value={query}
        onValueChange={onQueryChange}
        placeholder="Search milestones"
      />

      {visibleSections.length ? (
        visibleSections.map((section) => (
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
        ))
      ) : (
        <EmptyState
          title="No matching milestones"
          description={`No milestones in ${scope.label} match this search.`}
        />
      )}
    </div>
  );
};
