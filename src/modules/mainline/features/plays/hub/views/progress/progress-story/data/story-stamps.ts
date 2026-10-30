import {
  getPlayStampLabel,
  getPlayStampStates,
  getTypedStampKind,
  type PlayStamp,
} from "@/modules/mainline/features/plays/shared/data/play-stamps";

import type { StorySection } from "../types";

const leagueSectionSlug = "pokemon-league";

/*
 * The stamp card: every gym badge (or, in Alola, every trial and Grand Trial
 * with its Z-Crystal) in Story's order, then the rest of the League chapter.
 * A scope without any has no stamp card. The first stamp not yet earned is
 * the next one.
 */
export const buildStoryStamps = (
  sections: StorySection[],
): PlayStamp[] | null => {
  const milestones = sections.flatMap((section) => section.milestones);
  const typed = milestones.filter((milestone) =>
    getTypedStampKind(milestone.typeSlug, milestone.badgeType !== null),
  );

  if (!typed.length) {
    return null;
  }

  const league = sections
    .filter((section) => section.slug === leagueSectionSlug)
    .flatMap((section) => section.milestones)
    .filter((milestone) => !typed.includes(milestone));
  const ordered = [...typed, ...league];
  const states = getPlayStampStates(
    ordered,
    (milestone) => milestone.isCompleted,
  );

  return ordered.map((milestone, index) => {
    const kind =
      getTypedStampKind(milestone.typeSlug, milestone.badgeType !== null) ??
      "league";

    return {
      badgeType: milestone.badgeType,
      completedAt: milestone.completedAt,
      kind,
      label: getPlayStampLabel(kind, milestone.name),
      milestoneId: milestone.id,
      milestoneTypeSlug: milestone.typeSlug,
      name: milestone.name,
      state: states[index],
    };
  });
};
