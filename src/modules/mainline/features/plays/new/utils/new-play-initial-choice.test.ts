import { describe, expect, it } from "vitest";

import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";

import { resolveNewPlayInitialChoice } from "./new-play-initial-choice";

const games = [
  { slug: "sword" },
  { slug: "violet" },
] as NewPlayPickerData["games"];

describe("resolveNewPlayInitialChoice", () => {
  it("opens on the game asked for, without the wish's partner", () => {
    expect(
      resolveNewPlayInitialChoice(games, "violet", {
        gameSlug: "sword",
        partnerSpeciesSlug: "sobble",
      }),
    ).toEqual({ gameSlug: "violet", partnerSpeciesSlug: null });
  });

  it("falls back to the wish, with its partner", () => {
    expect(
      resolveNewPlayInitialChoice(games, null, {
        gameSlug: "sword",
        partnerSpeciesSlug: "sobble",
      }),
    ).toEqual({ gameSlug: "sword", partnerSpeciesSlug: "sobble" });
  });

  it("keeps the wish's partner when the asked game is the wish's", () => {
    expect(
      resolveNewPlayInitialChoice(games, "sword", { gameSlug: "sword" }),
    ).toEqual({ gameSlug: "sword", partnerSpeciesSlug: null });
  });

  it("ignores games the picker doesn't know", () => {
    expect(
      resolveNewPlayInitialChoice(games, "unknown", { gameSlug: "missing" }),
    ).toEqual({ gameSlug: null, partnerSpeciesSlug: null });
  });
});
