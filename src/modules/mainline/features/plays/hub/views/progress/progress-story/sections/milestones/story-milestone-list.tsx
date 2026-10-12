import { Camera, ChevronRight, GitFork, LockKeyhole } from "lucide-react";

import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BrowseFilterPanel } from "@/shared/components/browse-filter-panel";
import { EmptyState } from "@/shared/components/empty-state";
import { SearchControl } from "@/shared/components/search-control";
import { SelectableItem } from "@/shared/components/selectable-item";
import { Button } from "@/shared/components/ui/button";
import { ButtonGroup } from "@/shared/components/ui/button-group";
import { cn } from "@/shared/utils/cn";

import { StoryMilestoneTypeBadge } from "../../components/story-milestone-type-badge";
import type { StoryMilestone, StoryScope, StorySection } from "../../types";
import {
  hasRecordedStoryMilestoneDecision,
  hasRecordedStoryMilestoneSnapshot,
} from "../../utils/story-milestone-recording";

const StoryMilestoneRow = ({
  milestone,
  onSelect,
  selected,
}: {
  milestone: StoryMilestone;
  onSelect: () => void;
  selected: boolean;
}) => {
  const hasRecordedDecision = hasRecordedStoryMilestoneDecision(milestone);
  const hasRecordedSnapshot = hasRecordedStoryMilestoneSnapshot(milestone);

  return (
    <SelectableItem
      ariaLabel={`Open ${milestone.name} details`}
      className={cn(
        "rounded-none border-x-0 border-t-0 last:border-b-0",
        selected && "border-line bg-primary/5",
      )}
      buttonClassName="grid w-full grid-cols-[auto_minmax(0,1fr)_auto] items-center gap-3 px-3 py-3"
      onSelect={onSelect}
      selected={selected}
    >
      <span
        className={cn(
          "border-line text-muted-foreground flex size-8 items-center justify-center rounded-full border text-xs font-semibold tabular-nums",
          milestone.isCompleted &&
            "border-primary bg-primary text-primary-foreground",
          selected &&
            !milestone.isCompleted &&
            "border-primary text-primary bg-primary/5",
        )}
      >
        {milestone.isCompleted ? (
          <AppIcon icon={appIcons.product.completion} size="md" aria-hidden />
        ) : (
          milestone.sequence
        )}
      </span>

      <span className="grid min-w-0 gap-1">
        <span className="flex min-w-0 flex-wrap items-center gap-2">
          <span className="truncate text-sm font-semibold">
            {milestone.name}
          </span>
          <StoryMilestoneTypeBadge
            className="h-5 text-[0.65rem]"
            name={milestone.typeName}
            slug={milestone.typeSlug}
          />
          {!milestone.isRequired ? (
            <span className="text-muted-foreground text-[0.65rem] font-medium">
              Optional
            </span>
          ) : null}
        </span>
        {milestone.description ? (
          <span className="text-muted-foreground line-clamp-1 text-xs">
            {milestone.description}
          </span>
        ) : null}
      </span>

      <span className="text-muted-foreground flex items-center gap-2">
        {!milestone.isAvailable ? (
          <LockKeyhole
            className="text-muted-foreground/40 size-3.5"
            aria-label="Locked by an incomplete prerequisite"
          />
        ) : null}
        {milestone.decisionOptions.length ? (
          <GitFork
            className={cn(
              "text-muted-foreground/40 size-3.5",
              hasRecordedDecision && "text-primary",
            )}
            aria-label={
              hasRecordedDecision ? "Decision recorded" : "Decision available"
            }
          />
        ) : null}
        {milestone.snapshotPolicySlug !== "none" ? (
          <Camera
            className={cn(
              "text-muted-foreground/40 size-3.5",
              hasRecordedSnapshot && "text-primary",
            )}
            aria-label={
              hasRecordedSnapshot
                ? "Team snapshot recorded"
                : "Team snapshot available"
            }
          />
        ) : null}
        <ChevronRight className="size-3.5" aria-hidden />
      </span>
    </SelectableItem>
  );
};

