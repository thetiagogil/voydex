"use client";

import { useEffect, useMemo, useState } from "react";
import { toast } from "sonner";

import { useRecordMilestone } from "@/modules/mainline/features/plays/hub/client/use-record-milestone";
import { formatMilestoneRange } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import {
  createStampOrder,
  stampStepMs,
  type StampOrder,
} from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { EmptyState } from "@/shared/components/empty-state";

import {
  groupStoryBattlesByMilestone,
  type StoryMatchupsModel,
} from "./data/story-matchups-model";
import { buildStoryProgressModel } from "./data/story-progress-model";
import {
  applyStoryRecordingOverrides,
  keepPendingOverrides,
  type StoryRecordingOverrides,
} from "./data/story-recording-overrides";
import type { StoryMilestoneActionIntent } from "./server/story-milestone-action";
import type { StoryMilestoneChoice } from "./sections/detail/story-milestone-actions";
import { StoryMilestoneEditor } from "./sections/detail/story-milestone-editor";
import { StoryMilestoneSheet } from "./sections/detail/story-milestone-sheet";
import { StoryPageHead } from "./sections/head/story-page-head";
import { StoryRouteCard } from "./sections/route/story-route-card";
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
 * Story: the stamp card, then one scope's milestones as one route through
 * the parts of the game, with chapters as signs on it and side content
 * hanging off the beat that opens it. A stop opens its milestone in a sheet
 * (from the right edge on wide screens, from the bottom below 1024px) with
 * its battles inside. A game with DLC switches scopes in the page head.
 */
export const MainlinePlayProgressStory = ({
  data,
  matchups,
  playId,
  recordMilestoneId = null,
}: {
  data: MainlinePlayProgressStoryData;
  /* The Story's battles read against your team, for each milestone's sheet. */
  matchups: StoryMatchupsModel | null;
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
  const battlesByMilestone = useMemo(
    () => groupStoryBattlesByMilestone(matchups),
    [matchups],
  );
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
  /* A locked or already recorded target opens in its sheet, not for recording. */
  const recordMilestone =
    recordTarget?.isAvailable && !recordTarget.isCompleted
      ? recordTarget
      : null;
  const defaultScope =
    findScope(recordTarget?.id ?? model.nextMilestone?.id ?? null) ??
    model.scopes[0];
  const [activeScopeId, setActiveScopeId] = useState(defaultScope?.id ?? null);
  /* The milestone open in the sheet. */
  const [selectedMilestoneId, setSelectedMilestoneId] = useState(
    recordTarget?.id ?? null,
  );
  const [isDetailSheetOpen, setIsDetailSheetOpen] = useState(
    Boolean(recordTarget && !recordMilestone),
  );
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
   * The milestones recorded a moment ago: their stops turn and their markers
   * stamp down, once each, one after another in Story order. Those
   * un-recorded a moment ago pop back to their numbers. Each clears when its
   * animation ends, and all clear when the scope changes, so a remount never
   * replays them.
   */
  const [rowStampOrder, setRowStampOrder] = useState<StampOrder>(noStamps);
  const [fadingMilestoneIds, setFadingMilestoneIds] =
    useState<ReadonlySet<number>>(noFades);
  /* Recorded together: the stops still waiting their turn, in order. */
  const [waitingMilestoneIds, setWaitingMilestoneIds] = useState<number[]>([]);

  /* The cascade: each waiting stop turns, one step after the one before. */
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
  const editorMilestone = findMilestone(editorMilestoneId);

  const selectMilestone = (milestone: StoryMilestone) => {
    setActiveScopeId(findScope(milestone.id)?.id ?? activeScope.id);
    setSelectedMilestoneId(milestone.id);
    setIsDetailSheetOpen(true);
  };

  /* A stamp opens its milestone, as its stop does. */
  const openStampMilestone = (milestoneId: number) => {
    const milestone = findMilestone(milestoneId);

    if (milestone) {
      selectMilestone(milestone);
    }
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
   * this one", its stop's marker stamps down, and the toast offers Undo. A
   * choice milestone still opens the form, since its choice has to be made.
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

      <StoryRouteCard
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
        selectedMilestoneId={
          isDetailSheetOpen ? (selectedMilestone?.id ?? null) : null
        }
        stampOrder={rowStampOrder}
        waitingMilestoneIds={waitingSet}
      />

      <StoryMilestoneSheet
        battles={
          selectedMilestone
            ? (battlesByMilestone.get(selectedMilestone.id) ?? [])
            : []
        }
        chapterName={getChapterName(activeScope, selectedMilestone ?? null)}
        milestone={selectedMilestone ?? null}
        onAction={openEditor}
        onOpenChange={setIsDetailSheetOpen}
        open={isDetailSheetOpen}
        returnsFocus={!isEditorOpen}
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
