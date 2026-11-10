import { describe, expect, it } from "vitest";

import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";

import { resolveNewPlayInitialChoice } from "./new-play-initial-choice";

const games = [
  { slug: "sword" },
  { slug: "violet" },
] as NewPlayPickerData["games"];

describe("resolveNewPlayInitialChoice", () => {
  it("opens on the game asked for, with no partner", () => {
    expect(resolveNewPlayInitialChoice(games, { gameSlug: "violet" })).toEqual({
      gameSlug: "violet",
      partnerSpeciesSlug: null,
    });
  });

  it("opens on the game and partner asked for", () => {
    expect(
      resolveNewPlayInitialChoice(games, {
        gameSlug: "sword",
        partnerSpeciesSlug: "grookey",
      }),
    ).toEqual({ gameSlug: "sword", partnerSpeciesSlug: "grookey" });
  });

  it("drops a partner asked for with a game the picker doesn't know", () => {
    expect(
      resolveNewPlayInitialChoice(games, {
        gameSlug: "1",
        partnerSpeciesSlug: "grookey",
      }),
    ).toEqual({ gameSlug: null, partnerSpeciesSlug: null });
  });

  it("opens on nothing without a game", () => {
    expect(resolveNewPlayInitialChoice(games, { gameSlug: null })).toEqual({
      gameSlug: null,
      partnerSpeciesSlug: null,
    });
  });
});
