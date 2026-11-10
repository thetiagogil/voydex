import { describe, expect, it, vi } from "vitest";

const state = { catalogueFails: false };

vi.mock("@/modules/mainline/features/plays/shared/server/start-intent", () => ({
  readSignedInStartIntent: vi.fn(async () => ({
    gameSlug: "red",
    partnerSpeciesSlug: null,
  })),
}));
vi.mock(
  "@/modules/reference/features/games/server/game-catalogue-query",
  () => ({
    readGameCatalogue: vi.fn(async () => {
      if (state.catalogueFails) throw new Error("boom");

      return { games: [] };
    }),
  }),
);

import { getNewPlayDialogData } from "./new-play-dialog-query";

describe("getNewPlayDialogData", () => {
  it("hands New Play the catalogue and the game picked before signing up", async () => {
    state.catalogueFails = false;

    await expect(getNewPlayDialogData()).resolves.toEqual({
      catalogue: { games: [] },
      intent: { gameSlug: "red", partnerSpeciesSlug: null },
    });
  });

  it("says the games couldn't be read instead of failing Mainline", async () => {
    state.catalogueFails = true;

    await expect(getNewPlayDialogData()).resolves.toMatchObject({
      catalogue: null,
    });
  });
});
