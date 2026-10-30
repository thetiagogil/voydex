import type { StoryRouteBlock, StoryRouteEntry } from "./story-route-model";

/* A stop is behind you once recorded; a sign once all before it is. */
export const isStoryRouteEntryDone = (entry: StoryRouteEntry) =>
  entry.kind === "sign" ? entry.reached : entry.milestone.isCompleted;

/* A route is walked once every stop that counts is behind you: optional stops never hold it back. */
const isRouteDone = (entries: StoryRouteEntry[]) =>
  entries.every(
    (entry) =>
      entry.kind === "sign" || entry.optional || isStoryRouteEntryDone(entry),
  );

/* How far in from the card's left edge the trunk runs when the paths stack. */
const TRUNK_X = 6;
const CORNER = 14;

export type Point = { x: number; y: number };

/* A route's ends on the card, measured once it has landed. */
export type RouteEnds = {
  /* The top and bottom of the route, or of the band it sits in. */
  bottom: number;
  top: number;
  /* Half a column of its grid: how far the line steps out of its last stop. */
  halfColumn: number;
  /* Its first marker or sign: centre, left edge and top. */
  first: Point & { left: number; top: number };
  last: Point;
  /* The way the route runs out of its last stop. */
  lastStep: 1 | -1;
};

/* One stretch of a fork, drawn over the card. */
export type ForkStretch = { d: string; key: string; travelled: boolean };

/*
 * How chapters played in any order sit: stacked one under another (`rows`),
 * or side by side as lanes on a wide card (`lanes`).
 */
export type ForkLayout = "lanes" | "rows";

/* Out of a route's last stop the way its row runs, then down to `y`. */
const leave = (ends: RouteEnds, y: number) => {
  const { last, lastStep } = ends;
  const exitX = last.x + lastStep * ends.halfColumn;

  return {
    d: [
      `M ${last.x} ${last.y}`,
      `H ${exitX - lastStep * CORNER}`,
      `Q ${exitX} ${last.y} ${exitX} ${last.y + CORNER}`,
      `V ${y - CORNER}`,
    ].join(" "),
    x: exitX,
  };
};

/* From `(x, y)` across to `toX`, rounding the corner, then down to `toY`. */
const acrossAndDown = (x: number, y: number, toX: number, toY: number) => {
  const side = Math.sign(toX - x) || 1;

  return [
    `Q ${x} ${y} ${x + side * CORNER} ${y}`,
    `H ${toX - side * CORNER}`,
    `Q ${toX} ${y} ${toX} ${y + CORNER}`,
    `V ${toY}`,
  ].join(" ");
};

/*
 * Where chapters played in any order fork off the route, so the whole Story
 * stays one connected line. Stacked, the line leaves the stop before them
 * down a trunk at the card's left edge, branches right into each chapter's
 * sign, and carries on into the chapter after them. As lanes (each straight
 * down), it splits over them into the top of each lane, and each lane runs on
 * down to join the chapter after them.
 */
export const getForkStretches = (
  blocks: StoryRouteBlock[],
  points: Map<string, RouteEnds>,
  layout: ForkLayout,
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
    const lanes = block.routes.flatMap((entries, routeIndex) => {
      const ends = points.get(`${block.key}-${routeIndex}`);

      return ends ? [{ ends, entries, key: `${block.key}-${routeIndex}` }] : [];
    });
    const next = after?.kind === "route" ? points.get(after.key) : undefined;
    const allDone = block.routes.every(isRouteDone);
    const nextDone =
      after?.kind === "route" && isStoryRouteEntryDone(after.entries[0]);

    if (layout === "rows") {
      const gapY = from.bottom + 16;
      const out = leave(from, gapY);
      /* Down the trunk and right into a sign's left edge. */
      const toTrunk = (to: Point & { left: number }) =>
        [
          out.d,
          acrossAndDown(out.x, gapY, TRUNK_X, to.y - CORNER),
          `Q ${TRUNK_X} ${to.y} ${TRUNK_X + CORNER} ${to.y}`,
          `H ${to.left}`,
        ].join(" ");

      return [
        ...lanes.map(({ ends, entries, key }) => ({
          d: toTrunk(ends.first),
          key,
          travelled: beforeDone && isStoryRouteEntryDone(entries[0]),
        })),
        ...(next
          ? [
              {
                d: toTrunk(next.first),
                key: `${block.key}-on`,
                travelled: allDone && nextDone,
              },
            ]
          : []),
      ];
    }

    /* Split just above the lanes, into the top of each lane's first sign. */
    const splitY = Math.min(...lanes.map(({ ends }) => ends.top)) - 16;
    const out = leave(from, splitY);
    const splits = lanes.map(({ ends, entries, key }) => ({
      d: [
        out.d,
        acrossAndDown(out.x, splitY, ends.first.x, ends.first.top),
      ].join(" "),
      key,
      travelled: beforeDone && isStoryRouteEntryDone(entries[0]),
    }));

    if (!next) {
      return splits;
    }

    /* Each lane's end straight on down, under the lanes, into the chapter after them. */
    const joinY = Math.max(...lanes.map(({ ends }) => ends.bottom)) + 16;
    const joins = lanes.map(({ ends, entries, key }) => {
      return {
        d: [
          `M ${ends.last.x} ${ends.last.y}`,
          `V ${joinY - CORNER}`,
          acrossAndDown(ends.last.x, joinY, next.first.x, next.first.top),
        ].join(" "),
        key: `${key}-join`,
        travelled: isRouteDone(entries) && nextDone,
      };
    });

    return [...splits, ...joins];
  });
