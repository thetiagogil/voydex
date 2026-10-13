import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";

export type TeamHistoryDate = {
  /* When it happened, or null when the event has no effective date. */
  moment: {
    dateTime: string;
    /*
     * "Today" or "Yesterday" when it is that recent, else month first and
     * without the year ("Aug 12"); the month group carries the year.
     */
    day: string;
    time: string;
  } | null;
  monthKey: string;
  monthLabel: string;
};

type TeamHistoryDateFormatters = {
  calendarDay: Intl.DateTimeFormat;
  day: Intl.DateTimeFormat;
  month: Intl.DateTimeFormat;
  monthKey: Intl.DateTimeFormat;
  time: Intl.DateTimeFormat;
};

const undatedDate: TeamHistoryDate = {
  moment: null,
  monthKey: "undated",
  monthLabel: "Date not recorded",
};

const formattersByTimeZone = new Map<string, TeamHistoryDateFormatters>();

const getFormatters = (timeZone: string) => {
  const cached = formattersByTimeZone.get(timeZone);

  if (cached) {
    return cached;
  }

  const formatters: TeamHistoryDateFormatters = {
    calendarDay: new Intl.DateTimeFormat("en", {
      day: "numeric",
      month: "numeric",
      timeZone,
      year: "numeric",
    }),
    day: new Intl.DateTimeFormat("en", {
      day: "numeric",
      month: "short",
      timeZone,
    }),
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
    time: new Intl.DateTimeFormat("en", {
      hour: "numeric",
      minute: "2-digit",
      timeZone,
    }),
  };

  formattersByTimeZone.set(timeZone, formatters);
  return formatters;
};

const getParts = (formatter: Intl.DateTimeFormat, date: Date) => {
  const parts = formatter.formatToParts(date);

  return (type: Intl.DateTimeFormatPartTypes) =>
    parts.find((item) => item.type === type)?.value ?? "";
};

const getMonthKey = (formatter: Intl.DateTimeFormat, date: Date) => {
  const part = getParts(formatter, date);

  return `${part("year")}-${part("month")}`;
};

const padDatePart = (value: string) => value.padStart(2, "0");

/* A calendar day as "YYYY-MM-DD", read in the formatter's time zone. */
const getCalendarDayKey = (formatter: Intl.DateTimeFormat, date: Date) => {
  const part = getParts(formatter, date);

  return `${part("year")}-${padDatePart(part("month"))}-${padDatePart(part("day"))}`;
};

/* Today's calendar day ("YYYY-MM-DD") in the given time zone. */
export const getTeamHistoryToday = (timeZone: string, now = new Date()) =>
  getCalendarDayKey(getFormatters(timeZone).calendarDay, now);

const getPreviousDayKey = (dayKey: string) =>
  new Date(Date.parse(`${dayKey}T00:00:00Z`) - 86_400_000)
    .toISOString()
    .slice(0, 10);

const getRelativeDay = (dayKey: string, today: string | null) => {
  if (!today) {
    return null;
  }

  if (dayKey === today) {
    return "Today";
  }

  return dayKey === getPreviousDayKey(today) ? "Yesterday" : null;
};

const startDateFormatter = new Intl.DateTimeFormat("en", {
  day: "numeric",
  month: "short",
  timeZone: "UTC",
  year: "numeric",
});

/*
 * A date-only value ("2025-05-07") is a calendar day, not an instant, so it
 * reads the same day in every time zone ("May 7, 2025").
 */
export const formatTeamHistoryCalendarDate = (value: string) => {
  const date = new Date(`${value.slice(0, 10)}T00:00:00Z`);

  return Number.isNaN(date.getTime()) ? null : startDateFormatter.format(date);
};

/*
 * When a Team moment happened, read in the given time zone, so the month
 * groups and times come out the same wherever this runs. An event without an
 * effective date stays undated: its database creation time is not when it
 * happened. With `today` ("YYYY-MM-DD" in the same zone), the latest two days
 * read "Today" and "Yesterday".
 */
export const formatTeamHistoryDate = (
  event: MainlinePlayTimelineEvent,
  timeZone: string,
  today: string | null = null,
): TeamHistoryDate => {
  const date = event.happened_at ? new Date(event.happened_at) : null;

  if (!event.happened_at || !date || Number.isNaN(date.getTime())) {
    return undatedDate;
  }

  const formatters = getFormatters(timeZone);

  return {
    moment: {
      dateTime: event.happened_at,
      day:
        getRelativeDay(
          getCalendarDayKey(formatters.calendarDay, date),
          today,
        ) ?? formatters.day.format(date),
      time: formatters.time.format(date),
    },
    monthKey: getMonthKey(formatters.monthKey, date),
    monthLabel: formatters.month.format(date),
  };
};
