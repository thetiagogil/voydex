import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import {
  formatPlayMoment,
  type PlayMoment,
  type ViewerClock,
} from "@/modules/mainline/features/plays/shared/utils/play-moment-date";

export type TeamHistoryDate = {
  /*
   * When it happened, or null when the event has no effective date; the month
   * group carries the year.
   */
  moment: PlayMoment | null;
  monthKey: string;
  monthLabel: string;
};

type TeamHistoryMonthFormatters = {
  month: Intl.DateTimeFormat;
  monthKey: Intl.DateTimeFormat;
};

const undatedDate: TeamHistoryDate = {
  moment: null,
  monthKey: "undated",
  monthLabel: "Date not recorded",
};

const formattersByTimeZone = new Map<string, TeamHistoryMonthFormatters>();

const getFormatters = (timeZone: string) => {
  const cached = formattersByTimeZone.get(timeZone);

  if (cached) {
    return cached;
  }

  const formatters: TeamHistoryMonthFormatters = {
    month: new Intl.DateTimeFormat("en", {
      month: "long",
      timeZone,
      year: "numeric",
    }),
    monthKey: new Intl.DateTimeFormat("en", {
      month: "numeric",
      timeZone,
      year: "numeric",
    }),
  };

  formattersByTimeZone.set(timeZone, formatters);
  return formatters;
};

const getMonthKey = (formatter: Intl.DateTimeFormat, date: Date) => {
  const parts = formatter.formatToParts(date);
  const part = (type: Intl.DateTimeFormatPartTypes) =>
    parts.find((item) => item.type === type)?.value ?? "";

  return `${part("year")}-${part("month")}`;
};

/*
 * When a Team moment happened, read in the clock's time zone, so the month
 * groups and times come out the same wherever this runs. An event without an
 * effective date stays undated: its database creation time is not when it
 * happened. With the clock's `today`, the latest two days read "Today" and
 * "Yesterday".
 */
export const formatTeamHistoryDate = (
  event: MainlinePlayTimelineEvent,
  clock: ViewerClock,
): TeamHistoryDate => {
  const moment = formatPlayMoment(event.happened_at, clock);

  if (!moment) {
    return undatedDate;
  }

  const date = new Date(moment.dateTime);
  const formatters = getFormatters(clock.timeZone);

  return {
    moment,
    monthKey: getMonthKey(formatters.monthKey, date),
    monthLabel: formatters.month.format(date),
  };
};
