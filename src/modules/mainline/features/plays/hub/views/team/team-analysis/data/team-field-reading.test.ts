import { describe, expect, it } from "vitest";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { BaseStats } from "@/modules/reference/features/pokemon/domain/battle-math";
import { pokemonTypeSlugs } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Type } from "@/modules/reference/types";

import { readTeamField } from "./team-field-reading";

const types = pokemonTypeSlugs.map(
  (slug, index) =>
    ({
      id: index + 1,
      introduced_generation_id: 1,
      name: slug[0].toUpperCase() + slug.slice(1),
      slug,
      sort_order: index + 1,
    }) as Type,
);
const typeOf = (slug: string) => types.find((type) => type.slug === slug)!;

const stats = (value: number): BaseStats => ({
  attack: value,
  defense: value,
  hp: value,
  specialAttack: value,
  specialDefense: value,
  speed: value,
});

const member = (
  name: string,
  typeSlugs: string[],
  level: number | null,
  baseStats: BaseStats | null = stats(80),
) =>
  ({
    baseStats,
    level,
    moves: [],
    nickname: name,
    primaryType: typeOf(typeSlugs[0]),
    secondaryType: typeSlugs[1] ? typeOf(typeSlugs[1]) : null,
    tera_type_slug: null,
  }) as unknown as MainlinePlayTeamMember;

/* Hp, Attack, Defense, Sp. Atk, Sp. Def, Speed. */
const base = (
  ...[hp, attack, defense, specialAttack, specialDefense, speed]: number[]
): BaseStats => ({
  attack,
  defense,
  hp,
  specialAttack,
  specialDefense,
  speed,
});

const balanced = (level: number | null, lowLevel = level) => [
  member(
    "Infernape",
    ["fire", "fighting"],
    level,
    base(76, 104, 71, 104, 71, 108),
  ),
  member(
    "Staraptor",
    ["normal", "flying"],
    level,
    base(85, 120, 70, 50, 60, 100),
  ),
  member(
    "Garchomp",
    ["dragon", "ground"],
    level,
    base(108, 130, 95, 80, 85, 102),
  ),
  member(
    "Lucario",
    ["fighting", "steel"],
    level,
    base(70, 110, 70, 115, 70, 90),
  ),
  member(
    "Gyarados",
    ["water", "flying"],
    lowLevel,
    base(95, 125, 79, 60, 100, 81),
  ),
  member(
    "Roserade",
    ["grass", "poison"],
    lowLevel,
    base(60, 70, 65, 125, 105, 90),
  ),
];

const read = (members: MainlinePlayTeamMember[], generationOrder = 4) =>
  readTeamField({ generationOrder, members, types });