const StoryMilestoneSection = ({
  onMilestoneSelect,
  section,
  selectedMilestoneId,
  showSelection,
}: {
  onMilestoneSelect: (milestone: StoryMilestone) => void;
  section: StorySection;
  selectedMilestoneId: number | null;
  showSelection: boolean;
}) => {
  return (
    <section aria-labelledby={`story-section-${section.id}`}>
      <div className="border-line bg-muted/20 flex items-center justify-between gap-3 border-y px-3 py-2">
        <h3
          id={`story-section-${section.id}`}
          className="font-display text-sm font-semibold"
        >
          {section.name}
        </h3>
        <span className="text-muted-foreground text-xs tabular-nums">
          {section.completedCount}/{section.totalCount} recorded
        </span>
      </div>

      <div role="list" className="grid min-w-0">
        {section.milestones.map((milestone) => (
          <StoryMilestoneRow
            key={milestone.id}
            milestone={milestone}
            onSelect={() => onMilestoneSelect(milestone)}
            selected={showSelection && selectedMilestoneId === milestone.id}
          />
        ))}
      </div>
    </section>
  );
};

const matchesQuery = (milestone: StoryMilestone, query: string) => {
  const normalizedQuery = query.trim().toLocaleLowerCase();

  if (!normalizedQuery) {
    return true;
  }

  return [milestone.name, milestone.description, milestone.typeName].some(
    (value) => value?.toLocaleLowerCase().includes(normalizedQuery),
  );
};

const StoryScopeActions = ({
  activeScopeId,
  onScopeChange,
  scopes,
}: {
  activeScopeId: number;
  onScopeChange: (scopeId: number) => void;
  scopes: StoryScope[];
}) => {
  return (
    <ButtonGroup aria-label="Story content scope">
      {scopes.map((scope) => (
        <Button
          key={scope.id}
          className="min-w-max"
          type="button"
          size="xs"
          variant="outline"
          aria-pressed={activeScopeId === scope.id}
          onClick={() => onScopeChange(scope.id)}
        >
          {scope.label}
        </Button>
      ))}
    </ButtonGroup>
  );
};

export const StoryMilestoneList = ({
  activeScope,
  onMilestoneSelect,
  onQueryChange,
  onScopeChange,
  query,
  scopes,
  selectedMilestoneId,
  showSelection,
}: {
  activeScope: StoryScope;
  onMilestoneSelect: (milestone: StoryMilestone) => void;
  onQueryChange: (query: string) => void;
  onScopeChange: (scopeId: number) => void;
  query: string;
  scopes: StoryScope[];
  selectedMilestoneId: number | null;
  showSelection: boolean;
}) => {
  const visibleSections = activeScope.sections.flatMap((section) => {
    const visibleMilestones = section.milestones.filter((milestone) =>
      matchesQuery(milestone, query),
    );

    return visibleMilestones.length
      ? [{ ...section, milestones: visibleMilestones }]
      : [];
  });

  return (
    <MainlinePlaySectionCard
      title="Story milestones"
      description={`${activeScope.completedCount}/${activeScope.totalCount} recorded in ${activeScope.label}.`}
      action={
        scopes.length > 1 ? (
          <StoryScopeActions
            activeScopeId={activeScope.id}
            onScopeChange={onScopeChange}
            scopes={scopes}
          />
        ) : undefined
      }
      headerClassName={
        scopes.length > 1
          ? "flex-col items-stretch gap-3 sm:flex-row sm:items-center"
          : undefined
      }
      contentClassName="grid gap-3 px-0 pb-0 pt-3"
      showSeparator
    >
      <BrowseFilterPanel
        variant="bare"
        className="grid-cols-1 gap-2.5 px-3"
        onSubmit={(event) => {
          event.preventDefault();
        }}
      >
        <SearchControl
          id="story-milestone-search"
          name="storyMilestoneSearch"
          ariaLabel={`Search milestones in ${activeScope.label}`}
          value={query}
          onValueChange={onQueryChange}
          placeholder="Search milestones"
        />
      </BrowseFilterPanel>

      {visibleSections.length ? (
        <div className="grid min-w-0">
          {visibleSections.map((section) => (
            <StoryMilestoneSection
              key={section.id}
              onMilestoneSelect={onMilestoneSelect}
              section={section}
              selectedMilestoneId={selectedMilestoneId}
              showSelection={showSelection}
            />
          ))}
        </div>
      ) : (
        <div className="px-3 pb-3">
          <EmptyState
            title="No matching milestones"
            description={`No milestones in ${activeScope.label} match this search.`}
          />
        </div>
      )}
    </MainlinePlaySectionCard>
  );
};
