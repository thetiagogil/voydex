/*
 * The Story route's layout (#108): stops run left to right, turn at the end
 * of a row and run back, so the route never breaks. Every row has the same
 * number of slots, so a short route fills from the left and every route on
 * the page keeps one grid.
 */

export type StoryRouteDirection = "left" | "right";

/* One stop's place: its 1-based row and column, and the way its row runs. */
export type StoryRouteCell = {
  column: number;
  direction: StoryRouteDirection;
  row: number;
};

/* How the route joins one stop to the next: along the row, or round its end. */
export type StoryRouteSegment = {
  from: number;
  /* `turn` goes out to the row's end on `side`, down, and back in. */
  kind: "straight" | "turn";
  side: StoryRouteDirection;
  to: number;
};

export type StoryRouteLayout = {
  cells: StoryRouteCell[];
  segments: StoryRouteSegment[];
};

export const buildStoryRouteLayout = (
  count: number,
  columns: number,
): StoryRouteLayout => {
  const cells = Array.from({ length: count }, (_, index): StoryRouteCell => {
    const row = Math.floor(index / columns);
    const place = index % columns;
    const direction = row % 2 === 0 ? "right" : "left";

    return {
      column: direction === "right" ? place + 1 : columns - place,
      direction,
      row: row + 1,
    };
  });
  const segments = cells.slice(1).map((to, index): StoryRouteSegment => {
    const from = cells[index];

    return {
      from: index,
      /* One column is a straight line down, with nothing to turn round. */
      kind: from.row === to.row || columns === 1 ? "straight" : "turn",
      side: from.direction,
      to: index + 1,
    };
  });

  return { cells, segments };
};

/* Stops a row holds: one per 150px or so, three at least and seven at most. */
export const getStoryRouteColumns = (width: number) =>
  Math.min(7, Math.max(3, Math.floor(width / 150)));
