import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";

import {
  getFilteredTeamHistoryEvents,
  getTeamHistoryEventTypeOptions,
} from "./team-history-model";

const event = ({
  body,
  eventId,
  eventTypeName,
  eventTypeSlug,
  nickname,
  speciesName,
  timelineOrder,
}: {
  body?: string;
  eventId: string;
  eventTypeName: string;
  eventTypeSlug: string;
  nickname?: string;
  speciesName: string;
  timelineOrder: number;
}) =>
  ({
    body: body ?? null,
    event_id: eventId,
    event_type_name: eventTypeName,
    event_type_slug: eventTypeSlug,
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
    nickname: "Buddy",
    speciesName: "Pikachu",
    timelineOrder: 10,
  }),
  event({
    body: "Reached its next stage after a difficult battle.",
    eventId: "evolved",
    eventTypeName: "Pokémon Evolved",
    eventTypeSlug: "pokemon_evolved",
    speciesName: "Charmeleon",
    timelineOrder: 20,
  }),
];

describe("Team History model", () => {
  it("uses canonical timeline order instead of database creation order", () => {
    expect(
      getFilteredTeamHistoryEvents(events, {
        eventType: "",
        query: "",
        sort: "newest",
      }).map((item) => item.event_id),
    ).toEqual(["evolved", "added"]);

    expect(
      getFilteredTeamHistoryEvents(events, {
        eventType: "",
        query: "",
        sort: "oldest",
      }).map((item) => item.event_id),
    ).toEqual(["added", "evolved"]);
  });

  it("searches event copy and event-time Pokémon identity", () => {
    expect(
      getFilteredTeamHistoryEvents(events, {
        eventType: "",
        query: "buddy",
        sort: "newest",
      }).map((item) => item.event_id),
    ).toEqual(["added"]);

    expect(
      getFilteredTeamHistoryEvents(events, {
        eventType: "",
        query: "difficult battle",
        sort: "newest",
      }).map((item) => item.event_id),
    ).toEqual(["evolved"]);
  });

  it("filters by the authored event type and builds stable options", () => {
    expect(
      getFilteredTeamHistoryEvents(events, {
        eventType: "pokemon_added",
        query: "",
        sort: "newest",
      }).map((item) => item.event_id),
    ).toEqual(["added"]);

    expect(getTeamHistoryEventTypeOptions(events)).toEqual([
      { label: "All event types", value: "" },
      { label: "Pokémon Added", value: "pokemon_added" },
      { label: "Pokémon Evolved", value: "pokemon_evolved" },
    ]);
  });
});
