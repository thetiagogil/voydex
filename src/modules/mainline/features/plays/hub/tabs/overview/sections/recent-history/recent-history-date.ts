import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";

import type { TimelineDateDisplay } from "./recent-history-types";

export const formatTimelineDate = (
  event: MainlinePlayTimelineEvent,
): TimelineDateDisplay => {
  const happenedAt = event.happened_at ?? event.created_at;
  const date = happenedAt ? new Date(happenedAt) : null;

  if (!date || Number.isNaN(date.getTime())) {
    return {
      date: "No date",
      dateTime: "No date",
      time: "",
    };
  }

  const now = new Date();
  const today = new Date(now.getFullYear(), now.getMonth(), now.getDate());
  const eventDay = new Date(
    date.getFullYear(),
    date.getMonth(),
    date.getDate(),
  );
  const dayOffset = Math.round(
    (today.getTime() - eventDay.getTime()) / 86_400_000,
  );
  const dateLabel =
    dayOffset === 0
      ? "Today"
      : dayOffset === 1
        ? "Yesterday"
        : new Intl.DateTimeFormat("en", {
            day: "numeric",
            month: "short",
          }).format(date);
  const timeLabel = new Intl.DateTimeFormat("en", {
    hour: "numeric",
    minute: "2-digit",
  }).format(date);

  return {
    date: dateLabel,
    dateTime: `${dateLabel} ${timeLabel}`,
    time: timeLabel,
  };
};
