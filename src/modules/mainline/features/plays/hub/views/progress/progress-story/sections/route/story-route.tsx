"use client";

import {
  useLayoutEffect,
  useMemo,
  useRef,
  useState,
  type ReactNode,
} from "react";

import { cn } from "@/shared/utils/cn";

import {
  buildStoryRouteLayout,
  type StoryRouteSegment,
} from "../../data/story-route-layout";

const TURN_RADIUS = 32;

/* A stop's centre, and half the width and height of its marker or sign. */
type Point = { half: number; x: number; y: number };

/* One stretch of the route as an SVG path: along a row, or round its end. */
const getSegmentPath = (
  segment: StoryRouteSegment,
  from: Point,
  to: Point,
  width: number,
) => {
  if (segment.kind === "straight") {
    return `M ${from.x} ${from.y} L ${to.x} ${to.y}`;
  }

  const sign = segment.side === "right" ? 1 : -1;
  const edge = segment.side === "right" ? width : 0;
  const radius = Math.min(TURN_RADIUS, (to.y - from.y) / 2);
  const inside = edge - sign * radius;

  return [
    `M ${from.x} ${from.y}`,
    `H ${inside}`,
    `Q ${edge} ${from.y} ${edge} ${from.y + radius}`,
    `V ${to.y - radius}`,
    `Q ${edge} ${to.y} ${inside} ${to.y}`,
    `H ${to.x}`,
  ].join(" ");
};

/*
 * A chevron pointing the way the route runs: halfway along the line you see
 * between two markers, or halfway down a turn.
 */
const getArrowPath = (
  segment: StoryRouteSegment,
  from: Point,
  to: Point,
  width: number,
) => {
  if (segment.kind === "straight") {
    const sign = to.x > from.x ? 1 : -1;
    const x = (from.x + sign * from.half + (to.x - sign * to.half)) / 2;

    return `M ${x - 3 * sign} ${from.y - 5} L ${x + 2 * sign} ${from.y} L ${x - 3 * sign} ${from.y + 5}`;
  }

  const x = segment.side === "right" ? width : 0;
  const y = (from.y + to.y) / 2;

  return `M ${x - 5} ${y - 3} L ${x} ${y + 2} L ${x + 5} ${y - 3}`;
};

/*
 * A Story route (#108): its stops in order on one grid, turning at the end of
 * each row and running back, so the line never breaks. The line is solid in
 * the progress tint where you've been and dashed ahead, with a chevron on
 * each stretch for the way it runs. A stretch to or from an optional stop
 * (side content, a detour) is dotted, with no chevron, so it reads as a
 * place you may stop and not a step. The DOM keeps the stops' order, so the
 * keyboard and screen readers read it in order whichever way a row runs.
 */
export const StoryRoute = <TItem,>({
  stacked = false,
  columns,
  getKey,
  isQuiet,
  isTravelled,
  items,
  label,
  renderStop,
}: {
  /*
   * One stop per row, each beside its marker, the line straight down their
   * markers: a lane of a fork.
   */
  stacked?: boolean;
  /*
   * Stops a row holds, from the card's width so every route on it keeps one
   * grid; null until it is measured.
   */
  columns: number | null;
  getKey: (item: TItem) => string;
  /* An optional stop, reached by a dotted stretch with no chevron. */
  isQuiet: (item: TItem) => boolean;
  /* The stretch from it to the next is walked: both are behind you. */
  isTravelled: (item: TItem, next: TItem) => boolean;
  items: TItem[];
  label: string;
  renderStop: (item: TItem) => ReactNode;
}) => {
  const gridRef = useRef<HTMLOListElement>(null);
  const [geometry, setGeometry] = useState<{
    points: Point[];
    width: number;
  } | null>(null);
  const layout = useMemo(
    () => buildStoryRouteLayout(items.length, stacked ? 1 : (columns ?? 5)),
    [columns, items.length, stacked],
  );

  /* The line is drawn where each stop landed. */
  useLayoutEffect(() => {
    const grid = gridRef.current;

    if (!grid) {
      return;
    }

    const measure = () => {
      const box = grid.getBoundingClientRect();

      setGeometry({
        points: [...grid.querySelectorAll<HTMLElement>("[data-route-stop]")]
          .sort(
            (a, b) => Number(a.dataset.routeStop) - Number(b.dataset.routeStop),
          )
          .map((stop) => {
            const rect = stop.getBoundingClientRect();
            const node = stop
              .querySelector("[data-route-node]")
              ?.getBoundingClientRect();

            return {
              half: (node?.width ?? 0) / 2,
              /* Through the middle of its marker or sign. */
              x: node
                ? node.left - box.left + node.width / 2
                : rect.left - box.left + rect.width / 2,
              /* Through the middle of its marker or sign, however tall. */
              y: node
                ? node.top - box.top + node.height / 2
                : rect.top - box.top,
            };
          }),
        width: box.width,
      });
    };

    measure();
    const observer = new ResizeObserver(measure);
    observer.observe(grid);

    return () => observer.disconnect();
  }, [columns, items.length]);

  return (
    <ol
      ref={gridRef}
      aria-label={label}
      className={cn(
        "relative grid",
        stacked ? "gap-y-3" : "gap-y-5",
        columns === null && "invisible",
      )}
      style={{
        gridTemplateColumns: `repeat(${stacked ? 1 : (columns ?? 5)}, minmax(0, 1fr))`,
      }}
    >
      {geometry ? (
        <svg
          aria-hidden
          className="pointer-events-none absolute inset-0 size-full overflow-visible"
        >
          {layout.segments.map((segment) => {
            const from = geometry.points[segment.from];
            const to = geometry.points[segment.to];

            if (!from || !to) {
              return null;
            }

            const travelled = isTravelled(
              items[segment.from],
              items[segment.to],
            );
            const quiet =
              isQuiet(items[segment.from]) || isQuiet(items[segment.to]);

            return (
              <g key={`${segment.from}-${segment.to}`}>
                <path
                  d={getSegmentPath(segment, from, to, geometry.width)}
                  fill="none"
                  strokeLinecap="round"
                  strokeWidth={4}
                  strokeDasharray={
                    quiet ? "0.5 9" : travelled ? undefined : "5 11"
                  }
                  className={
                    travelled
                      ? "stroke-progress/45"
                      : quiet
                        ? "stroke-mute"
                        : "stroke-dash"
                  }
                />
                {/* A lane runs straight down: its direction needs no chevron. */}
                {quiet || stacked ? null : (
                  <path
                    d={getArrowPath(segment, from, to, geometry.width)}
                    fill="none"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth={2.5}
                    className={travelled ? "stroke-progress" : "stroke-mute"}
                  />
                )}
              </g>
            );
          })}
        </svg>
      ) : null}
      {items.map((item, index) => {
        const cell = layout.cells[index];

        return (
          <li
            key={getKey(item)}
            data-route-stop={index}
            style={{ gridColumn: cell?.column, gridRow: cell?.row }}
            className={cn(
              "relative flex min-w-0 px-1.5",
              stacked ? "justify-start" : "justify-center",
            )}
          >
            {renderStop(item)}
          </li>
        );
      })}
    </ol>
  );
};
