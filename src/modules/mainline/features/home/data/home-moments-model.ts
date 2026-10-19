import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";

/* Home shows the current Play's latest five moments. */
export const HOME_MOMENT_COUNT = 5;

/*
 * Home's moments from the latest ones, newest first (read one past the
 * count): at most five, oldest first, and whether a moment was recorded
 * before them, so the line only leads in from something that shows.
 */
export const toHomeMoments = (
  newestFirst: MainlinePlayTimelineEvent[],
): { events: MainlinePlayTimelineEvent[]; hasEarlier: boolean } => ({
  events: newestFirst.slice(0, HOME_MOMENT_COUNT).toReversed(),
  hasEarlier: newestFirst.length > HOME_MOMENT_COUNT,
});
