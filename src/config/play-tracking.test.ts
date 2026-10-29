import { describe, expect, it } from "vitest";

import {
  arePlayTrackingsEqual,
  defaultPlayTracking,
  describePlayTracking,
  isDefaultPlayTracking,
  playTrackingSchema,
  toPokedexMode,
} from "./play-tracking";

describe("play tracking", () => {
  it("starts with everything on and the Pokédex caught and seen", () => {
    expect(defaultPlayTracking).toEqual({
      collectibles: true,
      pokedexMode: "caught_and_seen",
      story: true,
    });
    expect(isDefaultPlayTracking(defaultPlayTracking)).toBe(true);
  });

  it("tells a changed choice from the default", () => {
    const changed = { ...defaultPlayTracking, story: false };

    expect(isDefaultPlayTracking(changed)).toBe(false);
    expect(arePlayTrackingsEqual(changed, defaultPlayTracking)).toBe(false);
    expect(arePlayTrackingsEqual(changed, { ...changed })).toBe(true);
  });

  it("reads an unexpected stored mode as the default", () => {
    expect(toPokedexMode("caught_only")).toBe("caught_only");
    expect(toPokedexMode("everything")).toBe("caught_and_seen");
    expect(toPokedexMode(null)).toBe("caught_and_seen");
  });

  it("names what a Play keeps, always the Pokédex", () => {
    expect(describePlayTracking(defaultPlayTracking)).toBe(
      "Story · Pokédex · Collectibles",
    );
    expect(describePlayTracking({ ...defaultPlayTracking, story: false })).toBe(
      "Pokédex · Collectibles",
    );
  });

  it("leaves Collectibles out for a game that has none", () => {
    expect(
      describePlayTracking(defaultPlayTracking, { hasCollectibles: false }),
    ).toBe("Story · Pokédex");
  });

  it("only accepts the three choices in their own shapes", () => {
    expect(playTrackingSchema.safeParse(defaultPlayTracking).success).toBe(
      true,
    );
    expect(
      playTrackingSchema.safeParse({ ...defaultPlayTracking, story: "yes" })
        .success,
    ).toBe(false);
    expect(
      playTrackingSchema.safeParse({
        ...defaultPlayTracking,
        pokedexMode: "seen_only",
      }).success,
    ).toBe(false);
    expect(playTrackingSchema.safeParse({ story: true }).success).toBe(false);
  });
});
