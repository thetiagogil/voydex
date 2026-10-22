import { describe, expect, it } from "vitest";

import { hasBattleMechanic } from "@/modules/reference/features/games/domain/battle-mechanics";

describe("hasBattleMechanic", () => {
  it("has Mega Evolution in X / Y, Let's Go and Legends: Z-A, not in Sword / Shield or Scarlet / Violet", () => {
    expect(hasBattleMechanic("mega-evolution", 13)).toBe(true);
    expect(hasBattleMechanic("mega-evolution", 17)).toBe(true);
    expect(hasBattleMechanic("mega-evolution", 26)).toBe(true);
    expect(hasBattleMechanic("mega-evolution", 27)).toBe(true);
    expect(hasBattleMechanic("mega-evolution", 18)).toBe(false);
    expect(hasBattleMechanic("mega-evolution", 23)).toBe(false);
  });

  it("has Dynamax only in Sword / Shield and its expansions", () => {
    expect(hasBattleMechanic("dynamax", 18)).toBe(true);
    expect(hasBattleMechanic("dynamax", 20)).toBe(true);
    expect(hasBattleMechanic("dynamax", 21)).toBe(false);
    expect(hasBattleMechanic("dynamax", 23)).toBe(false);
  });

  it("keeps Primal Reversion out of Let's Go and Legends: Z-A, and Ultra Burst to Ultra Sun / Ultra Moon", () => {
    expect(hasBattleMechanic("primal-reversion", 14)).toBe(true);
    expect(hasBattleMechanic("primal-reversion", 16)).toBe(true);
    expect(hasBattleMechanic("primal-reversion", 17)).toBe(false);
    expect(hasBattleMechanic("primal-reversion", 26)).toBe(false);
    expect(hasBattleMechanic("ultra-burst", 16)).toBe(true);
    expect(hasBattleMechanic("ultra-burst", 15)).toBe(false);
  });

  it("has in-battle form changes everywhere and treats an unknown mechanic as missing", () => {
    expect(hasBattleMechanic("in-battle", 3)).toBe(true);
    expect(hasBattleMechanic("in-battle", 27)).toBe(true);
    expect(hasBattleMechanic("terastal", 23)).toBe(false);
  });
});
