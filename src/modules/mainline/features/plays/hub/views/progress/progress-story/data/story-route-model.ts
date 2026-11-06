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
 * Where the game has a roadmap (`scope.steps`, from its walkthrough), the
 * route is that roadmap: its places and milestones in the walkthrough's
 * order, places as quiet stops (a place the story comes back to shows again),
 * side content where the walkthrough meets it, and a chapter's sign where
 * its first step comes. A place's battles are those of the milestone it
 * leads to that are fought there (Red and Blue's rival on Route 22).
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
      /* What happens there, in a line; null where nothing does. */
      note: string | null;
      optional: false;
      place: StoryPlace;
      /* The milestone it leads to is recorded: you've walked it. */
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

export const buildStoryRoute = (scope: StoryScope): StoryRouteBlock[] =>
  scope.steps.length ? buildRoadmapRoute(scope) : buildChapterRoute(scope);

const stop = (milestone: StoryMilestone, optional: boolean) => ({
  key: `stop-${milestone.id}`,
  kind: "stop" as const,
  milestone,
  optional,
});

const sign = (section: StorySection, reached: boolean): StoryRouteEntry => ({
  count: formatStoryCount([section]),
  finished: isFinished(section.milestones),
  key: `sign-${section.id}`,
  kind: "sign",
  name: section.name,
  optional: false,
  reached,
  sectionId: section.id,
});

/* Side content open from the start (or with nothing placing it), under its own sign. */
const anyTimeEntries = (
  milestones: StoryMilestone[],
  name: string,
  reached: boolean,
): StoryRouteEntry[] =>
  milestones.length
    ? [
        {
          count: `${milestones.filter((milestone) => milestone.isCompleted).length} of ${milestones.length}`,
          finished: isFinished(milestones),
          key: `sign-any-time`,
          kind: "sign",
          name,
          optional: true,
          reached,
          sectionId: null,
        },
        ...milestones.map((milestone) => stop(milestone, true)),
      ]
    : [];

/*
 * A game with a roadmap: its steps in order. Each step belongs to the chapter
 * of the next story milestone at or after it, so the places on the way to a
 * chapter's first milestone come after its sign.
 */
const buildRoadmapRoute = (scope: StoryScope): StoryRouteBlock[] => {
  const sectionOf = new Map<number, StorySection>();
  const milestoneById = new Map<number, StoryMilestone>();

  for (const section of scope.sections) {
    for (const milestone of section.milestones) {
      sectionOf.set(milestone.id, section);
      milestoneById.set(milestone.id, milestone);
    }
  }

  type RoadmapStep = {
    id: number;
    milestone: StoryMilestone | null;
    note: string | null;
    place: StoryPlace | null;
  };

  const steps = scope.steps.flatMap((step): RoadmapStep[] => {
    const milestone =
      step.milestoneId === null ? null : milestoneById.get(step.milestoneId);

    return milestone
      ? [{ id: step.id, milestone, note: null, place: null }]
      : step.place
        ? [{ id: step.id, milestone: null, note: step.note, place: step.place }]
        : [];
  });
  const isStoryStep = (step: RoadmapStep) =>
    step.milestone !== null &&
    !isSideContent(sectionOf.get(step.milestone.id) as StorySection);
  /* The chapter each step belongs to, and the milestone each place leads to. */
  const chapterAt: (StorySection | null)[] = [];
  const towardAt: (StoryMilestone | null)[] = [];
  let chapter: StorySection | null = null;
  let toward: StoryMilestone | null = null;

  for (let index = steps.length - 1; index >= 0; index -= 1) {
    const step = steps[index];

    if (isStoryStep(step) && step.milestone) {
      chapter = sectionOf.get(step.milestone.id) ?? chapter;
    }

    if (step.milestone && step.milestone.sequence !== null) {
      toward = step.milestone;
    }

    chapterAt[index] = chapter;
    towardAt[index] = toward;
  }

  const entries: StoryRouteEntry[] = [];
  const placed = new Set<number>();
  let shownChapter: StorySection | null = null;
  /* Every required milestone so far is recorded. */
  let walked = true;

  steps.forEach((step, index) => {
    const stepChapter = chapterAt[index];

    if (stepChapter && stepChapter !== shownChapter) {
      entries.push(sign(stepChapter, walked));
      shownChapter = stepChapter;
    }

    if (step.milestone) {
      placed.add(step.milestone.id);
      entries.push(stop(step.milestone, step.milestone.sequence === null));

      if (step.milestone.sequence !== null) {
        walked = walked && step.milestone.isCompleted;
      }

      return;
    }

    const leadsTo = towardAt[index];

    if (step.place && leadsTo) {
      entries.push({
        key: `place-${step.id}`,
        kind: "place",
        note: step.note,
        optional: false,
        place: step.place,
        /* Walked once the milestone it leads to is recorded, never past it. */
        reached: leadsTo.isCompleted,
        toward: leadsTo,
      });
    }
  });

  /* Anything the roadmap leaves out still shows, at its chapter's end or under Side Content. */
  for (const section of scope.sections) {
    const missing = section.milestones.filter(
      (milestone) => !placed.has(milestone.id),
    );

    if (!missing.length || isSideContent(section)) {
      continue;
    }

    entries.push(
      sign(section, walked),
      ...missing.map((milestone) =>
        stop(milestone, milestone.sequence === null),
      ),
    );
  }

  const side = scope.sections.filter(isSideContent);

  entries.push(
    ...anyTimeEntries(
      side
        .flatMap((section) => section.milestones)
        .filter((milestone) => !placed.has(milestone.id)),
      side[0]?.name ?? "Side Content",
      walked,
    ),
  );

  return entries.length
    ? [{ entries, key: entries[0].key, kind: "route" }]
    : [];
};

/*
 * A game without a roadmap: each chapter's milestones in order, side content
 * after the beat that opens it, chapters played in any order side by side.
 */
const buildChapterRoute = (scope: StoryScope): StoryRouteBlock[] => {
  const story = scope.sections.filter((section) => !isSideContent(section));
  const side = scope.sections.filter(isSideContent);
  const storyMilestoneIds = new Set(
    story.flatMap((section) =>
      section.milestones.map((milestone) => milestone.id),
    ),
  );
  /* Side content placed after the beat that opens it; the rest closes the route. */
  const sideByOpener = new Map<number, StoryMilestone[]>();
  const sideAnyTime: StoryMilestone[] = [];

  for (const milestone of side.flatMap((section) => section.milestones)) {
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

  /* A chapter on the route: its sign, its milestones and what each opens. */
  const chapterEntries = (section: StorySection, reached: boolean) => [
    sign(section, reached),
    ...section.milestones.flatMap((milestone) => [
      stop(milestone, milestone.sequence === null),
      ...(sideByOpener.get(milestone.id) ?? []).map((opened) =>
        stop(opened, true),
      ),
    ]),
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
      blocks.push({
        key: `any-${anyOrder[0].id}`,
        kind: "anyOrder",
        routes: anyOrder.map((section) => chapterEntries(section, reached)),
      });
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
  route.push(
    ...anyTimeEntries(sideAnyTime, side[0]?.name ?? "Side Content", reached),
  );
  closeRoute();

  return blocks;
};

/* A stop is behind you once recorded; a sign or place once all before it is. */
export const isStoryRouteEntryDone = (entry: StoryRouteEntry) =>
  entry.kind === "stop" ? entry.milestone.isCompleted : entry.reached;
