import { describe, expect, it } from "vitest";

import {
  getBattleStats,
  getDuel,
  getExpectedDamage,
  getTypeDamageClass,
  type BaseStats,
  type Battler,
} from "./battle-math";

const even: BaseStats = {
  attack: 80,
  defense: 80,
  hp: 80,
  specialAttack: 80,
  specialDefense: 80,
  speed: 80,
};

const battler = (
  level: number,
  types: Battler["types"],
  attackType: Battler["types"][number],
  overrides: Partial<Battler> = {},
): Battler => ({
  attacks: [
    {
      accuracy: 100,
      damageClass: "special",
      power: 80,
      slug: "a-move",
      typeSlug: attackType,
    },
  ],
  baseStats: even,
  level,
  stabTypes: types,
  types,
  ...overrides,
});

describe("battle math", () => {
  it("works out stats the games' way", () => {
    expect(getBattleStats(even, 50)).toEqual({
      attack: 92,
      defense: 92,
      hp: 147,
      specialAttack: 92,
      specialDefense: 92,
      speed: 92,
    });
  });

  it("reads a move's category by its type before Gen 4", () => {
    expect(getTypeDamageClass("dark", 3, even)).toBe("special");
    expect(getTypeDamageClass("ghost", 3, even)).toBe("physical");
    expect(getTypeDamageClass("dark", 4, { ...even, specialAttack: 120 })).toBe(
      "special",
    );
  });

  it("weighs the same-type bonus, type effectiveness and accuracy", () => {
    const water = battler(50, ["water"], "water");
    const fire = battler(50, ["fire"], "fire");
    const neutral = getExpectedDamage({
      attack: { ...water.attacks[0], typeSlug: "normal" },
      attacker: water,
      defender: fire,
      generationOrder: 9,
    });
    const superEffective = getExpectedDamage({
      attack: water.attacks[0],
      attacker: water,
      defender: fire,
      generationOrder: 9,
    });

    expect(superEffective / neutral).toBeCloseTo(3);
    expect(
      getExpectedDamage({
        attack: { ...water.attacks[0], accuracy: 50 },
        attacker: water,
        defender: fire,
        generationOrder: 9,
      }) / superEffective,
    ).toBeCloseTo(0.5);
  });

  it("lets level outweigh types: Lv. 70 wipes Lv. 20 that hit it for 2×", () => {
    const duel = getDuel({
      generationOrder: 9,
      their: battler(20, ["grass"], "grass"),
      your: battler(70, ["water"], "fire"),
    });

    expect(duel.yourShare).toBeGreaterThan(1);
    expect(duel.theirShare).toBeLessThan(0.15);
    expect(duel.cost).toBeLessThan(0.15);
  });

  it("costs you nothing when you knock them out before they move", () => {
    expect(
      getDuel({
        generationOrder: 9,
        their: battler(20, ["grass"], "grass"),
        your: battler(70, ["water"], "fire", {
          baseStats: { ...even, speed: 120 },
        }),
      }).cost,
    ).toBe(0);
  });

  it("leaves out moves that knock out their user and halves two-turn ones", () => {
    const electrode = battler(40, ["electric"], "normal");
    const target = battler(40, ["normal"], "normal");
    const hit = (slug: string) =>
      getExpectedDamage({
        attack: { ...electrode.attacks[0], slug },
        attacker: electrode,
        defender: target,
        generationOrder: 9,
      });

    expect(hit("explosion")).toBe(0);
    expect(hit("hyper-beam") / hit("a-move")).toBeCloseTo(0.53, 2);
  });

  it("never wins a duel it can't hurt", () => {
    expect(
      getDuel({
        generationOrder: 9,
        their: battler(30, ["ghost"], "dark"),
        your: battler(30, ["normal"], "normal"),
      }).cost,
    ).toBe(Infinity);
  });

  it("never wins a duel when neither side can hurt the other", () => {
    expect(
      getDuel({
        generationOrder: 2,
        their: battler(30, ["ghost"], "ghost"),
        your: battler(30, ["normal"], "normal"),
      }).cost,
    ).toBe(Infinity);
  });

  it("deals set damage whatever the stats, unless the type is immune", () => {
    const gengar = battler(56, ["ghost", "poison"], "ghost");
    const nightShade = {
      accuracy: 100,
      damageClass: "special" as const,
      power: null,
      slug: "night-shade",
      typeSlug: "ghost" as const,
    };

    expect(
      getExpectedDamage({
        attack: nightShade,
        attacker: gengar,
        defender: battler(56, ["water"], "water"),
        generationOrder: 1,
      }),
    ).toBe(56);
    expect(
      getExpectedDamage({
        attack: nightShade,
        attacker: gengar,
        defender: battler(56, ["normal"], "normal"),
        generationOrder: 1,
      }),
    ).toBe(0);
  });

  it("doubles their HP while they Dynamax", () => {
    const your = battler(50, ["water"], "water");
    const share = (hpMultiplier: number) =>
      getDuel({
        generationOrder: 8,
        their: battler(50, ["fire"], "fire", { hpMultiplier }),
        your,
      }).yourShare;

    expect(share(1) / share(2)).toBeCloseTo(2);
  });
});
