import { beforeEach, describe, expect, it, vi } from "vitest";

const state = {
  error: null as unknown,
  row: null as Record<string, unknown> | null,
  userId: "user-1" as string | null,
};

vi.mock("@/platform/supabase/auth", () => ({
  getClaimsWithTimeout: vi.fn(async () => ({
    data: { claims: state.userId ? { sub: state.userId } : null },
  })),
}));
vi.mock("@/platform/supabase/server-client", () => ({
  createServerSupabaseClient: vi.fn(async () => ({
    from: () => ({
      select: () => ({
        eq: () => ({
          maybeSingle: () =>
            Promise.resolve({ data: state.row, error: state.error }),
        }),
      }),
    }),
  })),
}));

import { readUserPreferences } from "./preferences-query";

beforeEach(() => {
  state.error = null;
  state.row = null;
  state.userId = "user-1";
});

describe("readUserPreferences", () => {
  it("reads no row as Follow device, Folded and the default tracking", async () => {
    await expect(readUserPreferences()).resolves.toEqual({
      motion: "system",
      newPlayDefaults: {
        collectibles: true,
        pokedexMode: "caught_and_seen",
        story: true,
      },
      searchFilters: "folded",
    });
  });

  it("reads what you saved", async () => {
    state.row = {
      default_pokedex_mode: "caught_only",
      default_track_collectibles: false,
      default_track_story: false,
      motion: "reduced",
      search_filters_open: true,
    };

    await expect(readUserPreferences()).resolves.toEqual({
      motion: "reduced",
      newPlayDefaults: {
        collectibles: false,
        pokedexMode: "caught_only",
        story: false,
      },
      searchFilters: "open",
    });
  });

  it("throws on a failed read instead of showing defaults to save over", async () => {
    state.error = { message: "boom" };

    await expect(readUserPreferences()).rejects.toThrow("couldn't be loaded");
  });

  it("throws without a session", async () => {
    state.userId = null;

    await expect(readUserPreferences()).rejects.toThrow("Log in");
  });
});
