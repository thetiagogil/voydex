"use client";

import { useMemo, useState } from "react";

import { useMainlinePlayDetailSheetLayout } from "@/modules/mainline/features/plays/hub/shell/use-mainline-play-detail-sheet-layout";
import { EmptyState } from "@/shared/components/empty-state";

import { buildStoryProgressModel } from "./data/story-progress-model";
import type { StoryMilestoneActionIntent } from "./server/story-milestone-action";
import { StoryMilestoneEditor } from "./sections/detail/story-milestone-editor";
import { StoryMilestoneInspector } from "./sections/detail/story-milestone-inspector";
import { StoryMilestoneSheet } from "./sections/detail/story-milestone-sheet";
import { StoryMilestoneList } from "./sections/milestones/story-milestone-list";
import { StoryProgressSummarySection } from "./sections/summary/story-progress-summary-section";
import type { MainlinePlayProgressStoryData, StoryMilestone } from "./types";

export const MainlinePlayProgressStory = ({
  data,
  playId,
  recordMilestoneId = null,
}: {
  data: MainlinePlayProgressStoryData;
  playId: string;
  /* Opens straight into recording this milestone, as Overview's Record button asks. */
  recordMilestoneId?: number | null;
}) => {
  const model = useMemo(() => buildStoryProgressModel(data), [data]);
  const usesDetailSheet = useMainlinePlayDetailSheetLayout();
  const recordMilestone =
    model.scopes
      .flatMap((scope) =>
        scope.sections.flatMap((section) => section.milestones),
      )
      .find(
        (milestone) =>
          milestone.id === recordMilestoneId &&
          milestone.isAvailable &&
          !milestone.isCompleted,
      ) ?? null;
  const initialMilestoneId = recordMilestone?.id ?? model.defaultMilestoneId;
  const defaultScope =
    model.scopes.find((scope) =>
      scope.sections.some((section) =>
        section.milestones.some(
          (milestone) => milestone.id === initialMilestoneId,
        ),
      ),
    ) ?? model.scopes[0];
  const [activeScopeId, setActiveScopeId] = useState(defaultScope?.id ?? null);
  const [query, setQuery] = useState("");
  const [selectedMilestoneId, setSelectedMilestoneId] =
    useState(initialMilestoneId);
  const [isDetailSheetOpen, setIsDetailSheetOpen] = useState(false);
  const [editorIntent, setEditorIntent] =
    useState<StoryMilestoneActionIntent>("complete");
  const [editorMilestoneId, setEditorMilestoneId] = useState<number | null>(
    recordMilestone?.id ?? null,
  );
  const [isEditorOpen, setIsEditorOpen] = useState(Boolean(recordMilestone));
  const activeScope =
    model.scopes.find((scope) => scope.id === activeScopeId) ??
    defaultScope ??
    null;
  const selectedMilestone =
    model.scopes
      .flatMap((scope) =>
        scope.sections.flatMap((section) => section.milestones),
      )
      .find((milestone) => milestone.id === selectedMilestoneId) ??
    activeScope?.sections[0]?.milestones[0] ??
    null;
  const editorMilestone =
    model.scopes
      .flatMap((scope) =>
        scope.sections.flatMap((section) => section.milestones),
      )
      .find((milestone) => milestone.id === editorMilestoneId) ?? null;

  if (!activeScope) {
    return (
      <EmptyState
        title="No Story milestones available"
        description="This game's Story tracking data is not available yet."
      />
    );
  }

  const selectMilestone = (milestone: StoryMilestone) => {
    const owningScope = model.scopes.find((scope) =>
      scope.sections.some((section) =>
        section.milestones.some((candidate) => candidate.id === milestone.id),
      ),
    );

    if (owningScope) {
      setActiveScopeId(owningScope.id);
    }

    setSelectedMilestoneId(milestone.id);

    if (usesDetailSheet) {
      setIsDetailSheetOpen(true);
    }
  };

  const revealSummaryMilestone = (milestone: StoryMilestone) => {
    setQuery("");
    selectMilestone(milestone);
  };

  const openEditor = (
    milestone: StoryMilestone,
    intent: StoryMilestoneActionIntent,
  ) => {
    setIsDetailSheetOpen(false);
    setEditorMilestoneId(milestone.id);
    setEditorIntent(intent);
    setIsEditorOpen(true);
  };

  const selectScope = (scopeId: number) => {
    const scope = model.scopes.find((candidate) => candidate.id === scopeId);

    if (!scope) {
      return;
    }

    const scopeMilestones = scope.sections.flatMap(
      (section) => section.milestones,
    );
    const preferredMilestone =
      scopeMilestones.find(
        (milestone) => milestone.id === model.nextMilestone?.id,
      ) ??
      scopeMilestones.find(
        (milestone) => milestone.isAvailable && !milestone.isCompleted,
      ) ??
      scopeMilestones.find((milestone) => !milestone.isCompleted) ??
      scopeMilestones.at(-1) ??
      null;

    setActiveScopeId(scopeId);
    setSelectedMilestoneId(preferredMilestone?.id ?? null);
    setIsDetailSheetOpen(false);
  };

  return (
    <div className="grid gap-4">
      <StoryProgressSummarySection
        model={model}
        onMilestoneSelect={revealSummaryMilestone}
      />

      <div className="grid gap-4 lg:grid-cols-[minmax(0,1.65fr)_minmax(20rem,0.85fr)]">
        <StoryMilestoneList
          activeScope={activeScope}
          onMilestoneSelect={selectMilestone}
          onQueryChange={setQuery}
          onScopeChange={selectScope}
          query={query}
          scopes={model.scopes}
          selectedMilestoneId={selectedMilestone?.id ?? null}
          showSelection={!usesDetailSheet || isDetailSheetOpen}
        />

        {selectedMilestone ? (
          <StoryMilestoneInspector
            milestone={selectedMilestone}
            onAction={(intent) => openEditor(selectedMilestone, intent)}
          />
        ) : null}
      </div>

      <StoryMilestoneSheet
        milestone={selectedMilestone}
        onAction={(intent) => {
          if (selectedMilestone) {
            openEditor(selectedMilestone, intent);
          }
        }}
        onOpenChange={setIsDetailSheetOpen}
        open={usesDetailSheet && isDetailSheetOpen}
      />

      <StoryMilestoneEditor
        intent={editorIntent}
        milestone={editorMilestone}
        onOpenChange={setIsEditorOpen}
        open={isEditorOpen}
        playId={playId}
      />
    </div>
  );
};
