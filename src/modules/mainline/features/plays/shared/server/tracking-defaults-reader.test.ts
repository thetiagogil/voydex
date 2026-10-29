import { describe, expect, it } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { readTrackingDefaults } from "./tracking-defaults-reader";

const createFakeClient = (
  row: Record<string, unknown> | null,
  error: unknown = null,
) =>
  ({
    from: () => ({
      select: () => ({
        eq: () => ({
          maybeSingle: () => Promise.resolve({ data: row, error }),
        }),
      }),
    }),
  }) as unknown as ServerSupabaseClient;

describe("readTrackingDefaults", () => {
  it("starts everything on until you save defaults", async () => {
    await expect(
      readTrackingDefaults(createFakeClient(null), "user"),
    ).resolves.toEqual({
      collectibles: true,
      pokedexMode: "caught_and_seen",
      story: true,
    });
  });

  it("reads your saved defaults", async () => {
    await expect(
      readTrackingDefaults(
        createFakeClient({
          default_pokedex_mode: "caught_only",
          default_track_collectibles: false,
          default_track_story: true,
        }),
        "user",
      ),
    ).resolves.toEqual({
      collectibles: false,
      pokedexMode: "caught_only",
      story: true,
    });
  });

  it("throws on a failed read", async () => {
    await expect(
      readTrackingDefaults(createFakeClient(null, { message: "boom" }), "user"),
    ).rejects.toThrow("New Play defaults");
  });
});
