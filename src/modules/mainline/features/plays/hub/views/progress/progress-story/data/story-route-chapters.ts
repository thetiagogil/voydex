import type { StoryScope } from "../types";
import type { StoryRouteEntry } from "./story-route-model";

type StoryRouteSignEntry = Extract<StoryRouteEntry, { kind: "sign" }>;

/* A chapter folded into its sign until you open it again. */
export type StoryRouteChapterFold = {
  key: string;
  kind: "chapter";
  optional: false;
  sign: StoryRouteSignEntry;
};

export type StoryRouteItem = StoryRouteEntry | StoryRouteChapterFold;

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

/*
 * A route with each folded chapter folded into its sign: its milestones and
 * the places on the way to them stay out of sight until it opens. Any
 * chapter folds and opens from its sign; whether one is open is
 * `isOpen(its sign's key)`.
 */
export const foldChapters = (
  entries: StoryRouteEntry[],
  isOpen: (signKey: string) => boolean,
): StoryRouteItem[] => {
  const items: StoryRouteItem[] = [];
  let folding = false;

  for (const entry of entries) {
    if (entry.kind === "sign") {
      folding = !isOpen(entry.key);

      items.push(
        folding
          ? {
              /* Its sign's key, so opening it keeps the same row (and focus). */
              key: entry.key,
              kind: "chapter",
              optional: false,
              sign: entry,
            }
          : entry,
      );
      continue;
    }

    if (!folding) {
      items.push(entry);
    }
  }

  return items;
};
