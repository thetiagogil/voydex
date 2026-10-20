/*
 * How many whole days a Play has been going: from its start day to today,
 * both read as calendar days (`YYYY-MM-DD`). Null without a start day, and
 * never negative for a Play that starts in the future.
 */
export const getPlayDaysSince = (
  startedOn: string | null,
  today: string,
): number | null => {
  if (!startedOn) {
    return null;
  }

  const start = Date.parse(`${startedOn.slice(0, 10)}T00:00:00Z`);
  const now = Date.parse(`${today}T00:00:00Z`);

  if (Number.isNaN(start) || Number.isNaN(now)) {
    return null;
  }

  return Math.max(0, Math.round((now - start) / 86_400_000));
};

/* "Day 1", "615 days in": where the Play stands in time. */
export const formatPlayDaysSince = (days: number) =>
  days === 0 ? "Day 1" : `${days} ${days === 1 ? "day" : "days"} in`;
