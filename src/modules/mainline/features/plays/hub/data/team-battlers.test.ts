import { describe, expect, it } from "vitest";

import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import type { Type } from "@/modules/reference/types";

import {
  getAnswerCost,
  getSharedAnswerCosts,
  getDamagingMoveTypeSlug,
  hasRecordedDamagingMove,
} from "./team-battlers";

const move = (
  slug: string,
  damageClass: string,
  power: number | null,
  typeSlug = "grass",
): MainlinePlayTeamMove =>
  ({
    attributes: { damage_class: damageClass, power },
    id: 1,
    name: slug,
    slot: 1,
    slug,
    type: { slug: typeSlug },
  }) as MainlinePlayTeamMove;

const user = (
  typeSlugs: string[],
  teraTypeSlug: string | null = null,
): Pick<
  MainlinePlayTeamMember,
  "primaryType" | "secondaryType" | "tera_type_slug"
> => ({
  primaryType: typeSlugs[0] ? ({ slug: typeSlugs[0] } as Type) : null,
  secondaryType: typeSlugs[1] ? ({ slug: typeSlugs[1] } as Type) : null,
  tera_type_slug: teraTypeSlug,
});

const grassUser = user(["grass"]);

describe("getDamagingMoveTypeSlug", () => {
  it("counts a move whose power varies, such as Grass Knot", () => {
    expect(
      getDamagingMoveTypeSlug(move("grass-knot", "special", null), grassUser),
    ).toBe("grass");
  });

  it("leaves out status and set-damage moves", () => {
    expect(
      getDamagingMoveTypeSlug(move("leech-seed", "status", null), grassUser),
    ).toBe(null);
    expect(
      getDamagingMoveTypeSlug(
        move("seismic-toss", "physical", null),
        grassUser,
      ),
    ).toBe(null);
  });

  it("hits with the type the move takes from its user", () => {
    expect(
      getDamagingMoveTypeSlug(
        move("judgment", "special", 100, "normal"),
        user(["dragon"]),
      ),
    ).toBe("dragon");
    expect(
      getDamagingMoveTypeSlug(
        move("tera-blast", "special", 80, "normal"),
        user(["water"], "electric"),
      ),
    ).toBe("electric");
    expect(
      getDamagingMoveTypeSlug(
        move("tera-blast", "special", 80, "normal"),
        user(["water"]),
      ),
    ).toBe("normal");
  });

  it("leaves out Hidden Power, whose type isn't recorded", () => {
    expect(
      getDamagingMoveTypeSlug(
        move("hidden-power", "special", 60, "normal"),
        grassUser,
      ),
    ).toBe(null);
  });
});

describe("getAnswerCost", () => {
  it("mixes your best answer with your second best, as the average player fights", () => {
    expect(getAnswerCost([0.2, 0.6, 1])).toBeCloseTo(0.36);
    /* One Pokémon is its own second best. */
    expect(getAnswerCost([0.5])).toBeCloseTo(0.5);
    /* One you can't beat costs your whole team, never more. */
    expect(getAnswerCost([Infinity])).toBe(1);
    expect(getAnswerCost([Infinity, Infinity, Infinity])).toBe(3);
  });
});

describe("getSharedAnswerCosts", () => {
  it("gives every type to whoever answers it cheapest while each takes its fair share", () => {
    /* Two Pokémon, four types: each takes two. */
    const costs = getSharedAnswerCosts([
      [0.1, 0.9],
      [0.2, 0.8],
      [0.9, 0.1],
      [0.8, 0.2],
    ]);

    expect(costs).toEqual([0.1, 0.2, 0.1, 0.2]);
  });

  it("stops one Pokémon from answering more than its share", () => {
    /* The first is best at all four, but can take only two of them. */
    const costs = getSharedAnswerCosts([
      [0, 1],
      [0, 1],
      [0, 1],
      [0, 1],
    ]);

    expect(costs.reduce((sum, cost) => sum + cost, 0)).toBeCloseTo(2);
    expect(costs.filter((cost) => cost === 0)).toHaveLength(2);
  });

  it("lets one Pokémon answer everything when it is alone", () => {
    expect(getSharedAnswerCosts([[0.2], [0.4], [Infinity]])).toEqual([
      0.2, 0.4, 1,
    ]);
  });

  it("caps what one you can't beat costs at your whole team", () => {
    expect(
      getSharedAnswerCosts([
        [Infinity, Infinity, Infinity],
        [Infinity, Infinity, Infinity],
        [Infinity, Infinity, Infinity],
      ]),
    ).toEqual([3, 3, 3]);
  });

  it("reads a cost that isn't a number as losing, instead of searching forever", () => {
    expect(
      getSharedAnswerCosts([
        [NaN, NaN],
        [0.2, 0.4],
      ]),
    ).toEqual([2, 0.2]);
  });

  it("costs the whole (empty) team when nobody is on it", () => {
    expect(getSharedAnswerCosts([[], []])).toEqual([1, 1]);
    expect(getSharedAnswerCosts([])).toEqual([]);
  });
});

