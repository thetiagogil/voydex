const calendarDayPattern = /^(\d{4})-(\d{2})-(\d{2})$/;

/*
 * A calendar day is "YYYY-MM-DD", like `started_on`. It is not an instant, so
 * it reads as the same day in every time zone. These helpers are the only
 * place that turns one into a `Date` and back.
 */

/* True for a real day: "2025-02-30" is not one. */
export const isCalendarDay = (value: string) => {
  const parts = calendarDayPattern.exec(value);

  if (!parts) {
    return false;
  }

  const date = new Date(`${value}T00:00:00Z`);

  return !Number.isNaN(date.getTime()) && date.toISOString().startsWith(value);
};

/* The day as a `Date` at local midnight, for a calendar; undefined if not a day. */
export const parseCalendarDay = (value: string | null | undefined) => {
  const parts = value ? calendarDayPattern.exec(value) : null;

  if (!value || !parts || !isCalendarDay(value)) {
    return undefined;
  }

  return new Date(Number(parts[1]), Number(parts[2]) - 1, Number(parts[3]));
};

/* A calendar's `Date` (local) back to "YYYY-MM-DD". */
export const toCalendarDay = (date: Date) => {
  const year = String(date.getFullYear()).padStart(4, "0");
  const month = String(date.getMonth() + 1).padStart(2, "0");
  const day = String(date.getDate()).padStart(2, "0");

  return `${year}-${month}-${day}`;
};

/* A day as "May 7, 2025", month first; `fallback` when it is not a day. */
export const formatCalendarDay = (
  value: string | null | undefined,
  fallback: string,
) => {
  if (!value || !isCalendarDay(value)) {
    return fallback;
  }

  return new Intl.DateTimeFormat("en", {
    day: "numeric",
    month: "short",
    timeZone: "UTC",
    year: "numeric",
  }).format(new Date(`${value}T00:00:00Z`));
};
