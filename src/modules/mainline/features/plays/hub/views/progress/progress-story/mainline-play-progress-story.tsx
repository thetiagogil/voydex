"use client";

import { useMemo, useState } from "react";
import { flushSync } from "react-dom";
import { toast } from "sonner";

import { useRecordMilestone } from "@/modules/mainline/features/plays/hub/client/use-record-milestone";
import { useMainlinePlayDetailSheetLayout } from "@/modules/mainline/features/plays/hub/shell/use-mainline-play-detail-sheet-layout";
import { EmptyState } from "@/shared/components/empty-state";

import { buildStoryProgressModel } from "./data/story-progress-model";
import type { StoryMilestoneActionIntent } from "./server/story-milestone-action";
import { StoryMilestoneEditor } from "./sections/detail/story-milestone-editor";
import {
  StoryMilestonePanel,
  storyPanelTitleId,
} from "./sections/detail/story-milestone-panel";
import { StoryMilestoneSheet } from "./sections/detail/story-milestone-sheet";
import { StoryPageHead } from "./sections/head/story-page-head";
import { StoryMilestoneList } from "./sections/milestones/story-milestone-list";
import { getStoryMilestoneRowId } from "./sections/milestones/story-milestone-row";
import { StoryStampCardSection } from "./sections/stamps/story-stamp-card-section";
import type {
  MainlinePlayProgressStoryData,
  StoryMilestone,
  StoryScope,
} from "./types";

const getScopeMilestones = (scope: StoryScope) =>
  scope.sections.flatMap((section) => section.milestones);

const getChapterName = (scope: StoryScope, milestone: StoryMilestone | null) =>
  scope.sections.find((section) => section.id === milestone?.categoryId)
    ?.name ?? null;

