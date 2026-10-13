import { describe, expect, it } from "vitest";

import {
  getStartPlayHref,
  parseStartIntent,
  readStartIntentFormData,
  setStartIntentParams,
} from "./start-intent";

describe("start intent", () => {
  it("reads stored metadata, keeping only slugs", () => {
    expect(
      parseStartIntent({ gameSlug: "sword", partnerSpeciesSlug: "grookey" }),
    ).toEqual({ gameSlug: "sword", partnerSpeciesSlug: "grookey" });
    expect(parseStartIntent({ gameSlug: "lets-go-pikachu" })).toEqual({
      gameSlug: "lets-go-pikachu",
    });
    expect(
      parseStartIntent({ gameSlug: "sword", partnerSpeciesSlug: "Grookey" }),
    ).toEqual({ gameSlug: "sword" });
    expect(parseStartIntent({ gameSlug: "-sword" })).toBeNull();
    expect(parseStartIntent({ gameSlug: "a".repeat(65) })).toBeNull();
    expect(parseStartIntent("sword")).toBeNull();
    expect(parseStartIntent(null)).toBeNull();
  });

  it("round-trips through a form and a query", () => {
    const formData = new FormData();

    formData.set("game", "violet");
    formData.set("partner", "quaxly");

    const intent = readStartIntentFormData(formData);

    expect(intent).toEqual({
      gameSlug: "violet",
      partnerSpeciesSlug: "quaxly",
    });
    expect(setStartIntentParams(new URLSearchParams(), intent).toString()).toBe(
      "game=violet&partner=quaxly",
    );
    expect(
      setStartIntentParams(new URLSearchParams("a=1"), null).toString(),
    ).toBe("a=1");
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
