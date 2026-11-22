/* Statuses that close a journey: Home's Continue row leaves them out. */
const finishedPlayStatuses = new Set(["abandoned", "completed"]);

/*
 * The later of when a Play was last opened and last changed: the order
 * Home picks by. A Play never opened goes by its latest change.
 */
const getLastSeenAt = (play: {
  last_opened_at: string | null;
  updated_at: string | null;
}) => {
  const openedAt = play.last_opened_at ? Date.parse(play.last_opened_at) : 0;
  const updatedAt = play.updated_at ? Date.parse(play.updated_at) : 0;

  return Math.max(openedAt, updatedAt);
};

/*
 * The Plays Home's Continue row picks from, the one you opened (or changed)
 * last first: those still underway (playing, paused, not started). When
 * every Play is finished or dropped, all of them, so the row never stands
 * empty while there is a Play.
 */
export const getHomeShelfSource = <
  Play extends {
    last_opened_at: string | null;
    status_slug: string | null;
    updated_at: string | null;
  },
>(
  plays: Play[],
): Play[] => {
  const underway = plays.filter(
    (play) => !finishedPlayStatuses.has(play.status_slug ?? ""),
  );

  return (underway.length ? underway : plays).toSorted(
    (a, b) => getLastSeenAt(b) - getLastSeenAt(a),
  );
};
