import type { StoryRouteEntry } from "./story-route-model";

type StoryRoutePlaceEntry = Extract<StoryRouteEntry, { kind: "place" }>;

/* Places on the way, folded into one line until you open them again. */
export type StoryRouteFold = {
  key: string;
  kind: "fold";
  optional: false;
  places: StoryRoutePlaceEntry[];
};

export type StoryRouteItem = StoryRouteEntry | StoryRouteFold;

/*
 * The route with its stretches folded (#199): two or more places in a row
 * become one line ("Route 22, Route 2 and Viridian Forest"), so the route
 * reads as its milestones with the way between them a tap away. The stretch
 * leading to your next objective stays open, as does a stretch in `open` (by
 * its fold's key, or one of its places').
 */
export const foldPlaces = (
  entries: StoryRouteEntry[],
  open: ReadonlySet<string>,
  nextMilestoneId: number | null,
): StoryRouteItem[] => {
  const items: StoryRouteItem[] = [];
  let run: StoryRoutePlaceEntry[] = [];

  const flush = (closedBy: StoryRouteEntry | null) => {
    const key = run[0] ? `fold-${run[0].key}` : "";
    const leadsToNext =
      closedBy?.kind === "stop" && closedBy.milestone.id === nextMilestoneId;

    if (
      run.length >= 2 &&
      !leadsToNext &&
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
