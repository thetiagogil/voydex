import type { StoryScope } from "../types";
import type { StoryRouteEntry } from "./story-route-model";

type StoryRouteSignEntry = Extract<StoryRouteEntry, { kind: "sign" }>;

/* A chapter behind you, folded into its sign until you open it again. */
export type StoryRouteChapterFold = {
  key: string;
  kind: "chapter";
  optional: false;
  sign: StoryRouteSignEntry;
};

export type StoryRouteItem = StoryRouteEntry | StoryRouteChapterFold;

/*
 * The chapters before the one you're in (#199): the one holding your next
 * objective, with chapters played in any order counting as one step, so a
 * path beside yours is never behind you. None once the Story has no next
 * objective.
 */
export const getEarlierChapterIds = (scope: StoryScope): Set<number> => {
  const nextId = scope.nextMilestone?.id;
  const story = scope.sections.filter(
    (section) => section.chapterKind !== "side-content",
  );
  const steps = new Map<number, number>();
  let step = 0;

  story.forEach((section, index) => {
    const previous = story[index - 1];

    if (index > 0 && !(section.playsInAnyOrder && previous?.playsInAnyOrder)) {
      step += 1;
    }

    steps.set(section.id, step);
  });

  const current = story.find((section) =>
    section.milestones.some((milestone) => milestone.id === nextId),
  );

  if (!current) {
    return new Set();
  }

  const currentStep = steps.get(current.id) ?? 0;

  return new Set(
    story
      .filter((section) => (steps.get(section.id) ?? 0) < currentStep)
      .map((section) => section.id),
  );
};

/*
 * A route with each earlier chapter folded into its sign: the chapter's
 * milestones and the places on the way to them stay out of sight until it
 * is in `open`.
 */
export const foldEarlierChapters = (
  entries: StoryRouteEntry[],
  earlier: ReadonlySet<number>,
  open: ReadonlySet<number>,
): StoryRouteItem[] => {
  const items: StoryRouteItem[] = [];
  let folding = false;

  for (const entry of entries) {
    if (entry.kind === "sign") {
      folding =
        entry.sectionId !== null &&
        earlier.has(entry.sectionId) &&
        !open.has(entry.sectionId);

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
