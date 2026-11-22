import { getPlayCalendarDay } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";

/* How many weeks of days Home's activity history shows. */
export const HOME_ACTIVITY_WEEKS = 26;

export type HomeActivityDay = {
  count: number;
  /* "YYYY-MM-DD" in the viewer's time zone. */
  day: string;
  /* A day after today, in the last week: drawn empty. */
  future: boolean;
  /* 0 nothing, 1 one moment, 2 two or three, 3 four or more. */
  level: 0 | 1 | 2 | 3;
};

const dayMs = 86_400_000;

const shiftDay = (day: string, days: number) =>
  new Date(Date.parse(`${day}T00:00:00Z`) + days * dayMs)
    .toISOString()
    .slice(0, 10);

const toLevel = (count: number): HomeActivityDay["level"] =>
  count >= 4 ? 3 : count >= 2 ? 2 : count === 1 ? 1 : 0;

/*
 * The last weeks as columns of seven days, Sunday at the top, the week with
 * today last: each day with how many moments happened on it, counted in the
 * viewer's time zone.
 */
export const buildHomeActivityWeeks = (
  instants: string[],
  timeZone: string,
  now = new Date(),
  weeks = HOME_ACTIVITY_WEEKS,
): HomeActivityDay[][] => {
  const today = getPlayCalendarDay(timeZone, now);
  const weekday = new Date(`${today}T00:00:00Z`).getUTCDay();
  const lastDay = shiftDay(today, 6 - weekday);
  const firstDay = shiftDay(lastDay, -(weeks * 7 - 1));
  const counts = new Map<string, number>();

  for (const instant of instants) {
    const date = new Date(instant);

    if (Number.isNaN(date.getTime())) continue;

    const day = getPlayCalendarDay(timeZone, date);

    if (day >= firstDay && day <= today) {
      counts.set(day, (counts.get(day) ?? 0) + 1);
    }
  }

  return Array.from({ length: weeks }, (_, week) =>
    Array.from({ length: 7 }, (_, offset) => {
      const day = shiftDay(firstDay, week * 7 + offset);
      const count = counts.get(day) ?? 0;

      return { count, day, future: day > today, level: toLevel(count) };
    }),
  );
};

/*
 * How long ago a moment happened, in the words a feed uses: "today",
 * "yesterday", "4 days ago", "3 weeks ago", "2 months ago", "a year ago".
 */
export const formatHomeMomentAge = (
  instant: string | null,
  timeZone: string,
  now = new Date(),
): string | null => {
  const date = instant ? new Date(instant) : null;

  if (!date || Number.isNaN(date.getTime())) {
    return null;
  }

  const days = Math.round(
    (Date.parse(`${getPlayCalendarDay(timeZone, now)}T00:00:00Z`) -
      Date.parse(`${getPlayCalendarDay(timeZone, date)}T00:00:00Z`)) /
      dayMs,
  );
  const count = (value: number, unit: string) =>
    value === 1 ? `a ${unit} ago` : `${value} ${unit}s ago`;

  if (days <= 0) return "today";
  if (days === 1) return "yesterday";
  if (days < 7) return `${days} days ago`;
  if (days < 30) return count(Math.round(days / 7), "week");
  if (days < 365) return count(Math.max(1, Math.round(days / 30)), "month");

  return count(Math.floor(days / 365), "year");
};

/* "Sun, Nov 16, 2026": a day of the activity history, read in full. */
export const formatHomeActivityDay = (day: string) =>
  new Intl.DateTimeFormat("en-US", {
    day: "numeric",
    month: "short",
    timeZone: "UTC",
    weekday: "short",
    year: "numeric",
  }).format(new Date(`${day}T00:00:00Z`));

/* A month's name is about three columns wide. */
const monthLabelWeeks = 3;

/*
 * The month each week column starts, shown once where the month changes.
 * The first column's month gives way when the next one starts within its
 * label's width (the grid opened on a month's last week or two), so two
 * names never run into each other.
 */
export const getHomeActivityMonthLabels = (weeks: HomeActivityDay[][]) => {
  const labels = weeks.map((week, index) => {
    const month = week[0].day.slice(0, 7);
    const previous = index ? weeks[index - 1][0].day.slice(0, 7) : null;

    return month !== previous
      ? new Intl.DateTimeFormat("en-US", {
          month: "short",
          timeZone: "UTC",
        }).format(new Date(`${week[0].day}T00:00:00Z`))
      : null;
  });

  if (labels.slice(1, monthLabelWeeks).some(Boolean)) labels[0] = null;

  return labels;
};
