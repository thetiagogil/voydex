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
      resolveNewPlayInitialChoice(
        games,
        { gameSlug: "violet" },
        { gameSlug: "sword", partnerSpeciesSlug: "sobble" },
      ),
    ).toEqual({ gameSlug: "violet", partnerSpeciesSlug: null });
  });

  it("opens on the game and partner asked for, over the wish's", () => {
    expect(
      resolveNewPlayInitialChoice(
        games,
        { gameSlug: "sword", partnerSpeciesSlug: "grookey" },
        { gameSlug: "sword", partnerSpeciesSlug: "sobble" },
      ),
    ).toEqual({ gameSlug: "sword", partnerSpeciesSlug: "grookey" });
  });

  it("drops a partner asked for with a game the picker doesn't know", () => {
    expect(
      resolveNewPlayInitialChoice(
        games,
        { gameSlug: "1", partnerSpeciesSlug: "grookey" },
        { gameSlug: "violet" },
      ),
    ).toEqual({ gameSlug: "violet", partnerSpeciesSlug: null });
  });

  it("falls back to the wish, with its partner", () => {
    expect(
      resolveNewPlayInitialChoice(
        games,
        { gameSlug: null },
        { gameSlug: "sword", partnerSpeciesSlug: "sobble" },
      ),
    ).toEqual({ gameSlug: "sword", partnerSpeciesSlug: "sobble" });
  });

  it("keeps the wish's partner when the asked game is the wish's", () => {
    expect(
      resolveNewPlayInitialChoice(
        games,
        { gameSlug: "sword" },
        { gameSlug: "sword", partnerSpeciesSlug: "sobble" },
      ),
    ).toEqual({ gameSlug: "sword", partnerSpeciesSlug: "sobble" });
  });

  it("ignores games the picker doesn't know", () => {
    expect(
      resolveNewPlayInitialChoice(
        games,
        { gameSlug: "unknown" },
        { gameSlug: "missing" },
      ),
    ).toEqual({ gameSlug: null, partnerSpeciesSlug: null });
  });
});
