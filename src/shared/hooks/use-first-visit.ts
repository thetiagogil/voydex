import { useEffect, useSyncExternalStore } from "react";

const subscribeToNothing = () => () => {};

/* Without storage it counts as a later visit, so nothing replays. */
const readSeen = (key: string) => {
  try {
    return window.sessionStorage.getItem(key) === "1";
  } catch {
    return true;
  }
};

/*
 * True the first time a piece is shown in a browser session, then false:
 * motion that rewards arriving (the meadow's partners popping in, the
 * Statistics title rising) plays once per visit and never on a redraw.
 */
export const useFirstVisit = (key: string) => {
  const seen = useSyncExternalStore(
    subscribeToNothing,
    () => readSeen(key),
    () => false,
  );

  useEffect(() => {
    try {
      window.sessionStorage.setItem(key, "1");
    } catch {
      /* Storage is unavailable: nothing to remember. */
    }
  }, [key]);

  return !seen;
};
