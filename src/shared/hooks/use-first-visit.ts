import { useLayoutEffect, useRef, useState } from "react";

import {
  getFirstVisitKey,
  type FirstVisitName,
} from "@/shared/utils/first-visit";

/* Without storage it counts as a later visit, so nothing replays. */
const readSeen = (key: string) => {
  try {
    return window.sessionStorage.getItem(key) === "1";
  } catch {
    return true;
  }
};

const rememberSeen = (key: string) => {
  try {
    window.sessionStorage.setItem(key, "1");
  } catch {
    /* Storage is unavailable: nothing to remember. */
  }
};

/*
 * The reveal's `data-first-visit` value: its name the first time it is shown
 * in a browser tab, then nothing.
 *
 * The server can't read the tab's storage, so it always sends the name, and
 * FirstVisitGuard keeps a reveal this tab has seen still until the page
 * hydrates. Arriving inside the app, the layout effect drops the name before
 * the first paint. What the tab held when the piece mounted is kept for as
 * long as it stays mounted, so a redraw never cuts a reveal short.
 */
export const useFirstVisit = (name: FirstVisitName) => {
  const key = getFirstVisitKey(name);
  const seenOnMount = useRef<boolean | null>(null);
  const [seen, setSeen] = useState(false);

  useLayoutEffect(() => {
    seenOnMount.current ??= readSeen(key);
    setSeen(seenOnMount.current);
    rememberSeen(key);
  }, [key]);

  return seen ? undefined : name;
};
