"use client";

import { useEffect, useLayoutEffect, useMemo, useRef, useState } from "react";

import { MilestoneMarker } from "@/modules/mainline/features/plays/shared/components/milestone-marker";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import type { StampOrder } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Card } from "@/shared/components/ui/card";

import {
  getForkStretches,
  isStoryRouteEntryDone as isDone,
  type ForkStretch,
  type RouteEnds,
} from "../../data/story-route-fork";
import {
  buildStoryRoute,
  type StoryRouteEntry,
} from "../../data/story-route-model";
import {
  foldWalkedPlaces,
  type StoryRouteItem,
} from "../../data/story-route-folds";
import type { StoryMilestone, StoryScope } from "../../types";
import { StoryRoute } from "./story-route";
import {
  getStoryRoutePlaceId,
  getStoryRouteStopId,
  StoryRouteFold,
  StoryRoutePlace,
  StoryRouteSign,
  StoryRouteStop,
} from "./story-route-stop";

type StoryRoutePlaceEntry = Extract<StoryRouteEntry, { kind: "place" }>;

const getStoryMilestoneState = (
  milestone: StoryMilestone,
  nextMilestoneId: number | null,
): PlayMilestoneState =>
  milestone.isCompleted
    ? "done"
    : milestone.id === nextMilestoneId
      ? "next"
      : "todo";

const isItemDone = (item: StoryRouteItem) =>
  item.kind === "fold" ? true : isDone(item);

/*
 * Story as one route in one card (#108, #199): every chapter in order down
 * one line, the places on the way to each milestone between them, side
 * content as optional stops where it sits (`buildStoryRoute`). The places
 * you've walked fold into one line each stretch, so the route stays short
 * behind you. Milestones recorded together cascade: each stop waits as it
 * was, then its marker stamps down, one after another in Story order; one
 * un-recorded pops back to its number.
 */
export const StoryRouteCard = ({
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
   * line and the signs fill in as their stamps land, not before.
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
  /* The walked stretches opened again, by their fold's key. */
  const [unfolded, setUnfolded] = useState<ReadonlySet<string>>(new Set());
  /* A selected place stays in view: its stretch never folds away under it. */
  const keepOpen = useMemo(
    () => (selectedKey ? new Set([...unfolded, selectedKey]) : unfolded),
    [selectedKey, unfolded],
  );

  /* An opened stretch hands focus to its first place, where the fold was. */
  const focusPlaceKey = useRef<string | null>(null);

  useEffect(() => {
    const key = focusPlaceKey.current;

    if (key) {
      focusPlaceKey.current = null;
      document.getElementById(getStoryRoutePlaceId(key))?.focus();
    }
  });

  const renderEntry = (item: StoryRouteItem) => {
    if (item.kind === "fold") {
      return (
        <StoryRouteFold
          names={item.places.map((entry) => entry.place.name)}
          onOpen={() => {
            focusPlaceKey.current = item.places[0]?.key ?? null;
            setUnfolded((current) => new Set([...current, item.key]));
          }}
        />
      );
    }

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

    if (item.kind === "sign") {
      return (
        <StoryRouteSign
          count={item.count}
          finished={item.finished}
          name={item.name}
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

    return (
      <StoryRouteStop
        id={getStoryRouteStopId(milestone.id)}
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
            badgeType={milestone.badgeType}
            popIn={motion !== null}
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
          ) : state === "next" ? (
            "Next objective"
          ) : !milestone.isAvailable ? (
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

  const containerRef = useRef<HTMLDivElement>(null);
  const [forks, setForks] = useState<ForkStretch[]>([]);

  /* The fork's stretches, drawn between where the routes' ends landed. */
  useLayoutEffect(() => {
    const container = containerRef.current;

    if (!container) {
      return;
    }

    const measure = () => {
      const box = container.getBoundingClientRect();
      const points = new Map<string, RouteEnds>();

      for (const routeElement of container.querySelectorAll<HTMLElement>(
        "[data-route-key]",
      )) {
        const nodes = [
          ...routeElement.querySelectorAll<HTMLElement>("[data-route-node]"),
        ].map((node) => {
          const rect = node.getBoundingClientRect();

          return {
            left: rect.left - box.left,
            x: rect.left - box.left + rect.width / 2,
            y: rect.top - box.top + rect.height / 2,
          };
        });
        const first = nodes[0];
        const last = nodes[nodes.length - 1];

        if (first && last) {
          points.set(routeElement.dataset.routeKey ?? "", {
            first,
            last: { x: last.x, y: last.y },
          });
        }
      }

      setForks(getForkStretches(blocks, points));
    };

    measure();
    const observer = new ResizeObserver(measure);
    observer.observe(container);

    return () => observer.disconnect();
  }, [blocks, keepOpen]);

  const route = (entries: StoryRouteEntry[], label: string, key: string) => (
    <div key={key} data-route-key={key}>
      <StoryRoute
        label={label}
        items={foldWalkedPlaces(entries, keepOpen)}
        getKey={(item) => item.key}
        isQuiet={(item) => item.optional}
        isTravelled={(item, next) => isItemDone(item) && isItemDone(next)}
        renderStop={renderEntry}
      />
    </div>
  );

  return (
    <Card
      role="region"
      aria-label={`${scope.label} route`}
      className="px-3 sm:px-5"
    >
      <div ref={containerRef} className="relative grid gap-6">
        {forks.length ? (
          <svg
            aria-hidden
            className="pointer-events-none absolute inset-0 size-full overflow-visible"
          >
            {forks.map((fork) => (
              <path
                key={fork.key}
                d={fork.d}
                fill="none"
                strokeLinecap="round"
                strokeWidth={4}
                strokeDasharray={fork.travelled ? undefined : "5 11"}
                className={
                  fork.travelled ? "stroke-progress/45" : "stroke-dash"
                }
              />
            ))}
          </svg>
        ) : null}
        {blocks.map((block) =>
          block.kind === "route" ? (
            route(block.entries, scope.label, block.key)
          ) : (
            <section
              key={block.key}
              aria-label="Chapters in any order"
              className="grid gap-3 pl-12"
            >
              <p className="text-ink-2 text-13 flex items-center gap-2 font-extrabold">
                <AppIcon icon={appIcons.product.journey} size="sm" />
                In any order
              </p>
              {block.routes.map((entries, routeIndex) => (
                <div
                  key={entries[0]?.key}
                  className="bg-surface-2 rounded-2xl px-2 py-3 sm:px-3"
                >
                  {route(
                    entries,
                    entries[0]?.kind === "sign" ? entries[0].name : scope.label,
                    `${block.key}-${routeIndex}`,
                  )}
                </div>
              ))}
            </section>
          ),
        )}
      </div>
    </Card>
  );
};
