import type { PlayBrowseProgress } from "@/modules/mainline/features/plays/shared/types";

/*
 * A Play's one figure (a Plays card, Home): the average of the parts the Play tracks
 * (Story, Pokédex, Collectibles), never their raw counts added together, and
 * 100 only when every part is. Null when nothing is tracked or recorded yet.
 */
export const getPlayCombinedPercent = (progress: PlayBrowseProgress) => {
  if (progress.state === "unavailable") {
    return null;
  }

  const percents = progress.items.flatMap((item) =>
    item.percent === null ? [] : [item.percent],
  );

  if (!percents.length) {
    return null;
  }

  const average = Math.round(
    percents.reduce((total, percent) => total + percent, 0) / percents.length,
  );

  /* Full only when every part is: rounding never completes an unfinished Play. */
  return percents.every((percent) => percent === 100)
    ? 100
    : Math.min(average, 99);
};

/* What stands in for the overall figure when there is none to draw. */
export const getPlayProgressNote = (progress: PlayBrowseProgress) => {
  if (progress.state === "unavailable") {
    return "Progress unavailable";
  }

  return progress.items.length
    ? "Progress not tracked"
    : "Progress not recorded";
};