describe("getSharedAnswerCosts on random teams", () => {
  /* A seeded generator, so a failure repeats. */
  const random = (seed: number) => () => {
    seed = (seed * 1664525 + 1013904223) % 4294967296;

    return seed / 4294967296;
  };

  /* The cheapest total over every way to give each type to a Pokémon within its share. */
  const bruteForce = (rows: number[][]) => {
    const teamCount = rows[0].length;
    const capacity = Math.ceil(rows.length / teamCount);
    const search = (row: number, used: number[]): number => {
      if (row === rows.length) return 0;

      let best = Infinity;

      for (let member = 0; member < teamCount; member += 1) {
        if (used[member] >= capacity) continue;

        used[member] += 1;
        best = Math.min(
          best,
          Math.min(rows[row][member], teamCount) + search(row + 1, used),
        );
        used[member] -= 1;
      }

      return best;
    };

    return search(0, new Array<number>(teamCount).fill(0));
  };

  const matrix = (next: () => number, types: number, team: number) =>
    Array.from({ length: types }, () =>
      Array.from({ length: team }, () =>
        next() < 0.15 ? Infinity : next() * 2,
      ),
    );
  const sum = (costs: number[]) =>
    costs.reduce((total, cost) => total + cost, 0);

  it("matches the cheapest possible sharing, every cost finite and within the team", () => {
    const next = random(7);

    for (let round = 0; round < 300; round += 1) {
      const team = 1 + Math.floor(next() * 4);
      const types = 1 + Math.floor(next() * 7);
      const rows = matrix(next, types, team);
      const costs = getSharedAnswerCosts(rows);

      expect(costs).toHaveLength(types);
      expect(costs.every((cost) => Number.isFinite(cost) && cost >= 0)).toBe(
        true,
      );
      expect(costs.every((cost) => cost <= team)).toBe(true);
      expect(sum(costs)).toBeCloseTo(bruteForce(rows), 9);
    }
  });

  it("never costs less than each type's own cheapest answer", () => {
    const next = random(11);

    for (let round = 0; round < 200; round += 1) {
      const team = 1 + Math.floor(next() * 6);
      const rows = matrix(next, 17, team);
      const costs = getSharedAnswerCosts(rows);

      costs.forEach((cost, index) =>
        expect(cost).toBeGreaterThanOrEqual(
          Math.min(Math.min(...rows[index]), team) - 1e-9,
        ),
      );
    }
  });

  it("doesn't care what order your Pokémon are in", () => {
    const next = random(23);

    for (let round = 0; round < 100; round += 1) {
      const team = 2 + Math.floor(next() * 5);
      const rows = matrix(next, 17, team);
      const reversed = rows.map((row) => [...row].reverse());

      expect(sum(getSharedAnswerCosts(reversed))).toBeCloseTo(
        sum(getSharedAnswerCosts(rows)),
        9,
      );
    }
  });

  it("never costs more when one of your Pokémon gets better against a type", () => {
    const next = random(31);

    for (let round = 0; round < 200; round += 1) {
      const team = 1 + Math.floor(next() * 6);
      const rows = matrix(next, 17, team);
      const better = rows.map((row) => [...row]);
      const type = Math.floor(next() * 17);
      const member = Math.floor(next() * team);

      better[type][member] = better[type][member] * 0.5;

      expect(sum(getSharedAnswerCosts(better))).toBeLessThanOrEqual(
        sum(getSharedAnswerCosts(rows)) + 1e-9,
      );
    }
  });

  it("gives no Pokémon more than its fair share of the types", () => {
    const next = random(41);

    for (let round = 0; round < 100; round += 1) {
      const team = 2 + Math.floor(next() * 5);
      /* A star that is cheapest everywhere, so it takes as many as it may. */
      const rows = Array.from({ length: 17 }, () => [
        0,
        ...Array.from({ length: team - 1 }, () => 0.5 + next()),
      ]);
      const costs = getSharedAnswerCosts(rows);
      const byStar = costs.filter((cost) => cost === 0).length;

      expect(byStar).toBe(Math.ceil(17 / team));
    }
  });
});

describe("hasRecordedDamagingMove", () => {
  const withMove = (slug: string, damageClass: string) =>
    ({
      moves: [
        {
          attributes: { damage_class: damageClass, power: null },
          id: 1,
          name: slug,
          slot: 1,
          slug,
          type: { slug: "fighting" },
        },
      ],
      primaryType: { slug: "normal" },
      secondaryType: null,
      tera_type_slug: null,
    }) as unknown as MainlinePlayTeamMember;

  it("counts a set-damage move, which the battle math hits with", () => {
    expect(hasRecordedDamagingMove(withMove("seismic-toss", "physical"))).toBe(
      true,
    );
    expect(hasRecordedDamagingMove(withMove("growl", "status"))).toBe(false);
  });
});
