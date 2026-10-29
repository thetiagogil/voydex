import { describe, expect, it } from "vitest";

import {
  getKeptCaughtAt,
  getKeptSeenAt,
  splitCaughtOnlyUncatch,
  type PokedexProgressRecord,
} from "./pokedex-progress-records";

const record = (
  overrides: Partial<PokedexProgressRecord>,
): PokedexProgressRecord => ({
  caught_at: "2026-10-20T10:00:00.000Z",
  is_caught: true,
  is_seen: true,
  seen_at: "2026-10-20T10:00:00.000Z",
  species_id: 1,
  ...overrides,
});

describe("getKeptSeenAt", () => {
  it("keeps an earlier Seen date and starts one otherwise", () => {
    const now = "2026-10-29T12:00:00.000Z";

    expect(
      getKeptSeenAt(record({ seen_at: "2026-10-18T09:00:00.000Z" }), now),
    ).toBe("2026-10-18T09:00:00.000Z");
    expect(getKeptSeenAt(undefined, now)).toBe(now);
    expect(getKeptSeenAt(record({ seen_at: null }), now)).toBe(now);
  });
});

describe("getKeptCaughtAt", () => {
  it("keeps the first catch, so catching again never reads as seen before", () => {
    const now = "2026-10-29T12:00:00.000Z";

    expect(getKeptCaughtAt(record({}), now)).toBe("2026-10-20T10:00:00.000Z");
    expect(
      getKeptCaughtAt(record({ caught_at: null, is_caught: false }), now),
    ).toBe(now);
    expect(getKeptCaughtAt(undefined, now)).toBe(now);
  });
});

describe("splitCaughtOnlyUncatch", () => {
  it("clears a catch whose Seen came with it and keeps an earlier Seen", () => {
    expect(
      splitCaughtOnlyUncatch([
        record({ species_id: 1 }),
        record({ seen_at: "2026-10-18T09:00:00.000Z", species_id: 2 }),
        record({ caught_at: null, is_caught: false, species_id: 3 }),
        record({ seen_at: null, species_id: 4 }),
      ]),
    ).toEqual({ clearedSpeciesIds: [1, 4], keptSeenSpeciesIds: [2, 3] });
  });
});
