import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import { getTeamEventDisplay } from "@/modules/mainline/features/plays/hub/views/team/shared/team-event-display";
import { getTeamEventPokemon } from "@/modules/mainline/features/plays/hub/views/team/shared/team-event-payload";

import type { ViewerClock } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";

import {
  formatTeamHistoryDate,
  type TeamHistoryDate,
} from "../utils/team-history-date";

export type TeamHistorySort = "newest" | "oldest";

export const allTeamHistoryEventTypes = "all";

export type TeamHistoryFilters = {
  /* An event type slug, or `allTeamHistoryEventTypes`. */
  eventType: string;
  query: string;
  sort: TeamHistorySort;
};

export type TeamHistoryEventTypeOption = {
  count: number;
  label: string;
  value: string;
};

export type TeamHistoryEntry = {
  date: TeamHistoryDate;
  event: MainlinePlayTimelineEvent;
};

export type TeamHistoryMonth = {
  entries: TeamHistoryEntry[];
  key: string;
  label: string;
};

/* The event-type pills follow a Pokémon's life on the team. */
const eventTypeOrder = [
  "pokemon_added",
  "pokemon_evolved",
  "pokemon_form_changed",
  "pokemon_replaced",
  "pokemon_moved",
  "pokemon_updated",
  "pokemon_returned",
  "pokemon_retired",
  "pokemon_removed",
];

export const getTeamHistoryEventKey = (
  event: MainlinePlayTimelineEvent,
  index = 0,
) =>
  event.event_id ??
  `${event.event_type_slug ?? "team-event"}-${event.timeline_order ?? index}`;

const normalizeSearchValue = (value: string) =>
  value.trim().toLocaleLowerCase();

const getEventSearchText = (event: MainlinePlayTimelineEvent) => {
  const pokemonText = getTeamEventPokemon(event)
    .flatMap((pokemon) => [
      pokemon.nickname,
      pokemon.formName,
      pokemon.speciesName,
    ])
    .filter(Boolean)
    .join(" ");

  return normalizeSearchValue(
    [
      event.title,
      event.body,
      event.event_type_name,
      event.event_origin_name,
      pokemonText,
    ]
      .filter(Boolean)
      .join(" "),
  );
};

const matchesQuery = (event: MainlinePlayTimelineEvent, query: string) =>
  !query || getEventSearchText(event).includes(query);

const compareTimelineOrder = (
  left: MainlinePlayTimelineEvent,
  right: MainlinePlayTimelineEvent,
) => {
  const orderDifference =
    (left.timeline_order ?? 0) - (right.timeline_order ?? 0);

  if (orderDifference !== 0) {
    return orderDifference;
  }

  const leftDate = left.happened_at
    ? new Date(left.happened_at).getTime()
    : Number.NEGATIVE_INFINITY;
  const rightDate = right.happened_at
    ? new Date(right.happened_at).getTime()
    : Number.NEGATIVE_INFINITY;

  return leftDate - rightDate;
};

export const hasTeamHistoryFilters = (filters: TeamHistoryFilters) =>
  Boolean(filters.query.trim()) ||
  filters.eventType !== allTeamHistoryEventTypes;

export const getFilteredTeamHistoryEvents = (
  events: MainlinePlayTimelineEvent[],
  filters: TeamHistoryFilters,
) => {
  const query = normalizeSearchValue(filters.query);
  const filteredEvents = events.filter(
    (event) =>
      (filters.eventType === allTeamHistoryEventTypes ||
        event.event_type_slug === filters.eventType) &&
      matchesQuery(event, query),
  );

  return filteredEvents.toSorted((left, right) => {
    const comparison = compareTimelineOrder(left, right);
    return filters.sort === "newest" ? -comparison : comparison;
  });
};

const getEventTypeRank = (slug: string) => {
  const rank = eventTypeOrder.indexOf(slug);
  return rank === -1 ? eventTypeOrder.length : rank;
};

/*
 * "Everything" plus one pill per event type the Play has recorded. Each count
 * is what the search leaves, so a pill can read 0 while you type.
 */
export const getTeamHistoryEventTypeOptions = (
  events: MainlinePlayTimelineEvent[],
  query: string,
): TeamHistoryEventTypeOption[] => {
  const normalizedQuery = normalizeSearchValue(query);
  const eventTypes = new Map<string, TeamHistoryEventTypeOption>();
  let matchingCount = 0;

  for (const event of events) {
    const isMatch = matchesQuery(event, normalizedQuery);
    const slug = event.event_type_slug;

    if (isMatch) {
      matchingCount += 1;
    }

    if (!slug) {
      continue;
    }

    const option = eventTypes.get(slug) ?? {
      count: 0,
      label: getTeamEventDisplay(event).label,
      value: slug,
    };

    eventTypes.set(slug, {
      ...option,
      count: option.count + (isMatch ? 1 : 0),
    });
  }

  return [
    {
      count: matchingCount,
      label: "Everything",
      value: allTeamHistoryEventTypes,
    },
    ...Array.from(eventTypes.values()).sort(
      (left, right) =>
        getEventTypeRank(left.value) - getEventTypeRank(right.value) ||
        left.label.localeCompare(right.label),
    ),
  ];
};

/*
 * Month groups in the order the events already have, with each event's date
 * read on the viewer's clock (its time zone, and its current day for "Today"
 * and "Yesterday"). Timeline order wins over dates, so a month can come back
 * after an older one; it then opens a new group instead of moving events out
 * of order.
 */
export const groupTeamHistoryEventsByMonth = (
  events: MainlinePlayTimelineEvent[],
  clock: ViewerClock,
): TeamHistoryMonth[] => {
  const months: Array<TeamHistoryMonth & { monthKey: string }> = [];

  for (const event of events) {
    const date = formatTeamHistoryDate(event, clock);
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
