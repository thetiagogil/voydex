"use client";

import { useLayoutEffect, useRef, useState, type ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

/* A stop's centre on the line. */
type Point = { x: number; y: number };

/*
 * A Story route (#108, #199): its stops in order down one line, each beside
 * its marker. The line is solid in the progress tint where you've been and
 * dashed ahead; a stretch to or from an optional stop (side content, a
 * detour) is dotted, so it reads as a place you may stop and not a step.
 */
export const StoryRoute = <TItem,>({
  getKey,
  isQuiet,
  isTravelled,
  items,
  label,
  renderStop,
}: {
  getKey: (item: TItem) => string;
  /* An optional stop, reached by a dotted stretch. */
  isQuiet: (item: TItem) => boolean;
  /* The stretch from it to the next is walked: both are behind you. */
  isTravelled: (item: TItem, next: TItem) => boolean;
  items: TItem[];
  label: string;
  renderStop: (item: TItem) => ReactNode;
}) => {
  const listRef = useRef<HTMLOListElement>(null);
  const [points, setPoints] = useState<Point[] | null>(null);

  /* The line is drawn where each stop's marker landed. */
  useLayoutEffect(() => {
    const list = listRef.current;

    if (!list) {
      return;
    }

    const measure = () => {
      const box = list.getBoundingClientRect();

      setPoints(
        [...list.querySelectorAll<HTMLElement>("[data-route-stop]")]
          .sort(
            (a, b) => Number(a.dataset.routeStop) - Number(b.dataset.routeStop),
          )
          .map((stop) => {
            const node = (
              stop.querySelector("[data-route-node]") ?? stop
            ).getBoundingClientRect();

            return {
              x: node.left - box.left + node.width / 2,
              y: node.top - box.top + node.height / 2,
            };
          }),
      );
    };

    measure();
    const observer = new ResizeObserver(measure);
    observer.observe(list);

    return () => observer.disconnect();
  }, [items.length]);

  return (
    <ol ref={listRef} aria-label={label} className="relative grid gap-y-1">
      {points ? (
        <svg
          aria-hidden
          className="pointer-events-none absolute inset-0 size-full overflow-visible"
        >
          {/* Points from before a chapter folded or opened wait for the next measure. */}
          {points.slice(1, items.length).map((to, index) => {
            const from = points[index];
            const travelled = isTravelled(items[index], items[index + 1]);
            const quiet = isQuiet(items[index]) || isQuiet(items[index + 1]);

            return (
              <path
                key={`${getKey(items[index])}-line`}
                d={`M ${from.x} ${from.y} L ${to.x} ${to.y}`}
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
            );
          })}
        </svg>
      ) : null}
      {items.map((item, index) => (
        <li
          key={getKey(item)}
          data-route-stop={index}
          className={cn(
            "relative flex min-w-0",
            points === null && "invisible",
          )}
        >
          {renderStop(item)}
        </li>
      ))}
    </ol>
  );
};
