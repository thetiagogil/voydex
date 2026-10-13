import type { StorySection, StoryStamp } from "../types";

const leagueSectionSlug = "pokemon-league";

/*
 * The stamp card: every gym badge in Story's order, then the rest of the
 * League chapter. A scope without gyms has no stamp card. The first stamp not
 * yet earned is the next one.
 */
export const buildStoryStamps = (
  sections: StorySection[],
): StoryStamp[] | null => {
  const milestones = sections.flatMap((section) => section.milestones);
  const gyms = milestones.filter((milestone) => milestone.typeSlug === "gym");

  if (!gyms.length) {
    return null;
  }

  const league = sections
    .filter((section) => section.slug === leagueSectionSlug)
    .flatMap((section) => section.milestones)
    .filter((milestone) => milestone.typeSlug !== "gym");
  const ordered = [...gyms, ...league];
  const next = ordered.find((milestone) => !milestone.isCompleted);

  return ordered.map((milestone) => ({
    kind: milestone.typeSlug === "gym" ? "gym" : "league",
    label:
      milestone.typeSlug === "gym"
        ? milestone.name.replace(/ Badge$/, "")
        : milestone.name,
    milestone,
    state: milestone.isCompleted
      ? "earned"
      : milestone === next
        ? "next"
        : "todo",
  }));
};
