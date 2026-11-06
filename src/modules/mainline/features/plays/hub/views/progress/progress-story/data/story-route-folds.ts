import type { StoryRouteEntry } from "./story-route-model";

type StoryRoutePlaceEntry = Extract<StoryRouteEntry, { kind: "place" }>;

/* Places you've walked, folded into one line until you open them again. */
export type StoryRouteFold = {
  key: string;
  kind: "fold";
  optional: false;
  places: StoryRoutePlaceEntry[];
};

export type StoryRouteItem = StoryRouteEntry | StoryRouteFold;

/*
 * The route with each walked stretch folded (#199): two or more places in a
 * row that you've passed, before a milestone you've recorded, become one
 * line ("Route 22, Route 2 and Viridian Forest"), so the way behind you stays
 * short. A stretch in `open` (by its fold's key, or one of its places') stays
 * as it is.
 */
export const foldWalkedPlaces = (
  entries: StoryRouteEntry[],
  open: ReadonlySet<string>,
): StoryRouteItem[] => {
  const items: StoryRouteItem[] = [];
  let run: StoryRoutePlaceEntry[] = [];

  const flush = (closedBy: StoryRouteEntry | null) => {
    const key = run[0] ? `fold-${run[0].key}` : "";
    const walked =
      closedBy?.kind === "stop" &&
      closedBy.milestone.isCompleted &&
      run.every((entry) => entry.reached);

    if (
      run.length >= 2 &&
      walked &&
      !open.has(key) &&
      !run.some((entry) => open.has(entry.key))
    ) {
      items.push({ key, kind: "fold", optional: false, places: run });
    } else {
      items.push(...run);
    }

    run = [];
  };

  for (const entry of entries) {
    if (entry.kind === "place") {
      run.push(entry);
      continue;
    }

    flush(entry);
    items.push(entry);
  }

  flush(null);

  return items;
};
