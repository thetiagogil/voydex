/*
 * Where and when the viewer is: their time zone and today's calendar day
 * ("YYYY-MM-DD") in it, or null when it is not known yet (the server render).
 */
export type ViewerClock = {
  timeZone: string;
  today: string | null;
};

/*
 * When a moment happened: the date it was given, else when it was recorded,
 * so every moment has a date.
 */
export const getPlayMomentInstant = (event: {
  created_at: string | null;
  happened_at: string | null;
}) => event.happened_at ?? event.created_at;

/* When a moment happened, read in the viewer's time zone. */
export type PlayMoment = {
  /* Month first with the year ("Aug 12, 2025"), never relative. */
  date: string;
  dateTime: string;
  /*
   * "Today" or "Yesterday" when it is that recent, else month first and
   * without the year ("Aug 12").
   */
  day: string;
  time: string;
};

type PlayMomentFormatters = {
  calendarDay: Intl.DateTimeFormat;
  date: Intl.DateTimeFormat;
  day: Intl.DateTimeFormat;
  time: Intl.DateTimeFormat;
};

const formattersByTimeZone = new Map<string, PlayMomentFormatters>();

const getFormatters = (timeZone: string) => {
  const cached = formattersByTimeZone.get(timeZone);

  if (cached) {
    return cached;
  }

  const formatters: PlayMomentFormatters = {
    calendarDay: new Intl.DateTimeFormat("en", {
      day: "numeric",
      month: "numeric",
      timeZone,
      year: "numeric",
    }),
    date: new Intl.DateTimeFormat("en", {
      day: "numeric",
      month: "short",
      timeZone,
      year: "numeric",
    }),
    day: new Intl.DateTimeFormat("en", {
      day: "numeric",
      month: "short",
      timeZone,
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

const padDatePart = (value: string) => value.padStart(2, "0");

/* A calendar day as "YYYY-MM-DD", read in the given time zone. */
export const getPlayCalendarDay = (timeZone: string, date = new Date()) => {
  const parts = getFormatters(timeZone).calendarDay.formatToParts(date);
  const part = (type: Intl.DateTimeFormatPartTypes) =>
    parts.find((item) => item.type === type)?.value ?? "";

  return `${part("year")}-${padDatePart(part("month"))}-${padDatePart(part("day"))}`;
};

const getPreviousCalendarDay = (day: string) =>
  new Date(Date.parse(`${day}T00:00:00Z`) - 86_400_000)
    .toISOString()
    .slice(0, 10);

const getRelativeDay = (day: string, today: string | null) => {
  if (!today) {
    return null;
  }

  if (day === today) {
    return "Today";
  }

  return day === getPreviousCalendarDay(today) ? "Yesterday" : null;
};

/*
 * When a moment happened, read in the clock's time zone so it comes out the
 * same wherever this runs. With the clock's `today`, the latest two days read
 * "Today" and "Yesterday". Null when there is no valid instant.
 */
export const formatPlayMoment = (
  value: string | null | undefined,
  clock: ViewerClock,
): PlayMoment | null => {
  const date = value ? new Date(value) : null;

  if (!value || !date || Number.isNaN(date.getTime())) {
    return null;
  }

  const formatters = getFormatters(clock.timeZone);

  return {
    date: formatters.date.format(date),
    dateTime: value,
    day:
      getRelativeDay(getPlayCalendarDay(clock.timeZone, date), clock.today) ??
      formatters.day.format(date),
    time: formatters.time.format(date),
  };
};
