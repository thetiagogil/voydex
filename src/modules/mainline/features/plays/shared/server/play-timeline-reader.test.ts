import { beforeEach, describe, expect, it, vi } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

const readMomentContext = vi.hoisted(() => vi.fn());

vi.mock(
  "@/modules/mainline/features/plays/shared/server/play-moment-context-reader",
  () => ({ readMainlinePlayMomentContext: readMomentContext }),
);

import {
  readMainlinePlayPokemonMoments,
  readMainlinePlayTimelinePreview,
} from "./play-timeline-reader";

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
    contains: vi.fn(() => query),
    eq: vi.fn(() => query),
    in: vi.fn(() => query),
    limit: vi.fn(() => Promise.resolve({ data: visibleRows, error: null })),
    not: vi.fn(() => query),
    order: vi.fn(() => query),
    /* The form slugs a moment's Pokémon art needs. */
    range: vi.fn(() =>
      Promise.resolve({ data: [{ id: 25, slug: "pikachu" }], error: null }),
    ),
    select: vi.fn(() => query),
  };
  const client = {
    schema: vi.fn(() => ({ from: vi.fn(() => query) })),
  } as unknown as ServerSupabaseClient;

  return { client, query };
};

describe("readMainlinePlayTimelinePreview", () => {
  it("reads every kind of moment, status changes included", async () => {
    const { client, query } = createTimelineClient();

    const events = await readMainlinePlayTimelinePreview(client, "play-1", 6);

    expect(query.not).not.toHaveBeenCalled();
    expect(query.limit).toHaveBeenCalledWith(6);
    expect(events.map((event) => event.event_id)).toEqual([
      "event-2",
      "event-1",
    ]);
  });

  it("reads the latest moments by when they happened, not by when they were logged", async () => {
    const { client, query } = createTimelineClient();

    await readMainlinePlayTimelinePreview(client, "play-1");

    expect(query.order.mock.calls).toEqual([
      ["happened_at", { ascending: false, nullsFirst: false }],
      ["timeline_order", { ascending: false }],
    ]);
  });

  it("keeps why the read failed, so the server log names the cause", async () => {
    const { client, query } = createTimelineClient();
    const cause = { code: "57014", message: "canceling statement" };

    query.limit.mockResolvedValueOnce({ data: null, error: cause } as never);

    await expect(
      readMainlinePlayTimelinePreview(client, "play-1"),
    ).rejects.toMatchObject({
      cause,
      message: "Unable to load Mainline play timeline preview.",
    });
  });
});

describe("readMainlinePlayPokemonMoments", () => {
  const pikachuRef = { form_id: 25, play_pokemon_id: "pokemon-3" };
  const context = {
    badgeTypeByMilestoneId: [],
    trophyMilestoneIds: [],
    typeByFormId: [[25, "electric"]] as [number, "electric"][],
  };
  const row = (eventId: string, refs: unknown[] = []) => ({
    event_id: eventId,
    pokemon_refs: refs,
  });

  beforeEach(() => {
    readMomentContext.mockReset().mockResolvedValue(context);
  });

  it("gives each Pokémon its own newest moments, however many each has", async () => {
    const { client, query } = createTimelineClient();

    query.limit
      .mockResolvedValueOnce({
        data: [row("a-2"), row("a-1")],
        error: null,
      } as never)
      .mockResolvedValueOnce({ data: [], error: null } as never)
      .mockResolvedValueOnce({
        data: [row("c-1", [pikachuRef])],
        error: null,
      } as never);

    const moments = await readMainlinePlayPokemonMoments(client, {
      generationId: 7,
      limit: 3,
      playId: "play-1",
      playPokemonIds: ["pokemon-1", "pokemon-2", "pokemon-3"],
    });

    expect(query.eq).toHaveBeenCalledWith("play_id", "play-1");
    expect(query.contains.mock.calls).toEqual([
      ["pokemon_refs", '[{"play_pokemon_id":"pokemon-1"}]'],
      ["pokemon_refs", '[{"play_pokemon_id":"pokemon-2"}]'],
      ["pokemon_refs", '[{"play_pokemon_id":"pokemon-3"}]'],
    ]);
    /* Never the team snapshots, which only History draws. */
    expect(query.select).toHaveBeenCalledWith(
      expect.not.stringContaining("team_snapshots"),
    );
    expect(query.order.mock.calls.slice(0, 2)).toEqual([
      ["happened_at", { ascending: false, nullsFirst: false }],
      ["timeline_order", { ascending: false }],
    ]);
    expect(query.limit).toHaveBeenCalledWith(3);
    expect(
      Object.fromEntries(
        Object.entries(moments.byPokemonId).map(([id, events]) => [
          id,
          events.map((event) => event.event_id),
        ]),
      ),
    ).toEqual({
      "pokemon-1": ["a-2", "a-1"],
      "pokemon-2": [],
      "pokemon-3": ["c-1"],
    });
    /* The art's form slug survives the split. */
    expect(moments.byPokemonId["pokemon-3"][0].pokemon_refs).toEqual([
      expect.objectContaining({ form_id: 25, slug: "pikachu" }),
    ]);
    expect(moments.context).toBe(context);
    expect(readMomentContext).toHaveBeenCalledWith(client, {
      events: expect.any(Array),
      generationId: 7,
      playId: "play-1",
    });
  });

  it("reads no context when nothing names them", async () => {
    const { client, query } = createTimelineClient();

    query.limit.mockResolvedValueOnce({ data: [], error: null } as never);

    await expect(
      readMainlinePlayPokemonMoments(client, {
        generationId: 7,
        playId: "play-1",
        playPokemonIds: ["pokemon-1"],
      }),
    ).resolves.toEqual({
      byPokemonId: { "pokemon-1": [] },
      context: {
        badgeTypeByMilestoneId: [],
        trophyMilestoneIds: [],
        typeByFormId: [],
      },
    });
    expect(readMomentContext).not.toHaveBeenCalled();
  });

  it("fails loudly when a read fails", async () => {
    const { client, query } = createTimelineClient();

    query.limit.mockResolvedValueOnce({
      data: null,
      error: { message: "nope" },
    } as never);

    await expect(
      readMainlinePlayPokemonMoments(client, {
        generationId: 7,
        playId: "play-1",
        playPokemonIds: ["pokemon-1"],
      }),
    ).rejects.toThrow("Unable to load the Pokémon's latest moments.");
  });
});
