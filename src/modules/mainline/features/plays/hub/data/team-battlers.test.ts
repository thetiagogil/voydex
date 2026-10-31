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

  it("costs the whole (empty) team when nobody is on it", () => {
    expect(getSharedAnswerCosts([[], []])).toEqual([1, 1]);
    expect(getSharedAnswerCosts([])).toEqual([]);
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
