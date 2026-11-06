import type { StoryRouteBlock, StoryRouteEntry } from "./story-route-model";

/* A stop is behind you once recorded; a sign or place once all before it is. */
export const isStoryRouteEntryDone = (entry: StoryRouteEntry) =>
  entry.kind === "stop" ? entry.milestone.isCompleted : entry.reached;

/* A route is walked once every stop that counts is behind you: optional stops never hold it back. */
const isRouteDone = (entries: StoryRouteEntry[]) =>
  entries.every(
    (entry) =>
      entry.kind !== "stop" || entry.optional || isStoryRouteEntryDone(entry),
  );

const CORNER = 14;

export type Point = { x: number; y: number };

/* A route's ends on the card, measured once it has landed. */
export type RouteEnds = {
  /* Its first marker or sign: centre and left edge. */
  first: Point & { left: number };
  last: Point;
};

/* One stretch of a fork, drawn over the card. */
export type ForkStretch = { d: string; key: string; travelled: boolean };

/* Down the line from `from`, round the corner and right into `to`'s left edge. */
const downAndIn = (from: Point, to: Point & { left: number }) =>
  to.x - from.x < CORNER * 2
    ? `M ${from.x} ${from.y} V ${to.y}`
    : [
        `M ${from.x} ${from.y}`,
        `V ${to.y - CORNER}`,
        `Q ${from.x} ${to.y} ${from.x + CORNER} ${to.y}`,
        `H ${to.left}`,
      ].join(" ");

/*
 * Where chapters played in any order fork off the route, so the whole Story
 * stays one connected line: the line runs on down from the stop before them,
 * turns right into each chapter's sign, and carries on into the chapter after
 * them.
 */
export const getForkStretches = (
  blocks: StoryRouteBlock[],
  points: Map<string, RouteEnds>,
): ForkStretch[] =>
  blocks.flatMap((block, index): ForkStretch[] => {
    if (block.kind !== "anyOrder") {
      return [];
    }

    const before = blocks[index - 1];
    const after = blocks[index + 1];
    const from = before ? points.get(before.key) : undefined;

    if (!from) {
      return [];
    }

    const beforeDone =
      before?.kind === "route"
        ? isStoryRouteEntryDone(before.entries[before.entries.length - 1])
        : false;
    const next = after?.kind === "route" ? points.get(after.key) : undefined;
    const nextDone =
      after?.kind === "route" && isStoryRouteEntryDone(after.entries[0]);

    return [
      ...block.routes.flatMap((entries, routeIndex) => {
        const ends = points.get(`${block.key}-${routeIndex}`);

        return ends
          ? [
              {
                d: downAndIn(from.last, ends.first),
                key: `${block.key}-${routeIndex}`,
                travelled: beforeDone && isStoryRouteEntryDone(entries[0]),
              },
            ]
          : [];
      }),
      ...(next
        ? [
            {
              d: downAndIn(from.last, next.first),
              key: `${block.key}-on`,
              travelled: block.routes.every(isRouteDone) && nextDone,
            },
          ]
        : []),
    ];
  });
