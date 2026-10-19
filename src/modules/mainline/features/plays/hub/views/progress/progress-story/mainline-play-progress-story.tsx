"use client";

import { type CSSProperties, useMemo, useState } from "react";
import { flushSync } from "react-dom";
import { toast } from "sonner";

import { useRecordMilestone } from "@/modules/mainline/features/plays/hub/client/use-record-milestone";
import {
  createStampOrder,
  type StampOrder,
} from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { useBottomSheetLayout } from "@/shared/hooks/use-bottom-sheet-layout";
import { EmptyState } from "@/shared/components/empty-state";
import { useElementHeight } from "@/shared/hooks/use-element-height";
import { useStickyPanel } from "@/shared/hooks/use-sticky-panel";

import { buildStoryProgressModel } from "./data/story-progress-model";
import type { StoryMilestoneActionIntent } from "./server/story-milestone-action";
import type { StoryMilestoneChoice } from "./sections/detail/story-milestone-actions";
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

const noStamps: StampOrder = new Map();
const noFades: ReadonlySet<number> = new Set();

const withoutMilestone = (order: StampOrder, milestoneId: number) => {
  const next = new Map(order);
  next.delete(milestoneId);
  return next;
};

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
  const usesDetailSheet = useBottomSheetLayout();
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
  const [sidePanelStyle, bindSidePanel] = useStickyPanel<HTMLDivElement>();
  const [stampCardHeight, bindStampCard] = useElementHeight<HTMLDivElement>();
  /* The milestone picked from the list; none shows the next objective. */
  const [selectedMilestoneId, setSelectedMilestoneId] = useState(
    recordTarget?.id ?? null,
  );
  const [isDetailSheetOpen, setIsDetailSheetOpen] = useState(false);
  const [editorIntent, setEditorIntent] =
    useState<StoryMilestoneActionIntent>("complete");
  /* "Record with your team" on a choice: the form opens with the team ticked. */
  const [editorRecordsTeam, setEditorRecordsTeam] = useState(false);
  /* "Record only this one" on a choice: the form opens with the ones before it unticked. */
  const [editorRecordsEarlier, setEditorRecordsEarlier] = useState(true);
  const [editorMilestoneId, setEditorMilestoneId] = useState(
    recordMilestone?.id ?? null,
  );
  const [isEditorOpen, setIsEditorOpen] = useState(Boolean(recordMilestone));
  /*
   * The milestones recorded a moment ago: their rows stamp and their badges
   * slap, once each, one after another in Story order. Those un-recorded a
   * moment ago fade back. Each clears when its animation ends, and all clear
   * when the scope changes, so a remount never replays them.
   */
  const [rowStampOrder, setRowStampOrder] = useState<StampOrder>(noStamps);
  const [badgeSlapOrder, setBadgeSlapOrder] = useState<StampOrder>(noStamps);
  const [fadingMilestoneIds, setFadingMilestoneIds] =
    useState<ReadonlySet<number>>(noFades);
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
    setRowStampOrder(noStamps);
    setBadgeSlapOrder(noStamps);
    setFadingMilestoneIds(noFades);
  };

  const selectScope = (scopeId: number) => {
    endRecordingReward();
    setActiveScopeId(scopeId);
    setSelectedMilestoneId(null);
    setIsDetailSheetOpen(false);
  };

  const startRecordingReward = (milestoneIds: number[]) => {
    const recordedIds = new Set(milestoneIds);
    const order = createStampOrder(
      model.scopes
        .flatMap(getScopeMilestones)
        .filter((milestone) => recordedIds.has(milestone.id))
        .map((milestone) => milestone.id),
    );

    setRowStampOrder(order);
    setBadgeSlapOrder(order);
    setFadingMilestoneIds(noFades);
    setSelectedMilestoneId(null);
  };

  const startUnrecordingFade = (milestoneIds: number[]) => {
    setRowStampOrder(noStamps);
    setBadgeSlapOrder(noStamps);
    setFadingMilestoneIds(new Set(milestoneIds));
  };

  /*
   * Record is one tap (v3): the milestone is recorded where you are, with
   * the required ones and choices before it still open unless "Record only
   * this one",
   * its row pops and its stamp slaps, and the toast offers Undo. A choice
   * milestone still opens the form, since its choice has to be made.
   */
  const openEditor = (
    milestone: StoryMilestone,
    choice: StoryMilestoneChoice,
  ) => {
    const withTeam = choice === "complete-with-team";
    const withEarlier = choice !== "complete-only";
    const intent = withTeam || choice === "complete-only" ? "complete" : choice;

    if (intent === "complete" && !milestone.decisionOptions.length) {
      setIsDetailSheetOpen(false);
      recording.record(
        { id: milestone.id, name: milestone.name },
        {
          earlierMilestoneIds: withEarlier
            ? milestone.earlierToRecord.map(({ id }) => id)
            : [],
          includeTeam: withTeam,
          onRecorded: (milestoneId, earlierMilestoneIds) =>
            startRecordingReward([...earlierMilestoneIds, milestoneId]),
          onUndone: startUnrecordingFade,
        },
      );
      return;
    }

    setIsDetailSheetOpen(false);
    setEditorMilestoneId(milestone.id);
    setEditorIntent(intent);
    setEditorRecordsTeam(withTeam);
    setEditorRecordsEarlier(withEarlier);
    setIsEditorOpen(true);
  };

  const finishEditing = (message: string | null, milestoneIds: number[]) => {
    setIsEditorOpen(false);

    if (editorIntent === "complete" && editorMilestone) {
      startRecordingReward(milestoneIds);
      toast.success(message ?? `${editorMilestone.name} recorded`);
      return;
    }

    if (editorIntent === "incomplete") {
      startUnrecordingFade(milestoneIds);
    }

    if (message) {
      toast.success(message);
    }
  };

  return (
    <div
      className="grid min-w-0 grid-cols-1 gap-7"
      style={
        {
          "--sticky-panel-offset": stampCardHeight
            ? `${stampCardHeight + 12}px`
            : undefined,
        } as CSSProperties
      }
    >
      <StoryPageHead
        onScopeChange={selectScope}
        scope={activeScope}
        scopes={model.scopes}
      />

      {activeScope.stamps ? (
        /*
         * Pinned under the docked bar, so the stamps you record land in view
         * while you scroll the list; a strip of page above it hides the rows
         * scrolling past. The side panel sticks just below it.
         */
        <div
          ref={bindStampCard}
          className="before:bg-bg sticky top-[calc(var(--play-dock-offset,0px)+0.75rem)] z-10 before:absolute before:inset-x-0 before:bottom-full before:h-6"
        >
          <StoryStampCardSection
            onSlapEnd={(milestoneId) =>
              setBadgeSlapOrder((order) => withoutMilestone(order, milestoneId))
            }
            slapOrder={badgeSlapOrder}
            stamps={activeScope.stamps}
          />
        </div>
      ) : null}

      {/*
       * The side column comes first in the DOM, so on phones the next
       * objective is read and reached before the list it sits above.
       */}
      <div className="grid min-w-0 grid-cols-1 gap-6 lg:grid-cols-[minmax(0,1.5fr)_minmax(0,1fr)] lg:items-start lg:gap-7">
        <div
          ref={bindSidePanel}
          style={sidePanelStyle}
          className="lg:sticky-panel contents lg:col-start-2 lg:row-start-1 lg:flex lg:min-w-0 lg:flex-col lg:gap-5"
        >
          <StoryMilestonePanel
            chapterName={getChapterName(activeScope, panelMilestone)}
            className="order-1 lg:order-0"
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
          className="order-2 lg:order-0 lg:col-start-1 lg:row-start-1"
          fadingMilestoneIds={fadingMilestoneIds}
          onMilestoneSelect={selectMilestone}
          onMotionEnd={(milestoneId) => {
            setRowStampOrder((order) => withoutMilestone(order, milestoneId));
            setFadingMilestoneIds((ids) => {
              const next = new Set(ids);
              next.delete(milestoneId);
              return next;
            });
          }}
          scope={activeScope}
          stampOrder={rowStampOrder}
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
        recordsEarlier={editorRecordsEarlier}
        recordsTeam={editorRecordsTeam}
      />
    </div>
  );
};
