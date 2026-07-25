import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import { getTeamEventPokemon } from "@/modules/mainline/features/plays/hub/views/team/shared/team-event-payload";

export type TeamHistorySort = "newest" | "oldest";

export type TeamHistoryFilters = {
  eventType: string;
  query: string;
  sort: TeamHistorySort;
};

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

export const getFilteredTeamHistoryEvents = (
  events: MainlinePlayTimelineEvent[],
  filters: TeamHistoryFilters,
) => {
  const query = normalizeSearchValue(filters.query);
  const filteredEvents = events.filter((event) => {
    const matchesEventType =
      !filters.eventType || event.event_type_slug === filters.eventType;
    const matchesQuery = !query || getEventSearchText(event).includes(query);

    return matchesEventType && matchesQuery;
  });

  return filteredEvents.toSorted((left, right) => {
    const comparison = compareTimelineOrder(left, right);
    return filters.sort === "newest" ? -comparison : comparison;
  });
};

export const getTeamHistoryEventTypeOptions = (
  events: MainlinePlayTimelineEvent[],
) => {
  const eventTypes = new Map<string, string>();

  for (const event of events) {
    if (event.event_type_slug) {
      eventTypes.set(
        event.event_type_slug,
        event.event_type_name ?? "Team event",
      );
    }
  }

  return [
    { label: "All event types", value: "" },
    ...Array.from(eventTypes, ([value, label]) => ({ label, value })).sort(
      (left, right) => left.label.localeCompare(right.label),
    ),
  ];
};
