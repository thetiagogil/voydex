"use client";

import { useEffect, useMemo, useRef, useState } from "react";
import { toast } from "sonner";

import { useRecordMilestone } from "@/modules/mainline/features/plays/hub/client/use-record-milestone";
import { formatMilestoneRange } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import {
  createStampOrder,
  stampStepMs,
  type StampOrder,
} from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { EmptyState } from "@/shared/components/empty-state";
import { useBottomSheetLayout } from "@/shared/hooks/use-bottom-sheet-layout";
import { useStickyPanel } from "@/shared/hooks/use-sticky-panel";

import {
  groupStoryBattlesByMilestone,
  type StoryMatchupBattle,
  type StoryMatchupsModel,
} from "./data/story-matchups-model";
import { buildStoryProgressModel } from "./data/story-progress-model";
import {
  applyStoryRecordingOverrides,
  keepPendingOverrides,
  type StoryRecordingOverrides,
} from "./data/story-recording-overrides";
import type { StoryMilestoneActionIntent } from "./client/story-milestone-action";
import type { StoryMilestoneChoice } from "./sections/detail/story-milestone-actions";
import { StoryMilestoneEditor } from "./sections/detail/story-milestone-editor";
import {
  StoryDetail,
  type StoryDetailTarget,
} from "./sections/detail/story-detail";
import { StoryPageHead } from "./sections/head/story-page-head";
import { StoryRoadmap } from "./sections/route/story-roadmap";
import { getStoryRouteStopId } from "./sections/route/story-route-stop";
import { StoryStampCardSection } from "./sections/stamps/story-stamp-card-section";
import type {
  MainlinePlayProgressStoryData,
  StoryMilestone,
  StoryPlace,
  StoryScope,
} from "./types";

/* What is open in the detail: a milestone, or a place on the way to one. */
type StorySelection =
  | { id: number; kind: "milestone" }
  | {
      key: string;
      kind: "place";
      note: string | null;
      place: StoryPlace;
      towardId: number;
    };