/*
 * Story: the milestones of one scope under their chapters, with the next
 * objective and the stamp card beside them. Phones put the next objective
 * first and the stamp card last, and open a picked milestone in a sheet.
 */
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
  const findMilestone = (milestoneId: number | null) =>
    model.scopes
      .flatMap(getScopeMilestones)
      .find((milestone) => milestone.id === milestoneId) ?? null;
  const findScope = (milestoneId: number | null) =>
    model.scopes.find((scope) =>
      getScopeMilestones(scope).some(
        (milestone) => milestone.id === milestoneId,
      ),
    ) ?? null;
  const recordTarget = findMilestone(recordMilestoneId);
  /* A locked or already recorded target is shown, but not opened for recording. */
  const recordMilestone =
    recordTarget?.isAvailable && !recordTarget.isCompleted
      ? recordTarget
      : null;
  const defaultScope =
    findScope(recordTarget?.id ?? model.nextMilestone?.id ?? null) ??
    model.scopes[0];
  const [activeScopeId, setActiveScopeId] = useState(defaultScope?.id ?? null);
  /* The milestone picked from the list; none shows the next objective. */
  const [selectedMilestoneId, setSelectedMilestoneId] = useState(
    recordTarget?.id ?? null,
  );
  const [isDetailSheetOpen, setIsDetailSheetOpen] = useState(false);
  const [editorIntent, setEditorIntent] =
    useState<StoryMilestoneActionIntent>("complete");
  const [editorMilestoneId, setEditorMilestoneId] = useState(
    recordMilestone?.id ?? null,
  );
  const [isEditorOpen, setIsEditorOpen] = useState(Boolean(recordMilestone));
  /*
   * The milestone recorded a moment ago: its row pops and its stamp slaps,
   * once each. Each clears when its animation ends, and both clear when the
   * list redraws, so a remount never replays them.
   */
  const [poppingMilestoneId, setPoppingMilestoneId] = useState<number | null>(
    null,
  );
  const [slappingMilestoneId, setSlappingMilestoneId] = useState<number | null>(
    null,
  );
  const recording = useRecordMilestone(playId);
  const activeScope =
    model.scopes.find((scope) => scope.id === activeScopeId) ??
    defaultScope ??
    null;

  if (!activeScope) {
    return (
      <EmptyState
        headingLevel="h2"
        title="No Story milestones available"
        description="This game's Story tracking data is not available yet."
      />
    );
  }

  const selectedMilestone = getScopeMilestones(activeScope).find(
    (milestone) => milestone.id === selectedMilestoneId,
  );
  const panelMilestone =
    (!usesDetailSheet ? selectedMilestone : null) ?? activeScope.nextMilestone;
  const editorMilestone = findMilestone(editorMilestoneId);

  const selectMilestone = (milestone: StoryMilestone) => {
    setActiveScopeId(findScope(milestone.id)?.id ?? activeScope.id);
    setSelectedMilestoneId(milestone.id);

    if (usesDetailSheet) {
      setIsDetailSheetOpen(true);
    }
  };

  /* Back to the next objective, with focus on the row that was open. */
  const closePanel = (milestoneId: number) => {
    flushSync(() => setSelectedMilestoneId(null));
    (
      document.getElementById(getStoryMilestoneRowId(milestoneId)) ??
      document.getElementById(storyPanelTitleId)
    )?.focus();
  };

  const endRecordingReward = () => {
    setPoppingMilestoneId(null);
    setSlappingMilestoneId(null);
  };

  const selectScope = (scopeId: number) => {
    endRecordingReward();
    setActiveScopeId(scopeId);
    setSelectedMilestoneId(null);
    setIsDetailSheetOpen(false);
  };

  const startRecordingReward = (milestoneId: number) => {
    setPoppingMilestoneId(milestoneId);
    setSlappingMilestoneId(milestoneId);
    setSelectedMilestoneId(null);
  };

  /*
   * Record is one tap (v3): the milestone is recorded where you are, its row
   * pops and its stamp slaps, and the toast offers Undo. A choice milestone
   * still opens the form, since its choice has to be made.
   */
  const openEditor = (
    milestone: StoryMilestone,
    intent: StoryMilestoneActionIntent,
  ) => {
    if (intent === "complete" && !milestone.decisionOptions.length) {
      setIsDetailSheetOpen(false);
      recording.record(
        { id: milestone.id, name: milestone.name },
        { onRecorded: startRecordingReward },
      );
      return;
    }

    setIsDetailSheetOpen(false);
    setEditorMilestoneId(milestone.id);
    setEditorIntent(intent);
    setIsEditorOpen(true);
  };

  const finishEditing = (message: string | null) => {
    setIsEditorOpen(false);

    if (editorIntent === "complete" && editorMilestone) {
      startRecordingReward(editorMilestone.id);
      toast.success(`${editorMilestone.name} recorded`);
      return;
    }

    if (message) {
      toast.success(message);
    }
  };

  return (
    <div className="grid min-w-0 grid-cols-1 gap-7">
      <StoryPageHead
        onScopeChange={selectScope}
        scope={activeScope}
        scopes={model.scopes}
      />

      {activeScope.stamps ? (
        <StoryStampCardSection
          onSlapEnd={() => setSlappingMilestoneId(null)}
          slappingMilestoneId={slappingMilestoneId}
          stamps={activeScope.stamps}
        />
      ) : null}

      {/*
       * The side column comes first in the DOM, so on phones the next
       * objective is read and reached before the list it sits above.
       */}
      <div className="grid min-w-0 grid-cols-1 gap-6 lg:grid-cols-[minmax(0,1.5fr)_minmax(0,1fr)] lg:items-start lg:gap-7">
        <div className="lg:sticky-column contents lg:col-start-2 lg:row-start-1 lg:flex lg:min-w-0 lg:flex-col lg:gap-5 lg:pb-1.5">
          <StoryMilestonePanel
            chapterName={getChapterName(activeScope, panelMilestone)}
            className="order-1 lg:order-none"
            milestone={panelMilestone}
            onAction={openEditor}
            onClose={
              !usesDetailSheet && selectedMilestone
                ? () => closePanel(selectedMilestone.id)
                : undefined
            }
            scope={activeScope}
          />
        </div>

        <StoryMilestoneList
          className="order-2 lg:order-none lg:col-start-1 lg:row-start-1"
          onMilestoneSelect={selectMilestone}
          onPopEnd={() => setPoppingMilestoneId(null)}
          poppingMilestoneId={poppingMilestoneId}
          scope={activeScope}
          selectedMilestoneId={
            !usesDetailSheet || isDetailSheetOpen
              ? (selectedMilestone?.id ?? null)
              : null
          }
        />
      </div>

      <StoryMilestoneSheet
        chapterName={getChapterName(activeScope, selectedMilestone ?? null)}
        milestone={selectedMilestone ?? null}
        onAction={openEditor}
        onOpenChange={setIsDetailSheetOpen}
        open={usesDetailSheet && isDetailSheetOpen}
        scope={activeScope}
      />

      <StoryMilestoneEditor
        intent={editorIntent}
        milestone={editorMilestone}
        onOpenChange={setIsEditorOpen}
        onSaved={finishEditing}
        open={isEditorOpen}
        playId={playId}
      />
    </div>
  );
};
