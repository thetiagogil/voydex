import { beforeEach, describe, expect, it, vi } from "vitest";

const state = { defaultsFail: false };
const saved = {
  collectibles: false,
  pokedexMode: "caught_only",
  story: false,
};

vi.mock(
  "@/modules/mainline/features/plays/shared/server/trainer-profile-query",
  () => ({
    readSignedInTrainerNames: vi.fn(async () => ({
      displayName: "Ash",
      trainerName: "Red",
    })),
  }),
);
vi.mock("@/modules/mainline/features/plays/shared/server/start-intent", () => ({
  readSignedInStartIntent: vi.fn(async () => null),
}));
vi.mock(
  "@/modules/mainline/features/plays/shared/server/tracking-defaults-query",
  () => ({
    readSignedInTrackingDefaults: vi.fn(async () => {
      if (state.defaultsFail) throw new Error("boom");

      return saved;
    }),
  }),
);
vi.mock(
  "@/modules/mainline/shared/server/challenge-rule-choices-reader",
  () => ({
    readChallengeRuleChoices: vi.fn(async () => []),
  }),
);
vi.mock("@/modules/mainline/shared/server/rule-presets-reader", () => ({
  readRulePresets: vi.fn(async () => []),
}));
vi.mock(
  "@/modules/reference/features/games/server/game-catalogue-query",
  () => ({
    readGameCatalogue: vi.fn(async () => ({ games: [] })),
  }),
);
vi.mock("@/platform/supabase/server-client", () => ({
  createServerSupabaseClient: vi.fn(async () => ({})),
}));

import { getNewPlayDialogData } from "./new-play-dialog-query";

beforeEach(() => {
  state.defaultsFail = false;
});

describe("getNewPlayDialogData", () => {
  it("hands New Play your saved defaults", async () => {
    await expect(getNewPlayDialogData()).resolves.toMatchObject({
      trackingDefaults: saved,
    });
  });

  it("says the defaults couldn't be read instead of showing everything on", async () => {
    state.defaultsFail = true;

    const data = await getNewPlayDialogData();

    expect(data.trackingDefaults).toBeNull();
    expect(data.picker?.trainerName).toBe("Red");
  });
});
