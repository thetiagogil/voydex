"use client";

import { getScrollBehavior } from "@/shared/utils/motion";
import { useEffect, useMemo, useState } from "react";
import { flushSync } from "react-dom";
import { toast } from "sonner";

import { useRecordMilestone } from "@/modules/mainline/features/plays/hub/client/use-record-milestone";
import { formatMilestoneRange } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import {
  createStampOrder,
  stampStepMs,
  type StampOrder,
} from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { useBottomSheetLayout } from "@/shared/hooks/use-bottom-sheet-layout";
import { EmptyState } from "@/shared/components/empty-state";
import { useStickyPanel } from "@/shared/hooks/use-sticky-panel";

import { buildStoryProgressModel } from "./data/story-progress-model";
import {
  applyStoryRecordingOverrides,
  keepPendingOverrides,
  type StoryRecordingOverrides,
} from "./data/story-recording-overrides";
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
const noOverrides: StoryRecordingOverrides = new Map();
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
  /*
   * Record and Undo show at once while they save (as the Pokédex marks):
   * these milestones are shown recorded or not until fresh data agrees.
   */
  const [overrides, setOverrides] =
    useState<StoryRecordingOverrides>(noOverrides);
  const [overriddenAt, setOverriddenAt] = useState("");
  const [seenData, setSeenData] = useState(data);

  if (data !== seenData) {
    setSeenData(data);
    setOverrides((current) => keepPendingOverrides(data, current));
  }

  const model = useMemo(
    () =>
      buildStoryProgressModel(
        applyStoryRecordingOverrides(data, overrides, overriddenAt),
      ),
    [data, overriddenAt, overrides],
  );
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
   * The milestones recorded a moment ago: their rows turn and their markers
   * stamp down, once each, one after another in Story order. Those
   * un-recorded a moment ago pop back to their numbers. Each clears when its animation ends, and all clear
   * when the scope changes, so a remount never replays them.
   */
  const [rowStampOrder, setRowStampOrder] = useState<StampOrder>(noStamps);
  const [fadingMilestoneIds, setFadingMilestoneIds] =
    useState<ReadonlySet<number>>(noFades);
  /* Recorded together: the rows still waiting their turn, in order. */
  const [waitingMilestoneIds, setWaitingMilestoneIds] = useState<number[]>([]);

  /* The cascade: each waiting row turns, one step after the one before. */
  useEffect(() => {
    if (!waitingMilestoneIds.length) {
      return;
    }

    const timer = window.setTimeout(
      () => setWaitingMilestoneIds((ids) => ids.slice(1)),
      stampStepMs,
    );

    return () => window.clearTimeout(timer);
  }, [waitingMilestoneIds]);
  const recording = useRecordMilestone(playId);
  const waitingSet = useMemo(
    () => new Set(waitingMilestoneIds),
    [waitingMilestoneIds],
  );
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

  /* A stamp opens its milestone: picked, and its row brought into view. */
  const openStampMilestone = (milestoneId: number) => {
    const milestone = findMilestone(milestoneId);

    if (!milestone) {
      return;
    }

    selectMilestone(milestone);
    document
      .getElementById(getStoryMilestoneRowId(milestoneId))
      ?.scrollIntoView({ behavior: getScrollBehavior(), block: "center" });
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
    setWaitingMilestoneIds([]);
    setRowStampOrder(noStamps);
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
    setWaitingMilestoneIds([...order.keys()].slice(1));
    setFadingMilestoneIds(noFades);
    setSelectedMilestoneId(null);
  };

  /* Shows milestones recorded or not at once, with the reward or the fade. */
  const showRecording = (milestoneIds: number[], recorded: boolean) => {
    setOverriddenAt(new Date().toISOString());
    setOverrides((current) => {
      const next = new Map(current);

      for (const milestoneId of milestoneIds) {
        next.set(milestoneId, recorded);
      }

      return next;
    });

    if (recorded) {
      startRecordingReward(milestoneIds);
    } else {
      startUnrecordingFade(milestoneIds);
    }
  };

  const startUnrecordingFade = (milestoneIds: number[]) => {
    setWaitingMilestoneIds([]);
    setRowStampOrder(noStamps);
    setFadingMilestoneIds(new Set(milestoneIds));
  };

  /*
   * Record is one tap (v3): the milestone is recorded where you are, with
   * the required ones and choices before it still open unless "Record only
   * this one", its row's marker stamps down, and the toast offers Undo. A choice
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
      const earlier = withEarlier ? milestone.earlierToRecord : [];
      const scope = findScope(milestone.id) ?? activeScope;
      const requiredAdded = [milestone, ...earlier].filter(({ id }) =>
        getScopeMilestones(scope).some(
          (candidate) => candidate.id === id && candidate.isRequired,
        ),
      ).length;
      const recordedName = earlier.length
        ? `${milestone.name} and ${formatMilestoneRange(earlier.length, "before")}`
        : milestone.name;

      setIsDetailSheetOpen(false);
      recording.recordInstant(
        { id: milestone.id, name: milestone.name },
        {
          earlierMilestoneIds: earlier.map(({ id }) => id),
          includeTeam: withTeam,
          keepsSnapshot: milestone.snapshotPolicySlug !== "none",
          onChange: showRecording,
          toastMessage: `${recordedName} recorded · ${scope.completedCount + requiredAdded} of ${scope.totalCount}`,
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
    <div className="grid min-w-0 grid-cols-1 gap-7">
      <StoryPageHead
        onScopeChange={selectScope}
        scope={activeScope}
        scopes={model.scopes}
      />

      {activeScope.stamps ? (
        <StoryStampCardSection
          onStampSelect={openStampMilestone}
          stamps={activeScope.stamps}
        />
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
          waitingMilestoneIds={waitingSet}
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
