/* The You page's Statistics figures: Plays and recorded playtime. */
export type YouStatistics = {
  playCount: number;
  /* Null when no Play has playtime recorded. */
  playtimeMinutes: number | null;
};

export const plural = (count: number, one: string, many: string) =>
  `${count} ${count === 1 ? one : many}`;

/*
 * "130 hours across 5 Plays"; a new account's line until there is a Play,
 * and no hours claimed while no Play has playtime recorded (as Statistics).
 */
export const getStatisticsLine = (
  statistics: YouStatistics | null | undefined,
) => {
  if (!statistics) {
    return "Your journey so far";
  }
  if (statistics.playCount === 0) {
    return "Fills in as you play";
  }

  const plays = plural(statistics.playCount, "Play", "Plays");

  if (statistics.playtimeMinutes === null) {
    return `${plays} · playtime not recorded`;
  }

  const hours = Math.round(statistics.playtimeMinutes / 60);

  return hours > 0
    ? `${plural(hours, "hour", "hours")} across ${plays}`
    : `Under an hour across ${plays}`;
};
