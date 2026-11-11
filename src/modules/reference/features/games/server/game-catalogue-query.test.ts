import { describe, expect, it, vi } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

vi.mock("@/modules/reference/features/games/server/game-shelf-reader", () => ({
  readGameBadgeCountsByGameSlug: vi.fn(async () => {
    throw new Error("Unable to load the games' badges.");
  }),
  readGameCollectiblesByGameSlug: vi.fn(async () => ({})),
  readGameExpansionsByGameSlug: vi.fn(async () => ({})),
  readGameShelfGames: vi.fn(async () => []),
  readGameStartersByGameSlug: vi.fn(async () => ({})),
}));

vi.mock(
  "@/modules/reference/features/games/server/type-introduction-reader",
  () => ({ readTypeIntroductions: vi.fn(async () => []) }),
);

const { readGameCatalogue } =
  await import("@/modules/reference/features/games/server/game-catalogue-query");

describe("readGameCatalogue", () => {
  /* It runs in the build: a part it can't read fails the build, never ships empty. */
  it("fails when a part of the catalogue can't be read", async () => {
    await expect(readGameCatalogue({} as ServerSupabaseClient)).rejects.toThrow(
      "Unable to load the games' badges.",
    );
  });
});
