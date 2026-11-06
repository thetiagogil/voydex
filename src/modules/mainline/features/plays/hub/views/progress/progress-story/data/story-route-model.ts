import type {
  StoryMilestone,
  StoryPlace,
  StoryScope,
  StorySection,
} from "../types";

/*
 * Story as one route: the scope's chapters in order on one line, a sign where
 * each begins, from the start through the League into the Post Game. Side
 * content never counts, so each piece sits on the route right after the beat
 * that opens it (`opensAfter`), joined by a quieter line; side content open
 * from the start closes the route under its own sign. Chapters played in any
 * order (Scarlet and Violet's three stories) are each a short route of their
 * own, side by side, before the route carries on.
 *
 * Where milestones have places, the route is a roadmap: before each
 * milestone come the places the story passes on the way to it (Route 22,
 * Route 2, Viridian Forest before Boulder Badge), each its own quiet stop.
 * A milestone stands for its own place, so a town with a badge shows once;
 * a place the story comes back to shows only where it first comes. A battle
 * away from its milestone's place sits on that place: on the way there if
 * the stretch passes it, or as a stop of its own just before the milestone
 * when the story comes back to it. Side content with a place sits where the
 * route passes that place, standing for it, instead of after the beat that
 * opens it; where the route passes the place before that beat, it stays
 * after the beat.
 */

export type StoryRouteEntry =
  | {
      count: string;
      /* Every milestone in the chapter is recorded. */
      finished: boolean;
      key: string;
      kind: "sign";
      name: string;
      /* Side content, reached by a quieter line. */
      optional: boolean;
      /* Every milestone before the sign on its route is recorded. */
      reached: boolean;
      /* The chapter it opens; null for the side content open from the start. */
      sectionId: number | null;
    }
  | {
      key: string;
      kind: "stop";
      milestone: StoryMilestone;
      /* Not needed to finish the Story: reached by a quieter line. */
      optional: boolean;
    }
  | {
      key: string;
      kind: "place";
      optional: false;
      place: StoryPlace;
      /* Every required milestone before it on the route is recorded. */
      reached: boolean;
      /* The milestone it leads to, whose battles here it shows. */
      toward: StoryMilestone;
    };

export type StoryRouteBlock =
  | { entries: StoryRouteEntry[]; key: string; kind: "route" }
  | { key: string; kind: "anyOrder"; routes: StoryRouteEntry[][] };

const isSideContent = (section: StorySection) =>
  section.chapterKind === "side-content";

/* Required milestones recorded, or all of them where none is required. */
export const formatStoryCount = (sections: StorySection[]) => {
  const total = sections.reduce((sum, section) => sum + section.totalCount, 0);
  const milestones = sections.flatMap((section) => section.milestones);

  return total
    ? `${sections.reduce((sum, section) => sum + section.completedCount, 0)} of ${total}`
    : `${milestones.filter((milestone) => milestone.isCompleted).length} of ${milestones.length}`;
};

/* Every required milestone recorded, or every milestone where none is required. */
export const isStoryFinished = (milestones: StoryMilestone[]) => {
  const required = milestones.filter(
    (milestone) => milestone.sequence !== null,
  );
  const counted = required.length ? required : milestones;

  return (
    counted.length > 0 && counted.every((milestone) => milestone.isCompleted)
  );
};

const isFinished = isStoryFinished;

