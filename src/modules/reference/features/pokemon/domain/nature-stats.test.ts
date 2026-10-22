import { describe, expect, it } from "vitest";

import { getNatureEffect, getNatureFocus } from "./nature-stats";

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

describe("getNatureFocus", () => {
  it("groups a nature under the stat it raises", () => {
    expect(getNatureFocus("attack", "speed").label).toBe("Raises Attack");
    expect(getNatureFocus("special_defense", "attack").label).toBe(
      "Raises Special Defense",
    );
  });

  it("puts the neutral natures in their own group, after the five stats", () => {
    const neutral = getNatureFocus(null, null);

    expect(neutral.label).toBe("Neutral");
    expect(neutral.order).toBeGreaterThan(
      getNatureFocus("speed", "attack").order,
    );
  });

  it("orders the stats attack, defense, special attack, special defense, speed", () => {
    expect(
      ["speed", "attack", "special_defense", "defense", "special_attack"]
        .map((stat) => [stat, getNatureFocus(stat, "attack").order] as const)
        .toSorted((left, right) => left[1] - right[1])
        .map(([stat]) => stat),
    ).toEqual([
      "attack",
      "defense",
      "special_attack",
      "special_defense",
      "speed",
    ]);
  });
});
