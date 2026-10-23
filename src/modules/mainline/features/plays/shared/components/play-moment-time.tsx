"use client";

import { formatPlayMoment } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import { IconTip } from "@/shared/components/icon-tip";

/*
 * When a moment happened, in the viewer's time zone without a hydration
 * mismatch; its time shows on hover. `day` reads "Today", "Yesterday" or
 * "Aug 12"; `date` always reads "Aug 12, 2025". `fallback` shows when the
 * moment has no date.
 */
export const PlayMomentTime = ({
  fallback = null,
  format = "day",
  value,
}: {
  fallback?: string | null;
  format?: "date" | "day";
  value: string | null;
}) => {
  const moment = formatPlayMoment(value, useViewerClock());

  if (!moment) {
    return fallback;
  }

  const label = format === "date" ? moment.date : moment.day;

  return (
    <IconTip
      label={`${label} · ${moment.time}`}
      trigger={<time dateTime={moment.dateTime}>{label}</time>}
    />
  );
};
