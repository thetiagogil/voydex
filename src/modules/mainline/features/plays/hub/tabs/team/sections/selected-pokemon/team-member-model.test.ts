import { describe, expect, it } from "vitest";

import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";

import {
  getTeamMoveSlots,
  getTeamNatureEffectSummary,
} from "./team-member-model";

describe("getTeamNatureEffectSummary", () => {
  it("formats raised and lowered stats without relying on color", () => {
    expect(
      getTeamNatureEffectSummary({
        natureDecreasedStat: "special_defense",
        natureIncreasedStat: "speed",
        nature_name: "Naive",
      } as MainlinePlayTeamMember),
    ).toBe("Raises Speed · lowers Sp. Def");
  });

  it("describes neutral natures and omits an unrecorded nature", () => {
    expect(
      getTeamNatureEffectSummary({
        natureDecreasedStat: null,
        natureIncreasedStat: null,
        nature_name: "Serious",
      } as MainlinePlayTeamMember),
    ).toBe("No stat changes");
    expect(
      getTeamNatureEffectSummary({
        nature_name: null,
      } as MainlinePlayTeamMember),
    ).toBeNull();
  });
});

describe("getTeamMoveSlots", () => {
  it("preserves four positions and their move identity", () => {
    const electricType = {
      id: 13,
      name: "Electric",
      slug: "electric",
    } as MainlinePlayTeamMove["type"];

    expect(
      getTeamMoveSlots([
        {
          name: "Thunderbolt",
          slot: 1,
          type: electricType,
        } as MainlinePlayTeamMove,
        {
          attributes: null,
          name: "Quick Attack",
          slot: 3,
          type: null,
        } as MainlinePlayTeamMove,
      ]),
    ).toEqual([
      {
        name: "Thunderbolt",
        position: 1,
        type: electricType,
      },
      {
        name: null,
        position: 2,
        type: null,
      },
      {
        name: "Quick Attack",
        position: 3,
        type: null,
      },
      {
        name: null,
        position: 4,
        type: null,
      },
    ]);
  });
});
