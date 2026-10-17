import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";

/* Home shows the current Play's latest five moments. */
export const HOME_MOMENT_COUNT = 5;

/* Status changes stay out, as on the Play's own recent moments. */
export const HOME_HIDDEN_MOMENT_TYPES = ["status_change"];

/*
 * Home's moments from the latest visible ones, newest first (read one past
 * the count): at most five, oldest first, and whether a visible moment was
 * recorded before them, so the line only leads in from something that shows.
 */
export const toHomeMoments = (
  visibleNewestFirst: MainlinePlayTimelineEvent[],
): { events: MainlinePlayTimelineEvent[]; hasEarlier: boolean } => ({
  events: visibleNewestFirst.slice(0, HOME_MOMENT_COUNT).toReversed(),
  hasEarlier: visibleNewestFirst.length > HOME_MOMENT_COUNT,
});
