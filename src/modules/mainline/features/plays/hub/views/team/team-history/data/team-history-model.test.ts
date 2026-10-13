import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";

import {
  allTeamHistoryEventTypes,
  getFilteredTeamHistoryEvents,
  getTeamHistoryEventTypeOptions,
  groupTeamHistoryEventsByMonth,
  hasTeamHistoryFilters,
} from "./team-history-model";

const event = ({
  body,
  eventId,
  eventTypeName,
  eventTypeSlug,
  happenedAt,
  nickname,
  speciesName,
  timelineOrder,
}: {
  body?: string;
  eventId: string;
  eventTypeName: string;
  eventTypeSlug: string;
  happenedAt?: string;
  nickname?: string;
  speciesName: string;
  timelineOrder: number;
}) =>
  ({
    body: body ?? null,
    event_id: eventId,
    event_type_name: eventTypeName,
    event_type_slug: eventTypeSlug,
    happened_at: happenedAt ?? null,
    pokemon_refs: [
      {
        nickname: nickname ?? null,
        role: "subject",
        species_name: speciesName,
      },
    ],
    timeline_order: timelineOrder,
    title: `${speciesName} event`,
  }) as unknown as MainlinePlayTimelineEvent;

const events = [
  event({
    eventId: "added",
    eventTypeName: "Pokémon Added",
    eventTypeSlug: "pokemon_added",
    happenedAt: "2025-06-10T12:00:00Z",
    nickname: "Buddy",
    speciesName: "Pikachu",
    timelineOrder: 10,
  }),
  event({
    body: "Reached its next stage after a difficult battle.",
    eventId: "evolved",
    eventTypeName: "Pokémon Evolved",
    eventTypeSlug: "pokemon_evolved",
    happenedAt: "2025-07-02T12:00:00Z",
    speciesName: "Charmeleon",
    timelineOrder: 20,
  }),
];

const filters = {
  eventType: allTeamHistoryEventTypes,
  query: "",
  sort: "newest" as const,
};

describe("Team History model", () => {
  it("uses canonical timeline order instead of database creation order", () => {
    expect(
      getFilteredTeamHistoryEvents(events, filters).map(
        (item) => item.event_id,
      ),
    ).toEqual(["evolved", "added"]);

    expect(
      getFilteredTeamHistoryEvents(events, { ...filters, sort: "oldest" }).map(
        (item) => item.event_id,
      ),
    ).toEqual(["added", "evolved"]);
  });

  it("searches event copy and event-time Pokémon identity", () => {
    expect(
      getFilteredTeamHistoryEvents(events, { ...filters, query: "buddy" }).map(
        (item) => item.event_id,
      ),
    ).toEqual(["added"]);

    expect(
      getFilteredTeamHistoryEvents(events, {
        ...filters,
        query: "difficult battle",
      }).map((item) => item.event_id),
    ).toEqual(["evolved"]);
  });

  it("filters by the authored event type", () => {
    expect(
      getFilteredTeamHistoryEvents(events, {
        ...filters,
        eventType: "pokemon_added",
      }).map((item) => item.event_id),
    ).toEqual(["added"]);
    expect(hasTeamHistoryFilters(filters)).toBe(false);
    expect(
      hasTeamHistoryFilters({ ...filters, eventType: "pokemon_added" }),
    ).toBe(true);
    expect(hasTeamHistoryFilters({ ...filters, query: " pika " })).toBe(true);
  });

  it("builds one pill per recorded event type, counting what the search leaves", () => {
    expect(getTeamHistoryEventTypeOptions(events, "")).toEqual([
      { count: 2, label: "Everything", value: allTeamHistoryEventTypes },
      { count: 1, label: "Added", value: "pokemon_added" },
      { count: 1, label: "Evolved", value: "pokemon_evolved" },
    ]);

    expect(getTeamHistoryEventTypeOptions(events, "buddy")).toEqual([
      { count: 1, label: "Everything", value: allTeamHistoryEventTypes },
      { count: 1, label: "Added", value: "pokemon_added" },
      { count: 0, label: "Evolved", value: "pokemon_evolved" },
    ]);
  });

  it("groups consecutive events by month without reordering them", () => {
    const undated = event({
      eventId: "undated",
      eventTypeName: "Pokémon Added",
      eventTypeSlug: "pokemon_added",
      speciesName: "Eevee",
      timelineOrder: 5,
    });
    const months = groupTeamHistoryEventsByMonth(
      getFilteredTeamHistoryEvents([...events, undated], filters),
      { timeZone: "UTC", today: null },
    );

    expect(
      months.map((month) => ({
        events: month.entries.map((entry) => entry.event.event_id),
        label: month.label,
      })),
    ).toEqual([
      { events: ["evolved"], label: "July 2025" },
      { events: ["added"], label: "June 2025" },
      { events: ["undated"], label: "Date not recorded" },
    ]);
  });
});
