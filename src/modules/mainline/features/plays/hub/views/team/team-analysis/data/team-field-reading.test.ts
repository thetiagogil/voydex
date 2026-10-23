import { describe, expect, it } from "vitest";

import type {
  MainlinePlayLevelCap,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/hub/types";
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

const cap = (levels: number[]): MainlinePlayLevelCap => ({
  battle: { isPromotionMatch: false, kind: "Gym Leader", name: "Roark" },
  level: Math.max(...levels),
  status: "capped",
  teamLevels: levels,
});

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

const balanced = (level: number | null) => [
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
    level,
    base(95, 125, 79, 60, 100, 81),
  ),
  member(
    "Roserade",
    ["grass", "poison"],
    level,
    base(60, 70, 65, 125, 105, 90),
  ),
];

const read = (
  members: MainlinePlayTeamMember[],
  levelCap: MainlinePlayLevelCap | null,
  generationOrder = 4,
) => readTeamField({ generationOrder, levelCap, members, types });

describe("readTeamField", () => {
  it("reads at the next leader battle's levels, as many as it brings", () => {
    const field = read(balanced(47), cap([48, 50, 50]));

    expect(field.benchmark).toEqual({
      kind: "battle",
      level: 50,
      levels: [48, 50, 50],
      name: "Roark",
    });
    expect(field.levelGap).toBe(-3);
    expect(field.unrecorded).toEqual({ levels: 0, moves: 6 });
    /* Gen 4 has every type but Fairy. */
    expect(field.types).toHaveLength(17);
  });

  it("weighs level first: the further behind, the more the field costs", () => {
    const even = read(balanced(50), cap(Array(6).fill(50)));
    const behind = read(balanced(45), cap(Array(6).fill(50)));
    const farBehind = read(balanced(35), cap(Array(6).fill(50)));

    expect(even.share).toBeLessThanOrEqual(0.3);
    expect(behind.share).toBeGreaterThan(even.share);
    expect(farBehind.share).toBeGreaterThanOrEqual(0.9);
  });

  it("weighs how many each side has after level", () => {
    const full = read(balanced(50), cap(Array(6).fill(50)));
    const half = read(balanced(50).slice(0, 3), cap(Array(6).fill(50)));
    const fewerOfTheirs = read(balanced(50), cap([50, 50]));

    expect(half.share).toBeGreaterThan(full.share);
    expect(fewerOfTheirs.share).toBeLessThan(full.share);
  });

  it("finds the type a one-type team can't answer, and whom it outclasses", () => {
    const water = [
      member("Samurott", ["water"], 50),
      member("Jellicent", ["water", "ghost"], 50),
      member("Carracosta", ["water", "rock"], 50),
      member("Seismitoad", ["water", "ground"], 50),
    ];
    const field = read(water, cap(Array(4).fill(50)), 5);
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
      null,
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

  it("reads at your top level, as many as you have, once no leader battle is left", () => {
    const field = read(
      [
        member("Garchomp", ["dragon", "ground"], 62),
        member("Lucario", ["fighting", "steel"], 58),
      ],
      { status: "no-battle" },
    );

    expect(field.benchmark).toEqual({
      kind: "team",
      level: 62,
      levels: [62, 62],
      name: null,
    });
    expect(field.levelGap).toBeNull();
  });

  it("says what it had to assume when levels aren't recorded", () => {
    const field = read([member("Pikachu", ["electric"], null, null)], null, 1);

    expect(field.benchmark).toMatchObject({ kind: "default", level: 50 });
    expect(field.unrecorded).toEqual({ levels: 1, moves: 1 });
    /* Gen 1 has fifteen types. */
    expect(field.types).toHaveLength(15);
  });
});
