import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";

import {
  getPlayHistoryCategory,
  getPlayHistoryFilterOptions,
  getShownPlayHistoryEvents,
  groupPlayHistoryEventsByMonth,
} from "./play-history-model";

const event = ({
  eventId,
  eventTypeSlug,
  happenedAt,
  timelineOrder,
}: {
  eventId: string;
  eventTypeSlug: string;
  happenedAt?: string;
  timelineOrder: number;
}) =>
  ({
    body: null,
    event_id: eventId,
    event_type_slug: eventTypeSlug,
    happened_at: happenedAt ?? null,
    pokemon_refs: [],
    timeline_order: timelineOrder,
    title: eventId,
  }) as unknown as MainlinePlayTimelineEvent;

const events = [
  event({
    eventId: "added",
    eventTypeSlug: "pokemon_added",
    happenedAt: "2025-06-10T12:00:00Z",
    timelineOrder: 10,
  }),
  event({
    eventId: "badge",
    eventTypeSlug: "story_milestone",
    happenedAt: "2025-07-02T12:00:00Z",
    timelineOrder: 20,
  }),
  event({
    eventId: "note",
    eventTypeSlug: "journal_note",
    happenedAt: "2025-07-04T12:00:00Z",
    timelineOrder: 30,
  }),
  event({
    eventId: "paused",
    eventTypeSlug: "status_change",
    happenedAt: "2025-07-05T12:00:00Z",
    timelineOrder: 40,
  }),
];

describe("Play History model", () => {
  it("files each moment under Story, Team, Notes or Play", () => {
    expect(
      [
        "story_milestone",
        "hall_of_fame",
        "pokemon_evolved",
        "journal_note",
        "status_change",
        "future_event",
      ].map((slug) => getPlayHistoryCategory({ event_type_slug: slug })),
    ).toEqual(["story", "story", "team", "note", "play", "play"]);
  });

  it("offers v3's five filters with their counts, zero included", () => {
    expect(getPlayHistoryFilterOptions(events.slice(0, 2))).toEqual([
      { count: 2, label: "Everything", value: "all" },
      { count: 1, label: "Story", value: "story" },
      { count: 1, label: "Team", value: "team" },
      { count: 0, label: "Notes", value: "note" },
      { count: 0, label: "Play", value: "play" },
    ]);
  });

  it("filters by category and orders by the timeline", () => {
    const ids = (filter: "all" | "team", sort: "newest" | "oldest") =>
      getShownPlayHistoryEvents(events, { filter, sort }).map(
        (item) => item.event_id,
      );

    expect(ids("all", "newest")).toEqual(["paused", "note", "badge", "added"]);
    expect(ids("all", "oldest")).toEqual(["added", "badge", "note", "paused"]);
    expect(ids("team", "newest")).toEqual(["added"]);
  });

  it("groups consecutive moments by month without reordering them", () => {
    const undated = event({
      eventId: "undated",
      eventTypeSlug: "pokemon_added",
      timelineOrder: 5,
    });
    const months = groupPlayHistoryEventsByMonth(
      getShownPlayHistoryEvents([...events, undated], {
        filter: "all",
        sort: "newest",
      }),
      { timeZone: "UTC", today: null },
    );

    expect(
      months.map((month) => ({
        events: month.entries.map((entry) => entry.event.event_id),
        label: month.label,
      })),
    ).toEqual([
      { events: ["paused", "note", "badge"], label: "July 2025" },
      { events: ["added"], label: "June 2025" },
      { events: ["undated"], label: "Date not recorded" },
    ]);
  });
});
