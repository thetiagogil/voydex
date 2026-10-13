"use client";

import { formatPlayMoment } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/utils/use-viewer-clock";

/*
 * The day a moment happened, in the viewer's time zone without a hydration
 * mismatch; its time shows on hover. Nothing when the moment has no date.
 */
export const PlayMomentTime = ({ value }: { value: string | null }) => {
  const moment = formatPlayMoment(value, useViewerClock());

  if (!moment) {
    return null;
  }

  return (
    <time dateTime={moment.dateTime} title={`${moment.day} · ${moment.time}`}>
      {moment.day}
    </time>
  );
};
