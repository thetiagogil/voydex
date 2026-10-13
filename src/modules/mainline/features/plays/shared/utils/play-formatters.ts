const dateOnlyPattern = /^\d{4}-\d{2}-\d{2}$/;

/*
 * A date as "May 7, 2025". A date-only value ("2025-05-07", like
 * `started_on`) is a calendar day, not an instant, so it reads the same day in
 * every time zone; a timestamp reads in the local one.
 */
export const formatPlayDate = (value: string | null, fallback = "Not set") => {
  if (!value) {
    return fallback;
  }

  const date = new Date(value);

  if (Number.isNaN(date.getTime())) {
    return fallback;
  }

  return new Intl.DateTimeFormat("en", {
    day: "numeric",
    month: "short",
    timeZone: dateOnlyPattern.test(value) ? "UTC" : undefined,
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

export const formatPlayPokedexProgress = (params: {
  caughtCount: number | null;
  seenCount: number | null;
}) => {
  const { caughtCount, seenCount } = params;

  if (caughtCount === null && seenCount === null) {
    return "No Pokedex progress";
  }

  return `${caughtCount ?? 0} caught / ${seenCount ?? 0} seen`;
};

export const formatPlayTeamSummary = (params: {
  activeCount: number | null;
  reserveCount: number | null;
}) => {
  return `${params.activeCount ?? 0} active / ${params.reserveCount ?? 0} reserve`;
};

export const formatPlayCountPair = (params: {
  completedCount: number | null | undefined;
  totalCount: number | null | undefined;
}) => {
  return `${params.completedCount ?? 0} / ${params.totalCount ?? 0}`;
};
