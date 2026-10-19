/*
 * Recording the next objective on Overview hands over to the one after it:
 * at once its stamp slaps down (a gym or League milestone), then once the
 * save brings the next one, it slides away and the next one slides in.
 * Undo or a failed save stops it where it is. Anything else that changes
 * the objective just shows the new one.
 */
export type ObjectiveHandover =
  | "entering"
  | "idle"
  | "leaving"
  | "stamping"
  | "waiting";

type HandoverStep = {
  handover?: ObjectiveHandover;
  /* Show the latest objective from the page now. */
  showLatest?: boolean;
};

/* What the hand-over does next, from what the page shows now. */
export const getObjectiveHandoverStep = ({
  handover,
  hasStamp,
  isJustRecorded,
  isLatestShown,
  isShownCurrent,
}: {
  handover: ObjectiveHandover;
  /* The shown objective has a stamp to slap. */
  hasStamp: boolean;
  /* The shown objective is the one recorded here a moment ago. */
  isJustRecorded: boolean;
  /* The page's next objective is the one shown (same milestone). */
  isLatestShown: boolean;
  /* The shown objective is the page's latest copy of it. */
  isShownCurrent: boolean;
}): HandoverStep | null => {
  if (handover === "idle" && isJustRecorded) {
    return { handover: hasStamp ? "stamping" : "waiting" };
  }

  if ((handover === "stamping" || handover === "waiting") && !isJustRecorded) {
    return { handover: "idle" };
  }

  if (handover === "waiting" && !isLatestShown) {
    return { handover: "leaving" };
  }

  if (handover === "idle" && !isShownCurrent) {
    return { showLatest: true };
  }

  return null;
};

/* What the hand-over does once its slap, or the card's slide, has played. */
export const getObjectiveHandoverAfterAnimation = (
  handover: ObjectiveHandover,
  animation: "slap" | "slide",
): HandoverStep | null => {
  if (animation === "slap") {
    return handover === "stamping" ? { handover: "waiting" } : null;
  }

  if (handover === "leaving") {
    return { handover: "entering", showLatest: true };
  }

  return handover === "entering" ? { handover: "idle" } : null;
};
