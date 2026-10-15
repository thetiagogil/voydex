import { describe, expect, it, vi } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { readMainlinePlayTimelinePreview } from "./play-timeline-reader";

const visibleRows = [
  {
    event_id: "event-2",
    event_type_slug: "note",
    pokemon_refs: [],
    team_snapshots: [],
  },
  {
    event_id: "event-1",
    event_type_slug: "milestone_completed",
    pokemon_refs: [],
    team_snapshots: [],
  },
];

/* Records each filter of the one timeline read, then returns its rows. */
const createTimelineClient = () => {
  const query = {
    eq: vi.fn(() => query),
    limit: vi.fn(() => Promise.resolve({ data: visibleRows, error: null })),
    not: vi.fn(() => query),
    order: vi.fn(() => query),
    select: vi.fn(() => query),
  };
  const client = {
    schema: vi.fn(() => ({ from: vi.fn(() => query) })),
  } as unknown as ServerSupabaseClient;

  return { client, query };
};

describe("readMainlinePlayTimelinePreview", () => {
  it("leaves hidden moment types out in the read, so the limit counts visible ones", async () => {
    const { client, query } = createTimelineClient();

    const events = await readMainlinePlayTimelinePreview(client, "play-1", 6, {
      excludeEventTypeSlugs: ["status_change"],
    });

    expect(query.not).toHaveBeenCalledWith(
      "event_type_slug",
      "in",
      "(status_change)",
    );
    expect(query.limit).toHaveBeenCalledWith(6);
    expect(events.map((event) => event.event_id)).toEqual([
      "event-2",
      "event-1",
    ]);
  });

  it("reads every type when none is hidden", async () => {
    const { client, query } = createTimelineClient();

    await readMainlinePlayTimelinePreview(client, "play-1");

    expect(query.not).not.toHaveBeenCalled();
    expect(query.limit).toHaveBeenCalledWith(5);
  });

  it("reads the latest moments by when they happened, not by when they were logged", async () => {
    const { client, query } = createTimelineClient();

    await readMainlinePlayTimelinePreview(client, "play-1");

    expect(query.order.mock.calls).toEqual([
      ["happened_at", { ascending: false, nullsFirst: false }],
      ["timeline_order", { ascending: false }],
    ]);
  });
});
