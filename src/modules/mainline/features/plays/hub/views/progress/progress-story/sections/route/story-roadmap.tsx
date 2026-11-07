"use client";

import { useMemo, useState } from "react";

import { MilestoneMarker } from "@/modules/mainline/features/plays/shared/components/milestone-marker";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import type { StampOrder } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

import {
  getCurrentChapterKey,
  splitStoryRouteChapters,
  type StoryRouteChapter,
} from "../../data/story-route-chapters";
import {
  buildStoryRoute,
  isStoryRouteEntryDone,
  type StoryRouteEntry,
} from "../../data/story-route-model";
import type { StoryMilestone, StoryScope } from "../../types";
import { StoryChapterCard } from "./story-chapter-card";
import { StoryMilestoneMemento } from "./story-milestone-memento";
import { StoryRoute } from "./story-route";
import {
  getStoryRoutePlaceId,
  getStoryRouteStopId,
  StoryRoutePlace,
  StoryRouteStop,
} from "./story-route-stop";

type StoryRoutePlaceEntry = Extract<StoryRouteEntry, { kind: "place" }>;
type StoryRouteItem = StoryRouteChapter["entries"][number];

const getStoryMilestoneState = (
  milestone: StoryMilestone,
  nextMilestoneId: number | null,
): PlayMilestoneState =>
  milestone.isCompleted
    ? "done"
    : milestone.id === nextMilestoneId
      ? "next"
      : "todo";

/*
 * Story as a roadmap (#108, #199): every chapter in order, each its own card
 * (`StoryChapterCard`) with its route down one line, the places on the way
 * to each milestone between them and side content as optional stops where
 * it sits (`buildStoryRoute`). Every chapter folds; only the one you're in
 * starts open, and a folded one shows its milestones as a strip. Chapters
 * played in any order sit together under one label. Milestones recorded
 * together cascade: each stop waits as it was, then its marker stamps down,
 * one after another in Story order; one un-recorded pops back to its number.
 */
