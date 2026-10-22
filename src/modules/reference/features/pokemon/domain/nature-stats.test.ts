import { describe, expect, it } from "vitest";

import { getNatureEffect } from "./nature-stats";

describe("getNatureEffect", () => {
  it("names the raised and lowered stats by their short forms", () => {
    expect(getNatureEffect("attack", "special_attack")).toEqual({
      decreased: { abbreviation: "SPA", name: "Special Attack" },
      increased: { abbreviation: "ATK", name: "Attack" },
      kind: "stats",
    });
    expect(getNatureEffect("speed", "defense")).toMatchObject({
      decreased: { abbreviation: "DEF" },
      increased: { abbreviation: "SPE" },
    });
    expect(getNatureEffect("special_defense", "special_attack")).toMatchObject({
      decreased: { abbreviation: "SPA" },
      increased: { abbreviation: "SPD" },
    });
  });

  it("calls a nature with no stats neutral, as Hardy and Docile are", () => {
    expect(getNatureEffect(null, null)).toEqual({ kind: "neutral" });
  });

  it("treats an unknown stat as neutral rather than guessing", () => {
    expect(getNatureEffect("luck", "speed")).toEqual({ kind: "neutral" });
    expect(getNatureEffect("toString", "speed")).toEqual({ kind: "neutral" });
  });
});
