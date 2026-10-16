import { useMemo, useSyncExternalStore } from "react";

import { getPlayCalendarDay, type ViewerClock } from "./play-moment-date";

const subscribeToNothing = () => () => {};
const getViewerTimeZone = () =>
  Intl.DateTimeFormat().resolvedOptions().timeZone;
const getServerTimeZone = () => "UTC";
const getViewerToday = () => getPlayCalendarDay(getViewerTimeZone());
const getServerToday = () => null;

/*
 * The server can't know the viewer's time zone or day, so the server render
 * and hydration read times in UTC without "Today" or "Yesterday" and agree on
 * every one; the viewer's own zone and day take over right after hydration.
 * The clock keeps its identity until either changes.
 */
export const useViewerClock = (): ViewerClock => {
  const timeZone = useSyncExternalStore(
    subscribeToNothing,
    getViewerTimeZone,
    getServerTimeZone,
  );
  const today = useSyncExternalStore(
    subscribeToNothing,
    getViewerToday,
    getServerToday,
  );

  return useMemo(() => ({ timeZone, today }), [timeZone, today]);
};
