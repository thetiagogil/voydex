import { describe, expect, it } from "vitest";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

import { getAnswerCost, hasRecordedDamagingMove } from "./team-battlers";

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
