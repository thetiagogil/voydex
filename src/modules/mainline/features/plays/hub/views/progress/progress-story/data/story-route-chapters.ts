import type { StoryScope } from "../types";
import type { StoryRouteEntry } from "./story-route-model";

type StoryRouteSignEntry = Extract<StoryRouteEntry, { kind: "sign" }>;

/* One chapter of a route: its sign, then its stops and places in order. */
export type StoryRouteChapter = {
  entries: Exclude<StoryRouteEntry, { kind: "sign" }>[];
  key: string;
  sign: StoryRouteSignEntry;
};

/*
 * The chapter you're in (#199): the one holding your next objective, by its
 * sign's key; null once the Story has no next objective.
 */
export const getCurrentChapterKey = (scope: StoryScope): string | null => {
  const nextId = scope.nextMilestone?.id;
  const current = scope.sections.find(
    (section) =>
      section.chapterKind !== "side-content" &&
      section.milestones.some((milestone) => milestone.id === nextId),
  );

  return current ? `sign-${current.id}` : null;
};

/* A route cut into its chapters at each sign, each its own card. */
export const splitStoryRouteChapters = (
  entries: StoryRouteEntry[],
): StoryRouteChapter[] => {
  const chapters: StoryRouteChapter[] = [];

  for (const entry of entries) {
    if (entry.kind === "sign") {
      chapters.push({ entries: [], key: entry.key, sign: entry });
      continue;
    }

    chapters.at(-1)?.entries.push(entry);
  }

  return chapters;
};
