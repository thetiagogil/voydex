import { describe, expect, it } from "vitest";

import { resolveVersionGroupMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type { PlanMember } from "@/modules/mainline/features/plans/types";

import {
  clearUnsupportedBuildFields,
  getPlanBuildFields,
  hasPlanMemberDetails,
} from "./plan-build-fields";

const member: PlanMember = {
  abilityId: 65,
  formId: 6,
  gender: "male",
  heldItemId: 200,
  moveIds: [53, null, null, null],
  natureId: 3,
  notes: null,
  slot: 1,
  speciesId: 6,
};

describe("plan build fields", () => {
  it("keeps every choice in Sword and Shield", () => {
    const fields = getPlanBuildFields(
      resolveVersionGroupMechanics({
        gameIds: [33, 34],
        generationId: 8,
        versionGroupId: 20,
      }),
    );

    expect(fields).toEqual({
      ability: true,
      gender: true,
      heldItem: true,
      nature: true,
    });
    expect(clearUnsupportedBuildFields(member, fields)).toBe(member);
  });

  it("drops ability and held item in Let's Go, which has natures and gender", () => {
    const fields = getPlanBuildFields(
      resolveVersionGroupMechanics({
        gameIds: [31, 32],
        generationId: 7,
        versionGroupId: 17,
      }),
    );

    expect(clearUnsupportedBuildFields(member, fields)).toEqual({
      ...member,
      abilityId: null,
      heldItemId: null,
    });
  });

  it("drops everything in Red and Blue, and anything not known to be supported", () => {
    const generationOne = getPlanBuildFields(
      resolveVersionGroupMechanics({
        gameIds: [1, 2],
        generationId: 1,
        versionGroupId: 1,
      }),
    );
    const noGames = getPlanBuildFields(
      resolveVersionGroupMechanics({
        gameIds: [],
        generationId: 8,
        versionGroupId: 20,
      }),
    );

    for (const fields of [generationOne, noGames]) {
      expect(clearUnsupportedBuildFields(member, fields)).toMatchObject({
        abilityId: null,
        gender: null,
        heldItemId: null,
        moveIds: member.moveIds,
        natureId: null,
      });
    }
  });
});

describe("hasPlanMemberDetails", () => {
  const blank: PlanMember = {
    ...member,
    abilityId: null,
    gender: null,
    heldItemId: null,
    moveIds: [null, null, null, null],
    natureId: null,
    notes: null,
  };

  it("is false for a Pokémon just added", () => {
    expect(hasPlanMemberDetails(blank)).toBe(false);
    expect(hasPlanMemberDetails({ ...blank, notes: "  " })).toBe(false);
  });

  it("is true once anything is filled in", () => {
    expect(hasPlanMemberDetails(member)).toBe(true);
    expect(
      hasPlanMemberDetails({ ...blank, moveIds: [null, 33, null, null] }),
    ).toBe(true);
    expect(hasPlanMemberDetails({ ...blank, notes: "Sweeper" })).toBe(true);
  });
});
