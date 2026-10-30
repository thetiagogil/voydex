"use client";

import { useLayoutEffect, useMemo, useRef, useState } from "react";

import { MilestoneMarker } from "@/modules/mainline/features/plays/shared/components/milestone-marker";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import type { StampOrder } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

import { getStoryRouteColumns } from "../../data/story-route-layout";
import {
  getForkStretches,
  isStoryRouteEntryDone as isDone,
  type ForkLayout,
  type ForkStretch,
  type RouteEnds,
} from "../../data/story-route-fork";
import {
  buildStoryRoute,
  type StoryRouteEntry,
} from "../../data/story-route-model";
import type { StoryMilestone, StoryScope } from "../../types";
import { StoryRoute } from "./story-route";
import {
  getStoryRouteStopId,
  StoryRouteSign,
  StoryRouteStop,
} from "./story-route-stop";

/* From this wide, chapters played in any order sit side by side as lanes. */
const LANES_MIN_WIDTH = 960;

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
 * Story as one route in one card (#108): every chapter in order, side
 * content as optional stops after what opens it (`buildStoryRoute`).
 * Milestones recorded together cascade: each stop waits as it was, then its
 * marker stamps down, one after another in Story order; one un-recorded pops
 * back to its number.
 */
export const StoryRouteCard = ({
  fadingMilestoneIds,
  onMilestoneSelect,
  onMotionEnd,
  scope,
  selectedMilestoneId,
  stampOrder,
  waitingMilestoneIds,
}: {
  /* The milestones un-recorded a moment ago, whose markers pop back once. */
  fadingMilestoneIds: ReadonlySet<number>;
  onMilestoneSelect: (milestone: StoryMilestone) => void;
  /* Called once a marker has stamped or popped. */
  onMotionEnd: (milestoneId: number) => void;
  scope: StoryScope;
  /* The milestone open in the sheet right now, if any. */
  selectedMilestoneId: number | null;
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

  const renderEntry = (entry: StoryRouteEntry, stacked = false) => {
    if (entry.kind === "sign") {
      return (
        <StoryRouteSign
          stacked={stacked}
          count={entry.count}
          finished={entry.finished}
          name={entry.name}
        />
      );
    }

    /* Its turn in the cascade hasn't come: shown as it was (see `parts`). */
    const isWaiting = waitingMilestoneIds.has(entry.milestone.id);
    const { milestone } = entry;
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
        stacked={stacked}
        id={getStoryRouteStopId(milestone.id)}
        name={milestone.name}
        onSelect={() => onMilestoneSelect(entry.milestone)}
        selected={milestone.id === selectedMilestoneId}
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
            size={entry.optional || stacked ? "md" : "lg"}
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
          ) : (
            <span className="sr-only">Not recorded</span>
          )
        }
      />
    );
  };

  const containerRef = useRef<HTMLDivElement>(null);
  const [columns, setColumns] = useState<number | null>(null);
  const [forks, setForks] = useState<ForkStretch[]>([]);
  /* Chapters played in any order sit side by side on a wide card. */
  const [forkLayout, setForkLayout] = useState<ForkLayout>("rows");

  /*
   * One column count for every route on the card, from its width; and the
   * fork's stretches, drawn between where the routes' ends landed.
   */
  useLayoutEffect(() => {
    const container = containerRef.current;

    if (!container) {
      return;
    }

    const measure = () => {
      const box = container.getBoundingClientRect();
      const points = new Map<string, RouteEnds>();
      const routeColumns = getStoryRouteColumns(box.width);
      const layout: ForkLayout =
        box.width >= LANES_MIN_WIDTH ? "lanes" : "rows";

      setColumns(routeColumns);
      setForkLayout(layout);

      for (const routeElement of container.querySelectorAll<HTMLElement>(
        "[data-route-key]",
      )) {
        const nodes = [
          ...routeElement.querySelectorAll<HTMLElement>("[data-route-stop]"),
        ]
          .sort(
            (a, b) => Number(a.dataset.routeStop) - Number(b.dataset.routeStop),
          )
          .map((stop) => {
            const node = (
              stop.querySelector("[data-route-node]") ?? stop
            ).getBoundingClientRect();

            return {
              left: node.left - box.left,
              top: node.top - box.top,
              x: node.left - box.left + node.width / 2,
              y: node.top - box.top + node.height / 2,
            };
          });
        const first = nodes[0];
        const last = nodes[nodes.length - 1];
        const beforeLast = nodes[nodes.length - 2];
        const routeBox = routeElement.getBoundingClientRect();
        const outer = (
          routeElement.closest("[data-route-band]") ?? routeElement
        ).getBoundingClientRect();
        const ownColumns =
          routeElement.closest("[data-route-band]") && layout === "lanes"
            ? 1
            : routeColumns;

        if (first && last) {
          points.set(routeElement.dataset.routeKey ?? "", {
            bottom: outer.bottom - box.top,
            top: outer.top - box.top,
            first: { left: first.left, top: first.top, x: first.x, y: first.y },
            halfColumn: routeBox.width / ownColumns / 2,
            last: { x: last.x, y: last.y },
            lastStep:
              beforeLast &&
              Math.abs(beforeLast.y - last.y) < 4 &&
              beforeLast.x > last.x
                ? -1
                : 1,
          });
        }
      }

      setForks(getForkStretches(blocks, points, layout));
    };

    measure();
    const observer = new ResizeObserver(measure);
    observer.observe(container);

    return () => observer.disconnect();
  }, [blocks, forkLayout]);

  const route = (
    entries: StoryRouteEntry[],
    label: string,
    key: string,
    stacked = false,
  ) => (
    <div key={key} data-route-key={key}>
      <StoryRoute
        stacked={stacked}
        columns={columns}
        label={label}
        items={entries}
        getKey={(entry) => entry.key}
        isQuiet={(entry) => entry.optional}
        isTravelled={(entry, next) => isDone(entry) && isDone(next)}
        renderStop={(entry) => renderEntry(entry, stacked)}
      />
    </div>
  );

  return (
    <Card
      role="region"
      aria-label={`${scope.label} route`}
      className="px-4 sm:px-7"
    >
      <div ref={containerRef} className="relative grid gap-8">
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
              className={cn(
                "grid",
                forkLayout === "lanes" ? "gap-9" : "gap-3 pl-6",
              )}
            >
              <p className="text-ink-2 text-13 flex items-center gap-2 font-extrabold">
                <AppIcon icon={appIcons.product.journey} size="sm" />
                In any order
              </p>
              <div
                className={cn(
                  "grid gap-3",
                  forkLayout === "lanes" && "grid-cols-3 items-start gap-4",
                )}
              >
                {block.routes.map((entries, routeIndex) => (
                  <div
                    key={entries[0]?.key}
                    data-route-band
                    className="bg-surface-2 rounded-2xl px-3 py-4 sm:px-4"
                  >
                    {route(
                      entries,
                      entries[0]?.kind === "sign"
                        ? entries[0].name
                        : scope.label,
                      `${block.key}-${routeIndex}`,
                      forkLayout === "lanes",
                    )}
                  </div>
                ))}
              </div>
            </section>
          ),
        )}
      </div>
    </Card>
  );
};
