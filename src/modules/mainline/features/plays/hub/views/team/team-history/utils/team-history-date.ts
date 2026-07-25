import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";

export type TeamHistoryDateDisplay = {
  certainty: "Date not recorded" | "Exact";
  date: string;
  dateTime: string | undefined;
  time: string;
};

export const formatTeamHistoryDate = (
  event: MainlinePlayTimelineEvent,
): TeamHistoryDateDisplay => {
  const date = event.happened_at ? new Date(event.happened_at) : null;

  if (!date || Number.isNaN(date.getTime())) {
    return {
      certainty: "Date not recorded",
      date: "Date not recorded",
      dateTime: undefined,
      time: "",
    };
  }

  const dateLabel = new Intl.DateTimeFormat("en", {
    day: "numeric",
    month: "short",
    year: "numeric",
  }).format(date);
  const timeLabel = new Intl.DateTimeFormat("en", {
    hour: "numeric",
    minute: "2-digit",
  }).format(date);

  return {
    certainty: "Exact",
    date: dateLabel,
    dateTime: event.happened_at ?? undefined,
    time: timeLabel,
  };
};