export const StoryRoadmap = ({
  fadingMilestoneIds,
  getPlaceBattleCount,
  onMilestoneSelect,
  onMotionEnd,
  onPlaceSelect,
  opensSheet,
  scope,
  selectedKey,
  stampOrder,
  waitingMilestoneIds,
}: {
  /* The milestones un-recorded a moment ago, whose markers pop back once. */
  fadingMilestoneIds: ReadonlySet<number>;
  /* The battles at a place on the way, for its row. */
  getPlaceBattleCount: (entry: StoryRoutePlaceEntry) => number;
  onMilestoneSelect: (milestone: StoryMilestone) => void;
  /* Called once a marker has stamped or popped. */
  onMotionEnd: (milestoneId: number) => void;
  onPlaceSelect: (entry: StoryRoutePlaceEntry) => void;
  /* Below 1024px a stop opens a sheet; beside the route, the detail panel. */
  opensSheet: boolean;
  scope: StoryScope;
  /* The route key of the stop or place open in the detail, if any. */
  selectedKey: string | null;
  /* The milestones recorded a moment ago, whose markers stamp as they turn. */
  stampOrder: StampOrder;
  /* Recorded a moment ago but still waiting their turn in the cascade. */
  waitingMilestoneIds: ReadonlySet<number>;
}) => {
  const nextMilestoneId = scope.nextMilestone?.id ?? null;
  /*
   * Stops still waiting their turn in the cascade read as they were, so the
   * line and the counts fill in as their stamps land, not before.
   */
  const blocks = useMemo(
    () =>
      buildStoryRoute(
        waitingMilestoneIds.size
          ? {
              ...scope,
              sections: scope.sections.map((section) => ({
                ...section,
                milestones: section.milestones.map((milestone) =>
                  waitingMilestoneIds.has(milestone.id)
                    ? { ...milestone, completedAt: null, isCompleted: false }
                    : milestone,
                ),
              })),
            }
          : scope,
      ),
    [scope, waitingMilestoneIds],
  );

  /*
   * Every chapter folds from its sign. The one you're in starts open and
   * the rest folded; a chapter you open or fold stays as you left it.
   */
  /* The chapter you were in when you came, so recording never folds it away. */
  const [arrival, setArrival] = useState(() => ({
    chapterKey: getCurrentChapterKey(scope),
    scopeId: scope.id,
  }));
  const [chapterOpen, setChapterOpen] = useState<ReadonlyMap<string, boolean>>(
    new Map(),
  );

  if (arrival.scopeId !== scope.id) {
    setArrival({ chapterKey: getCurrentChapterKey(scope), scopeId: scope.id });
    setChapterOpen(new Map());
  }

  const currentChapterKey = arrival.chapterKey;
  /* The chapter holding your next objective right now, which says so. */
  const liveChapterKey = getCurrentChapterKey(scope);
  const isChapterOpen = (signKey: string) =>
    chapterOpen.get(signKey) ?? signKey === currentChapterKey;

  const toggleChapter = (signKey: string) =>
    setChapterOpen((current) =>
      new Map(current).set(signKey, !isChapterOpen(signKey)),
    );

  const renderEntry = (item: StoryRouteItem) => {
    if (item.kind === "place") {
      return (
        <StoryRoutePlace
          battleCount={getPlaceBattleCount(item)}
          id={getStoryRoutePlaceId(item.key)}
          name={item.place.name}
          onSelect={() => onPlaceSelect(item)}
          opensSheet={opensSheet}
          reached={item.reached}
          selected={item.key === selectedKey}
        />
      );
    }

    /* Its turn in the cascade hasn't come: shown as it was (see `blocks`). */
    const isWaiting = waitingMilestoneIds.has(item.milestone.id);
    const { milestone } = item;
    const state = getStoryMilestoneState(milestone, nextMilestoneId);
    const motion = isWaiting
      ? null
      : milestone.isCompleted
        ? stampOrder.has(milestone.id)
          ? "recorded"
          : null
        : fadingMilestoneIds.has(milestone.id)
          ? "unrecorded"
          : null;

    /* A recorded stop on the way is a sticker, tinted in its badge's type. */
    const sticker =
      state === "done" && !item.optional
        ? getPokemonTypeCssVariables(milestone.badge?.type ?? null)
        : null;

    return (
      <StoryRouteStop
        id={getStoryRouteStopId(milestone.id)}
        memento={
          state === "done" ? (
            <StoryMilestoneMemento milestone={milestone} />
          ) : null
        }
        sticker={sticker}
        name={milestone.name}
        onSelect={() => onMilestoneSelect(milestone)}
        opensSheet={opensSheet}
        /* Named for its place (S.S. Anne, Silph Co.): said once. */
        place={
          milestone.place && milestone.place.name !== milestone.name
            ? milestone.place.name
            : null
        }
        selected={item.key === selectedKey}
        state={state}
        onAnimationEnd={(event) => {
          if (
            motion &&
            (event.animationName === "slap" ||
              event.animationName === "marker-in")
          ) {
            onMotionEnd(milestone.id);
          }
        }}
        marker={
          <MilestoneMarker
            badge={milestone.badge}
            popIn={motion !== null}
            ahead="art"
            sequence={milestone.sequence}
            /* An optional stop is a detour off the route: a step smaller. */
            size={item.optional ? "md" : "lg"}
            state={state}
            /* Still ahead: it sinks back, so the way you've come stands out. */
            className={
              state === "todo" ? "bg-surface-2 inset-ring-dash" : undefined
            }
            typeSlug={milestone.typeSlug}
          />
        }
        status={
          state === "done" ? (
            <>
              <span className="sr-only">Recorded </span>
              <PlayMomentTime
                value={milestone.completedAt}
                format="date"
                fallback="Recorded"
              />
            </>
          ) : state ===
            "next" /* The ring says it; the stop says it to a screen reader. */ ? null : !milestone.isAvailable ? (
            <span className="inline-flex items-center gap-1">
              <AppIcon icon={appIcons.status.locked} size="xs" />
              Locked
            </span>
          ) : milestone.sequence === null ? (
            "Optional"
          ) : null
        }
      />
    );
  };

  const chapterCard = (chapter: StoryRouteChapter, label: string) => {
    const stops = chapter.entries.flatMap((entry) =>
      entry.kind === "stop" ? [entry.milestone] : [],
    );

    return (
      <StoryChapterCard
        key={chapter.key}
        count={chapter.sign.count}
        current={chapter.key === liveChapterKey}
        milestones={stops}
        name={chapter.sign.name}
        nextMilestoneId={nextMilestoneId}
        onMilestoneSelect={onMilestoneSelect}
        onToggle={() => toggleChapter(chapter.key)}
        open={isChapterOpen(chapter.key)}
        opensSheet={opensSheet}
        selectedMilestoneId={
          selectedKey?.startsWith("stop-")
            ? Number(selectedKey.slice("stop-".length))
            : null
        }
      >
        <StoryRoute
          label={label}
          items={chapter.entries}
          getKey={(item) => item.key}
          isQuiet={(item) => item.optional}
          isTravelled={(item, next) =>
            isStoryRouteEntryDone(item) && isStoryRouteEntryDone(next)
          }
          renderStop={renderEntry}
        />
      </StoryChapterCard>
    );
  };

  return (
    <div
      role="region"
      aria-label={`${scope.label} route`}
      className="grid content-start gap-4"
    >
      {blocks.map((block) =>
        block.kind === "route" ? (
          splitStoryRouteChapters(block.entries).map((chapter) =>
            chapterCard(chapter, `${chapter.sign.name} route`),
          )
        ) : (
          <section
            key={block.key}
            aria-label="Chapters in any order"
            className="grid gap-3"
          >
            <p className="text-ink-2 text-13 flex items-center gap-2 px-2 font-extrabold">
              <AppIcon icon={appIcons.product.journey} size="sm" />
              In any order
            </p>
            {block.routes.flatMap((entries) =>
              splitStoryRouteChapters(entries).map((chapter) =>
                chapterCard(chapter, `${chapter.sign.name} route`),
              ),
            )}
          </section>
        ),
      )}
    </div>
  );
};
