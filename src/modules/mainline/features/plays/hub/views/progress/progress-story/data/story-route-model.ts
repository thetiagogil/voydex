import type { StoryMilestone, StoryScope, StorySection } from "../types";

/*
 * Story as one route: the scope's chapters in order on one line, a sign where
 * each begins, from the start through the League into the Post Game. Side
 * content never counts, so each piece sits on the route right after the beat
 * that opens it (`opensAfter`), joined by a quieter line; side content open
 * from the start closes the route under its own sign. Chapters played in any
 * order (Scarlet and Violet's three stories) are each a short route of their
 * own, side by side, before the route carries on.
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
    }
  | {
      key: string;
      kind: "stop";
      milestone: StoryMilestone;
      /* Not needed to finish the Story: reached by a quieter line. */
      optional: boolean;
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

const isFinished = (milestones: StoryMilestone[]) =>
  milestones.length > 0 &&
  milestones.every((milestone) => milestone.isCompleted);

export const buildStoryRoute = (scope: StoryScope): StoryRouteBlock[] => {
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

  const stop = (milestone: StoryMilestone, optional: boolean) => ({
    key: `stop-${milestone.id}`,
    kind: "stop" as const,
    milestone,
    optional,
  });

  /* A chapter on the route: its sign, its milestones and what each opens. */
  const chapterEntries = (section: StorySection, reached: boolean) => {
    const entries: StoryRouteEntry[] = [
      {
        count: formatStoryCount([section]),
        finished: isFinished(section.milestones),
        key: `sign-${section.id}`,
        kind: "sign",
        name: section.name,
        optional: false,
        reached,
      },
    ];

    for (const milestone of section.milestones) {
      entries.push(stop(milestone, milestone.sequence === null));

      for (const opened of sideByOpener.get(milestone.id) ?? []) {
        entries.push(stop(opened, true));
      }
    }

    return entries;
  };

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
      },
      ...sideAnyTime.map((milestone) => stop(milestone, true)),
    );
  }

  closeRoute();

  return blocks;
};