export const buildStoryRoute = (scope: StoryScope): StoryRouteBlock[] => {
  const story = scope.sections.filter((section) => !isSideContent(section));
  const side = scope.sections.filter(isSideContent);
  const storyMilestoneIds = new Set(
    story.flatMap((section) =>
      section.milestones.map((milestone) => milestone.id),
    ),
  );
  const placeIndex = new Map(
    scope.places.map((place, index) => [place.id, index]),
  );
  const sideMilestones = side.flatMap((section) => section.milestones);

  /*
   * Where the route reaches each place, by the story milestones' order: a
   * place on the way to the k-th sits at k - 0.5, a milestone's own place at k.
   */
  const reachedAt = new Map<number, number>();
  const milestoneOrder = new Map<number, number>();
  let order = 0;

  /* Walks a chapter's milestones from `from`; returns the furthest place reached. */
  const reach = (section: StorySection, from: number) => {
    let furthest = from;

    for (const milestone of section.milestones) {
      const target = milestone.place
        ? (placeIndex.get(milestone.place.id) ?? -1)
        : -1;

      milestoneOrder.set(milestone.id, order);

      for (let index = furthest + 1; index <= target; index += 1) {
        reachedAt.set(
          scope.places[index].id,
          index === target ? order : order - 0.5,
        );
      }

      furthest = Math.max(furthest, target);
      order += 1;
    }

    return furthest;
  };

  /* Chapters played in any order each set out from where the route forks. */
  let reachedSoFar = -1;
  let forkFrom: number | null = null;
  let forkFurthest = -1;

  for (const section of story) {
    if (section.playsInAnyOrder) {
      forkFrom ??= reachedSoFar;
      forkFurthest = Math.max(forkFurthest, reach(section, forkFrom));
      continue;
    }

    if (forkFrom !== null) {
      reachedSoFar = forkFurthest;
      forkFrom = null;
    }

    reachedSoFar = reach(section, reachedSoFar);
  }

  /*
   * Side content at a place the route passes sits there, standing for the
   * place, unless the route reaches the place before what opens it.
   */
  const sideByPlace = new Map<number, StoryMilestone[]>();
  const placedSide = new Set<number>();

  for (const milestone of sideMilestones) {
    const at = milestone.place ? reachedAt.get(milestone.place.id) : undefined;
    const opener = milestone.opensAfter
      ? milestoneOrder.get(milestone.opensAfter.id)
      : undefined;

    if (milestone.place && at !== undefined && (opener ?? -1) <= at) {
      sideByPlace.set(milestone.place.id, [
        ...(sideByPlace.get(milestone.place.id) ?? []),
        milestone,
      ]);
      placedSide.add(milestone.id);
    }
  }

  /* Side content placed after the beat that opens it; the rest closes the route. */
  const sideByOpener = new Map<number, StoryMilestone[]>();
  const sideAnyTime: StoryMilestone[] = [];

  for (const milestone of sideMilestones) {
    if (placedSide.has(milestone.id)) {
      continue;
    }

    const opener = milestone.opensAfter;

    if (opener && storyMilestoneIds.has(opener.id)) {
      sideByOpener.set(opener.id, [
        ...(sideByOpener.get(opener.id) ?? []),
        milestone,
      ]);
    } else {
      sideAnyTime.push(milestone);
    }
  }

  const stop = (milestone: StoryMilestone, optional: boolean) => ({
    key: `stop-${milestone.id}`,
    kind: "stop" as const,
    milestone,
    optional,
  });

  /* Every required milestone so far is recorded: the places after it are reached. */
  let walked = true;
  /* The furthest place the route has shown, by its place in the story's order. */
  let shown = -1;
  /* Places already shown as a battle's own stop, ahead of where the route reaches them. */
  const shownEarly = new Set<number>();

  /* Side content already drawn, so a place two paths pass shows it once. */
  const drawnSide = new Set<number>();
  const pinnedAt = (place: StoryPlace) =>
    (sideByPlace.get(place.id) ?? []).flatMap((milestone) => {
      if (drawnSide.has(milestone.id)) {
        return [];
      }

      drawnSide.add(milestone.id);

      return [stop(milestone, true)];
    });

  /* The places on the way to a milestone, each with any side content there. */
  const placesBefore = (milestone: StoryMilestone): StoryRouteEntry[] => {
    const target = milestone.place
      ? (placeIndex.get(milestone.place.id) ?? -1)
      : -1;
    /* No place: the route shows none on the way to it. */
    const ahead = target < 0 ? [] : scope.places.slice(shown + 1, target);
    const aheadIds = new Set(ahead.map(({ id }) => id));
    const place = (where: StoryPlace, revisit: boolean): StoryRouteEntry => ({
      key: `place-${milestone.id}-${where.id}${revisit ? "-again" : ""}`,
      kind: "place",
      optional: false,
      place: where,
      reached: walked,
      toward: milestone,
    });
    /*
     * A battle at a place the route has passed (or doesn't reach on the way
     * here): a stop of its own first.
     */
    const revisits = milestone.battlePlaces
      .filter((where) => !aheadIds.has(where.id))
      .map((where) => {
        shownEarly.add(where.id);
        return place(where, true);
      });

    const battlePlaceIds = new Set(milestone.battlePlaces.map(({ id }) => id));

    /* Side content at a place stands for it, unless a battle is fought there too. */
    return [
      ...revisits,
      ...ahead.flatMap((where) =>
        shownEarly.has(where.id) && !battlePlaceIds.has(where.id)
          ? pinnedAt(where)
          : sideByPlace.has(where.id) && !battlePlaceIds.has(where.id)
            ? pinnedAt(where)
            : [place(where, false), ...pinnedAt(where)],
      ),
    ];
  };

  /* A milestone after the places that lead to it, then what it opens. */
  const milestoneEntries = (milestone: StoryMilestone) => {
    const entries: StoryRouteEntry[] = [
      ...placesBefore(milestone),
      stop(milestone, milestone.sequence === null),
    ];
    const target = milestone.place
      ? (placeIndex.get(milestone.place.id) ?? -1)
      : -1;

    if (milestone.place && target > shown) {
      entries.push(...pinnedAt(milestone.place));
      shown = target;
    }

    for (const opened of sideByOpener.get(milestone.id) ?? []) {
      entries.push(stop(opened, true));
    }

    if (milestone.sequence !== null) {
      walked = walked && milestone.isCompleted;
    }

    return entries;
  };

  /* A chapter on the route: its sign, then each milestone and the way to it. */
  const chapterEntries = (section: StorySection, reached: boolean) => [
    {
      count: formatStoryCount([section]),
      finished: isFinished(section.milestones),
      key: `sign-${section.id}`,
      kind: "sign" as const,
      name: section.name,
      optional: false,
      reached,
      sectionId: section.id,
    },
    ...section.milestones.flatMap(milestoneEntries),
  ];

  const blocks: StoryRouteBlock[] = [];
  let route: StoryRouteEntry[] = [];
  let anyOrder: StorySection[] = [];
  /* Everything required before this point on the route is recorded. */
  let reached = true;
  const closeRoute = () => {
    if (route.length) {
      blocks.push({ entries: route, key: route[0].key, kind: "route" });
      route = [];
    }
  };
  const closeAnyOrder = () => {
    if (anyOrder.length) {
      /* Each chapter sets out from where the route forks, walked as far as it. */
      const forkShown = shown;
      const forkWalked = walked;
      let furthestShown = shown;
      let allWalked = forkWalked;

      blocks.push({
        key: `any-${anyOrder[0].id}`,
        kind: "anyOrder",
        routes: anyOrder.map((section) => {
          shown = forkShown;
          walked = forkWalked;

          const entries = chapterEntries(section, reached);

          furthestShown = Math.max(furthestShown, shown);
          allWalked = allWalked && walked;

          return entries;
        }),
      });
      shown = furthestShown;
      walked = allWalked;
      reached = reached && anyOrder.every((s) => isFinished(s.milestones));
      anyOrder = [];
    }
  };

  for (const section of story) {
    if (section.playsInAnyOrder) {
      closeRoute();
      anyOrder.push(section);
      continue;
    }

    closeAnyOrder();
    route.push(...chapterEntries(section, reached));
    reached =
      reached &&
      section.milestones.every(
        (milestone) => milestone.isCompleted || milestone.sequence === null,
      );
  }

  closeAnyOrder();

  if (sideAnyTime.length) {
    route.push(
      {
        count: `${sideAnyTime.filter((milestone) => milestone.isCompleted).length} of ${sideAnyTime.length}`,
        finished: isFinished(sideAnyTime),
        key: `sign-any-time`,
        kind: "sign",
        name: side[0]?.name ?? "Side Content",
        optional: true,
        reached,
        sectionId: null,
      },
      ...sideAnyTime.map((milestone) => stop(milestone, true)),
    );
  }

  closeRoute();

  return blocks;
};

/* A stop is behind you once recorded; a sign or place once all before it is. */
export const isStoryRouteEntryDone = (entry: StoryRouteEntry) =>
  entry.kind === "stop" ? entry.milestone.isCompleted : entry.reached;
