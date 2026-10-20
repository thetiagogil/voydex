import { getPlayMomentRecord } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { SectionIndexGroup } from "@/shared/components/section-index-nav";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import {
  comparePlayMoments,
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
  /* Its year, for History's side index; null for moments with no date. */
  year: string | null;
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
      const comparison = comparePlayMoments(left, right);
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
  const months: Array<Omit<PlayHistoryMonth, "year"> & { monthKey: string }> =
    [];

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

  return months.map(({ entries, key, label, monthKey }) => ({
    entries,
    key,
    label,
    year: monthKey === "undated" ? null : monthKey.slice(0, 4),
  }));
};

/* Where a month's mark sits on History's line, for its link in the index. */
export const getPlayHistoryMonthAnchor = (
  month: Pick<PlayHistoryMonth, "key">,
) => `play-history-month-${month.key}`;

/*
 * History's side index on wide screens: the months shown, under their years
 * in the list's own order, each with how many moments it holds. A month name
 * drops its year, which its group already says.
 */
export const getPlayHistoryIndex = (
  months: PlayHistoryMonth[],
): SectionIndexGroup[] => {
  const groups: SectionIndexGroup[] = [];

  for (const month of months) {
    const label = month.year ?? "No date";
    const sections = {
      count: month.entries.length,
      href: `#${getPlayHistoryMonthAnchor(month)}` as const,
      label: month.year
        ? month.label.replace(` ${month.year}`, "")
        : month.label,
    };
    const group = groups.at(-1);

    if (group?.label === label) {
      group.sections.push(sections);
    } else {
      groups.push({ label, sections: [sections] });
    }
  }

  return groups;
};
