import { describe, expect, it } from "vitest";

import { getStartPlayHref, readStartIntentParams } from "./start-intent";

describe("start intent", () => {
  it("reads the pick from the address, keeping only slugs", () => {
    expect(
      readStartIntentParams({ game: "sword", partner: "grookey" }),
    ).toEqual({ gameSlug: "sword", partnerSpeciesSlug: "grookey" });
    expect(readStartIntentParams({ game: "lets-go-pikachu" })).toEqual({
      gameSlug: "lets-go-pikachu",
    });
    expect(
      readStartIntentParams({ game: "sword", partner: "Grookey" }),
    ).toEqual({ gameSlug: "sword" });
    expect(readStartIntentParams({ game: "-sword" })).toBeNull();
    expect(readStartIntentParams({ game: "a".repeat(65) })).toBeNull();
    expect(
      readStartIntentParams({ game: null, partner: "grookey" }),
    ).toBeNull();
  });

  it("links Start a Play at a generation or a game", () => {
    expect(getStartPlayHref()).toBe("/start");
    expect(getStartPlayHref({ generation: 3 })).toBe("/start?gen=3");
    expect(getStartPlayHref({ gameSlug: "sword" })).toBe("/start?game=sword");
    expect(
      getStartPlayHref({ gameSlug: "sword", partnerSpeciesSlug: "grookey" }),
    ).toBe("/start?game=sword&partner=grookey");
  });
});
