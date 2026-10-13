const dateOnlyPattern = /^\d{4}-\d{2}-\d{2}$/;

/*
 * A calendar day ("2025-05-07", like `started_on`) as "May 7, 2025". It is not
 * an instant, so it reads the same day in every time zone. Timestamps are
 * instants and take the fallback here: read them in the viewer's zone through
 * `PlayMomentTime` or `formatPlayMoment` instead.
 */
export const formatPlayDate = (value: string | null, fallback = "Not set") => {
  if (!value || !dateOnlyPattern.test(value)) {
    return fallback;
  }

  const date = new Date(value);

  if (Number.isNaN(date.getTime())) {
    return fallback;
  }

  return new Intl.DateTimeFormat("en", {
    day: "numeric",
    month: "short",
    timeZone: "UTC",
    year: "numeric",
  }).format(date);
};

export const formatPlayMinutes = (value: number | null) => {
  if (value === null) {
    return "Not tracked";
  }

  const hours = Math.floor(value / 60);
  const minutes = value % 60;

  if (!hours) {
    return `${minutes}m`;
  }

  return `${hours}h ${minutes}m`;
};
