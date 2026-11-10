import { describe, expect, it } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { readPlayTracking } from "./play-tracking-reader";

const createFakeClient = (
  row: Record<string, unknown> | null,
  error: unknown = null,
) =>
  ({
    schema: () => ({
      from: () => ({
        select: () => ({
          eq: () => ({
            maybeSingle: () => Promise.resolve({ data: row, error }),
          }),
        }),
      }),
    }),
  }) as unknown as ServerSupabaseClient;

describe("readPlayTracking", () => {
  it("tracks everything for a Play with no settings row", async () => {
    await expect(
      readPlayTracking(createFakeClient(null), "play"),
    ).resolves.toEqual({
      collectibles: true,
      pokedexMode: "caught_and_seen",
      story: true,
    });
  });

  it("reads the Play's own switches", async () => {
    await expect(
      readPlayTracking(
        createFakeClient({
          collectibles_tracking_enabled: false,
          pokedex_mode: "caught_only",
          story_tracking_enabled: false,
        }),
        "play",
      ),
    ).resolves.toEqual({
      collectibles: false,
      pokedexMode: "caught_only",
      story: false,
    });
  });

  it("throws rather than hide an area on a failed read", async () => {
    await expect(
      readPlayTracking(createFakeClient(null, { message: "boom" }), "play"),
    ).rejects.toThrow("what this Play tracks");
  });
});
