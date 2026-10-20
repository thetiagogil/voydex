import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";

import {
  getPlayHistoryCategory,
  getPlayHistoryFilterOptions,
  getShownPlayHistoryEvents,
  groupPlayHistoryEventsByMonth,
  searchPlayHistoryEvents,
} from "./play-history-model";

const event = ({
  createdAt,
  eventId,
  eventTypeSlug,
  happenedAt,
  timelineOrder,
}: {
  createdAt?: string;
  eventId: string;
  eventTypeSlug: string;
  happenedAt?: string;
  timelineOrder: number;
}) =>
  ({
    body: null,
    created_at: createdAt ?? null,
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

  it("orders by when moments happened even when the timeline order disagrees", () => {
    const outOfOrder = [
      event({
        eventId: "october",
        eventTypeSlug: "journal_note",
        happenedAt: "2026-10-01T12:00:00Z",
        timelineOrder: 2,
      }),
      event({
        eventId: "july",
        eventTypeSlug: "journal_note",
        happenedAt: "2026-07-01T12:00:00Z",
        timelineOrder: 3,
      }),
      event({
        createdAt: "2026-08-01T12:00:00Z",
        eventId: "august-undated",
        eventTypeSlug: "journal_note",
        timelineOrder: 1,
      }),
      event({
        eventId: "july-tie",
        eventTypeSlug: "journal_note",
        happenedAt: "2026-07-01T12:00:00Z",
        timelineOrder: 4,
      }),
    ];

    expect(
      getShownPlayHistoryEvents(outOfOrder, {
        filter: "all",
        sort: "newest",
      }).map((item) => item.event_id),
    ).toEqual(["october", "august-undated", "july-tie", "july"]);
  });

  it("searches the kind, the line and the note a moment shows", () => {
    const withNote = {
      ...events[1],
      body: "Beat Milo at the Turffield Stadium.",
    } as MainlinePlayTimelineEvent;
    const ids = (query: string) =>
      searchPlayHistoryEvents(
        [events[0], withNote, ...events.slice(2)],
        query,
      ).map((item) => item.event_id);

    expect(ids("  ")).toEqual(["added", "badge", "note", "paused"]);
    expect(ids("NOTE")).toEqual(["note"]);
    expect(ids("paused")).toEqual(["paused"]);
    expect(ids("turffield")).toEqual(["badge"]);
    expect(ids("nothing like this")).toEqual([]);
  });

  it("groups consecutive moments by month without reordering them", () => {
    const imported = event({
      createdAt: "2025-05-20T12:00:00Z",
      eventId: "imported",
      eventTypeSlug: "pokemon_added",
      timelineOrder: 5,
    });
    const months = groupPlayHistoryEventsByMonth(
      getShownPlayHistoryEvents([...events, imported], {
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
      { events: ["imported"], label: "May 2025" },
    ]);
  });
});
