import { getPlayMomentRecord } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import {
  getPlayMomentInstant,
  type ViewerClock,
} from "@/modules/mainline/features/plays/shared/utils/play-moment-date";

import {
  formatPlayHistoryDate,
  type PlayHistoryDate,
} from "../utils/play-history-date";

/* What a moment is about (v3 `HISTORY_TYPES[...].cat`). */
export type PlayHistoryCategory = "note" | "play" | "story" | "team";

export type PlayHistoryFilter = "all" | PlayHistoryCategory;

export type PlayHistorySort = "newest" | "oldest";

export type PlayHistoryFilterOption = {
  count: number;
  label: string;
  value: PlayHistoryFilter;
};

export type PlayHistoryEntry = {
  date: PlayHistoryDate;
  event: MainlinePlayTimelineEvent;
};

export type PlayHistoryMonth = {
  entries: PlayHistoryEntry[];
  key: string;
  label: string;
};

const storyEventTypes = new Set(["hall_of_fame", "story_milestone"]);

const filterLabels: Record<PlayHistoryFilter, string> = {
  all: "Everything",
  note: "Notes",
  play: "Play",
  story: "Story",
  team: "Team",
};

const filterOrder: PlayHistoryFilter[] = [
  "all",
  "story",
  "team",
  "note",
  "play",
];

/*
 * Story holds milestones and the Hall of Fame, Team every change to the
 * roster, Notes what you wrote, and Play the rest (status changes and
 * anything the app can't name yet).
 */
export const getPlayHistoryCategory = (
  event: Pick<MainlinePlayTimelineEvent, "event_type_slug">,
): PlayHistoryCategory => {
  const slug = event.event_type_slug ?? "";

  if (storyEventTypes.has(slug)) {
    return "story";
  }

  if (slug.startsWith("pokemon_")) {
    return "team";
  }

  return slug === "journal_note" ? "note" : "play";
};

export const getPlayHistoryEventKey = (
  event: MainlinePlayTimelineEvent,
  index = 0,
) =>
  event.event_id ??
  `${event.event_type_slug ?? "moment"}-${event.timeline_order ?? index}`;

/* Timeline order wins over dates, as the database orders the timeline. */
const compareTimelineOrder = (
  left: MainlinePlayTimelineEvent,
  right: MainlinePlayTimelineEvent,
) => {
  const orderDifference =
    (left.timeline_order ?? 0) - (right.timeline_order ?? 0);

  if (orderDifference !== 0) {
    return orderDifference;
  }

  const getTime = (event: MainlinePlayTimelineEvent) => {
    const instant = getPlayMomentInstant(event);
    return instant ? new Date(instant).getTime() : Number.NEGATIVE_INFINITY;
  };

  return getTime(left) - getTime(right);
};

/*
 * A search matches what the moment shows: its kind, its line (Pokémon,
 * milestone or note) and the note that came with it.
 */
export const searchPlayHistoryEvents = (
  events: MainlinePlayTimelineEvent[],
  query: string,
) => {
  const normalizedQuery = query.trim().toLocaleLowerCase("en");

  if (!normalizedQuery) {
    return events;
  }

  return events.filter((event) => {
    const record = getPlayMomentRecord(event);

    return [
      record.label,
      record.headline.map((part) => part.text).join(""),
      record.description,
    ].some((value) => value?.toLocaleLowerCase("en").includes(normalizedQuery));
  });
};

/* The five filters of v3's History, each with how many moments it holds. */
export const getPlayHistoryFilterOptions = (
  events: MainlinePlayTimelineEvent[],
): PlayHistoryFilterOption[] => {
  const counts = new Map<PlayHistoryFilter, number>([["all", events.length]]);

  for (const event of events) {
    const category = getPlayHistoryCategory(event);
    counts.set(category, (counts.get(category) ?? 0) + 1);
  }

  return filterOrder.map((value) => ({
    count: counts.get(value) ?? 0,
    label: filterLabels[value],
    value,
  }));
};

export const getShownPlayHistoryEvents = (
  events: MainlinePlayTimelineEvent[],
  { filter, sort }: { filter: PlayHistoryFilter; sort: PlayHistorySort },
) =>
  events
    .filter(
      (event) => filter === "all" || getPlayHistoryCategory(event) === filter,
    )
    .toSorted((left, right) => {
      const comparison = compareTimelineOrder(left, right);
      return sort === "newest" ? -comparison : comparison;
    });

/*
 * Month groups in the order the events already have, each date read on the
 * viewer's clock (its time zone, and its current day for "Today" and
 * "Yesterday"). A month that comes back after an older one opens a new group
 * instead of moving moments out of order.
 */
export const groupPlayHistoryEventsByMonth = (
  events: MainlinePlayTimelineEvent[],
  clock: ViewerClock,
): PlayHistoryMonth[] => {
  const months: Array<PlayHistoryMonth & { monthKey: string }> = [];

  for (const event of events) {
    const date = formatPlayHistoryDate(event, clock);
    const currentMonth = months.at(-1);

    if (currentMonth?.monthKey === date.monthKey) {
      currentMonth.entries.push({ date, event });
    } else {
      months.push({
        entries: [{ date, event }],
        key: `${date.monthKey}-${months.length}`,
        label: date.monthLabel,
        monthKey: date.monthKey,
      });
    }
  }

  return months.map(({ entries, key, label }) => ({ entries, key, label }));
};