describe("readTeamField", () => {
  it("reads a full team of six at your top level", () => {
    const field = read(balanced(47));

    expect(field.level).toBe(47);
    expect(field.theirCount).toBe(6);
    expect(field.lagging).toEqual([]);
    expect(field.unrecorded).toEqual({ levels: 0, moves: 6 });
    /* Gen 4 has every type but Fairy. */
    expect(field.types).toHaveLength(17);
    /* A balanced team of six beats an even field cheaply. */
    expect(field.share).toBeLessThanOrEqual(0.3);
  });

  it("weighs level first: yours far below your top pull the team down", () => {
    const even = read(balanced(50));
    const behind = read(balanced(50, 44));
    const farBehind = read(balanced(50, 30));

    expect(behind.lagging).toEqual([
      { level: 44, name: "Gyarados" },
      { level: 44, name: "Roserade" },
    ]);
    expect(behind.share).toBeGreaterThan(even.share);
    expect(farBehind.share).toBeGreaterThan(behind.share);
  });

  it("weighs the whole team: a lone strong Pokémon can't carry the rest", () => {
    const move = (type: string) => ({
      attributes: { accuracy: 100, damage_class: "special", power: 90 },
      id: 1,
      name: `${type}-move`,
      slot: 1,
      slug: `${type}-move`,
      type: typeOf(type),
    });
    const star = {
      ...member(
        "Star",
        ["dragon", "ground"],
        50,
        base(108, 130, 95, 80, 85, 102),
      ),
      moves: ["fire", "water", "grass", "electric", "ice"].map(move),
    } as MainlinePlayTeamMember;
    const weak = (name: string) =>
      member(name, ["normal"], 50, base(40, 40, 40, 40, 40, 40));
    const lopsided = read([star, ...["a", "b", "c", "d", "e"].map(weak)]);
    const balancedField = read(balanced(50));
    const withWeakLink = read([...balanced(50).slice(0, 5), weak("f")]);

    expect(lopsided.share).toBeGreaterThanOrEqual(0.9);
    expect(balancedField.share).toBeLessThanOrEqual(0.3);
    /* One weak member now counts, where the best two answers used to hide it. */
    expect(withWeakLink.share).toBeGreaterThan(balancedField.share);
  });

  it("weighs how many you bring against a full six after level", () => {
    const full = read(balanced(50));
    const half = read(balanced(50).slice(0, 3));

    expect(half.share).toBeGreaterThan(full.share);
  });

  it("finds the type a one-type team can't answer, and whom it outclasses", () => {
    const water = [
      member("Samurott", ["water"], 50),
      member("Jellicent", ["water", "ghost"], 50),
      member("Carracosta", ["water", "rock"], 50),
      member("Seismitoad", ["water", "ground"], 50),
    ];
    const field = read(water, 5);
    const hardest = [...field.types].sort(
      (left, right) => right.answerCost - left.answerCost,
    )[0];

    expect(hardest.type.slug).toBe("grass");
    expect(hardest.answerCost).toBeGreaterThanOrEqual(0.9);
    expect(hardest.beats).toEqual(
      expect.arrayContaining(["Carracosta", "Seismitoad"]),
    );
  });

  it("knows when none of yours can hurt a type", () => {
    const field = read(
      [member("Snorlax", ["normal"], 30), member("Tauros", ["normal"], 30)],
      1,
    );

    expect(
      field.types.find((reading) => reading.type.slug === "ghost")
        ?.hitsToKnockOut,
    ).toBe(Infinity);
    expect(
      field.types.find((reading) => reading.type.slug === "grass")
        ?.hitsToKnockOut,
    ).toBeLessThan(Infinity);
  });

  it("hits with recorded moves, set-damage ones included", () => {
    const move = (slug: string, type: string, power: number | null) => ({
      attributes: { accuracy: 100, damage_class: "special", power },
      id: 1,
      name: slug,
      slot: 1,
      slug,
      type: typeOf(type),
    });
    const thunderbolt = {
      ...member("Raichu", ["electric"], 40),
      moves: [move("thunderbolt", "electric", 90)],
    } as MainlinePlayTeamMember;
    const nightShade = {
      ...member("Gengar", ["ghost", "poison"], 40),
      moves: [move("night-shade", "ghost", null)],
    } as MainlinePlayTeamMember;
    const byMoves = read([thunderbolt, nightShade], 1);
    const water = (reading: ReturnType<typeof read>) =>
      reading.types.find((type) => type.type.slug === "water")!;

    expect(byMoves.unrecorded).toEqual({ levels: 0, moves: 0 });
    /* Thunderbolt knocks out a Water-type faster than a typical Electric hit at Lv. 40. */
    expect(water(byMoves).hitsToKnockOut).toBeLessThanOrEqual(
      water(
        read(
          [
            member("Raichu", ["electric"], 40),
            member("Gengar", ["ghost", "poison"], 40),
          ],
          1,
        ),
      ).hitsToKnockOut,
    );
    /* Night Shade still hurts a Normal-type Ghost moves can't touch. */
    expect(
      byMoves.types.find((type) => type.type.slug === "normal")!.hitsToKnockOut,
    ).toBeLessThan(Infinity);
  });

  it("reads an empty team or a typeless Pokémon without breaking", () => {
    const empty = read([]);

    /* Nothing answers them: each of the six costs a whole Pokémon. */
    expect(empty.share).toBe(6);
    expect(empty.types.every((type) => type.beats.length === 0)).toBe(true);

    const typeless = read([
      {
        ...member("Missing", ["normal"], 30),
        primaryType: null,
      } as MainlinePlayTeamMember,
    ]);

    expect(typeless.types.every((type) => type.beats.length === 0)).toBe(true);
  });

  it("says what it had to assume when levels aren't recorded", () => {
    const field = read([member("Pikachu", ["electric"], null, null)], 1);

    expect(field.level).toBe(50);
    expect(field.unrecorded).toEqual({ levels: 1, moves: 1 });
    /* Gen 1 has fifteen types. */
    expect(field.types).toHaveLength(15);
  });
});