const noBattles: StoryMatchupBattle[] = [];

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
 * Story: the stamp card, then one scope's milestones as one route down the
 * page, the places on the way between them, chapters as signs on it and side
 * content where it sits. A stop or place opens in the detail beside the
 * route from 1024px (your next objective until you pick another), or in a
 * bottom sheet below that, with its battles inside. A game with DLC switches
 * scopes in the page head.
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
  /* The milestone or place open in the detail. */
  const [selection, setSelection] = useState<StorySelection | null>(
    recordTarget ? { id: recordTarget.id, kind: "milestone" } : null,
  );
  const usesDetailSheet = useBottomSheetLayout();
  /* Where focus goes once the page has drawn what a tap changed. */
  const pendingFocusId = useRef<string | null>(null);

  useEffect(() => {
    const id = pendingFocusId.current;

    if (id) {
      pendingFocusId.current = null;
      document.getElementById(id)?.focus();
    }
  });
  const [detailPanelStyle, bindDetailPanel] = useStickyPanel<HTMLDivElement>();
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

  const scopeMilestones = getScopeMilestones(activeScope);
  const toTarget = (
    picked: StorySelection | null,
  ): StoryDetailTarget | null => {
    if (picked?.kind === "place") {
      return {
        key: picked.key,
        kind: "place",
        note: picked.note,
        place: picked.place,
        toward:
          scopeMilestones.find(({ id }) => id === picked.towardId) ?? null,
      };
    }

    const milestone = picked
      ? scopeMilestones.find(({ id }) => id === picked.id)
      : null;

    return milestone ? { kind: "milestone", milestone } : null;
  };
  const sheetTarget = toTarget(selection);
  /* Beside the route, the next objective shows until you pick another. */
  const panelTarget =
    sheetTarget ??
    (activeScope.nextMilestone
      ? { kind: "milestone" as const, milestone: activeScope.nextMilestone }
      : null);
  const getTargetKey = (target: StoryDetailTarget | null) =>
    target?.kind === "place"
      ? target.key
      : target
        ? `stop-${target.milestone.id}`
        : null;
  /* A milestone's battles at its own place; a place's, those fought there. */
  const getTargetBattles = (target: StoryDetailTarget | null) => {
    if (target?.kind === "place") {
      return (
        target.toward
          ? (battlesByMilestone.get(target.toward.id) ?? noBattles)
          : noBattles
      ).filter((battle) => battle.placeId === target.place.id);
    }

    return target
      ? (battlesByMilestone.get(target.milestone.id) ?? noBattles).filter(
          (battle) =>
            battle.placeId === null ||
            battle.placeId === target.milestone.place?.id,
        )
      : noBattles;
  };
  const editorMilestone = findMilestone(editorMilestoneId);

  const selectMilestone = (milestone: StoryMilestone) => {
    setActiveScopeId(findScope(milestone.id)?.id ?? activeScope.id);
    setSelection({ id: milestone.id, kind: "milestone" });
    /* Beside the route the panel shows it; only below 1024px is it a sheet. */
    setIsDetailSheetOpen(usesDetailSheet);
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
    setSelection(null);
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

      /*
       * Beside the route the panel stays on what was recorded, with focus
       * back on its stop, so a second tap never records the next one.
       */
      if (!usesDetailSheet) {
        setSelection({ id: milestone.id, kind: "milestone" });
        pendingFocusId.current = getStoryRouteStopId(milestone.id);
      }

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

      <div className="grid items-start gap-7 lg:grid-cols-[26rem_minmax(0,1fr)] xl:grid-cols-[30rem_minmax(0,1fr)]">
        <StoryRoadmap
          fadingMilestoneIds={fadingMilestoneIds}
          getPlaceBattleCount={(entry) =>
            getTargetBattles({
              key: entry.key,
              kind: "place",
              note: entry.note,
              place: entry.place,
              toward: entry.toward,
            }).length
          }
          onMilestoneSelect={selectMilestone}
          onMotionEnd={(milestoneId) => {
            setRowStampOrder((order) => withoutMilestone(order, milestoneId));
            setFadingMilestoneIds((ids) => {
              const next = new Set(ids);
              next.delete(milestoneId);
              return next;
            });
          }}
          onPlaceSelect={(entry) => {
            setSelection({
              key: entry.key,
              kind: "place",
              note: entry.note,
              place: entry.place,
              towardId: entry.toward.id,
            });
            setIsDetailSheetOpen(usesDetailSheet);
          }}
          opensSheet={usesDetailSheet}
          scope={activeScope}
          selectedKey={
            usesDetailSheet
              ? isDetailSheetOpen
                ? getTargetKey(sheetTarget)
                : null
              : getTargetKey(panelTarget)
          }
          stampOrder={rowStampOrder}
          waitingMilestoneIds={waitingSet}
        />
        <div
          ref={bindDetailPanel}
          style={detailPanelStyle}
          className="sticky-panel hidden min-w-0 lg:block"
        >
          {usesDetailSheet ? null : (
            <StoryDetail
              key={getTargetKey(panelTarget) ?? "none"}
              battles={getTargetBattles(panelTarget)}
              chapterName={
                panelTarget?.kind === "milestone"
                  ? getChapterName(activeScope, panelTarget.milestone)
                  : null
              }
              layout="panel"
              onAction={openEditor}
              open
              returnsFocus={!isEditorOpen}
              scope={activeScope}
              target={panelTarget}
            />
          )}
        </div>
      </div>

      {/* Only in the sheet layout: widen the window and the panel takes over. */}
      <StoryDetail
        battles={getTargetBattles(sheetTarget)}
        chapterName={
          sheetTarget?.kind === "milestone"
            ? getChapterName(activeScope, sheetTarget.milestone)
            : null
        }
        layout="sheet"
        onAction={openEditor}
        onOpenChange={setIsDetailSheetOpen}
        open={isDetailSheetOpen && usesDetailSheet}
        returnsFocus={!isEditorOpen}
        scope={activeScope}
        target={sheetTarget}
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
