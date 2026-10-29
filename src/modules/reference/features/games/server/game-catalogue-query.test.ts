import { describe, expect, it, vi } from "vitest";

vi.mock("next/cache", () => ({
  unstable_cache: (read: () => unknown) => read,
}));

vi.mock("@/platform/supabase/public-client", () => ({
  createPublicSupabaseClient: vi.fn(() => ({})),
}));

vi.mock("@/modules/reference/features/games/server/game-shelf-reader", () => ({
  readGameBadgeCountsByGameSlug: vi.fn(async () => {
    throw new Error("Unable to load the games' badges.");
  }),
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
  it("still reads the games when the badges can't be read", async () => {
    await expect(readGameCatalogue()).resolves.toMatchObject({
      badgeCountsByGameSlug: {},
      games: [],
    });
  });
});
