import { describe, expect, it } from "vitest";

import type { PlanMember } from "@/modules/mainline/features/plans/types";

import {
  assertPlanMembersFitVersionGroup,
  type PlanMemberCheckRows,
} from "./plan-member-check";

/* Galarian Meowth (form 900) in Sword and Shield; Kantonian Meowth is 52. */
const member: PlanMember = {
  abilityId: 1,
  formId: 900,
  gender: null,
  heldItemId: 10,
  moveIds: [5, 6, null, null],
  natureId: 2,
  notes: null,
  slot: 2,
  speciesId: 52,
};

const rows: PlanMemberCheckRows = {
  abilityIdsByFormId: new Map([[900, new Set([1, 3])]]),
  heldItemIds: new Set([10]),
  learnableMoveIdsByFormId: new Map([[900, new Set([5, 6, 7])]]),
  natureIds: new Set([2]),
  poolSpeciesIds: new Set([52]),
  speciesIdByFormId: new Map([
    [900, 52],
    [52, 52],
    [1, 1],
  ]),
  speciesNameById: new Map([
    [52, "Meowth"],
    [1, "Bulbasaur"],
  ]),
  versionGroupName: "Sword and Shield",
};

const check = (changes: Partial<PlanMember>) => () =>
  assertPlanMembersFitVersionGroup([{ ...member, ...changes }], rows);

describe("assertPlanMembersFitVersionGroup", () => {
  it("accepts a Pokémon whose whole build fits the group", () => {
    expect(check({})).not.toThrow();
  });

  it("rejects a species outside the group's Pokédexes", () => {
    expect(check({ formId: 1, speciesId: 1 })).toThrow(
      "Bulbasaur isn't in Sword and Shield.",
    );
  });

  it("rejects a form of another species", () => {
    expect(check({ formId: 1 })).toThrow(
      "Meowth's form isn't one Voydex knows.",
    );
  });

  it("judges moves by the planned form: Galarian Meowth's learnset, not Kanto's", () => {
    expect(check({ moveIds: [5, 8, null, null] })).toThrow(
      "Meowth can't learn one of its planned moves in Sword and Shield.",
    );
    expect(check({ formId: 52, moveIds: [5, null, null, null] })).toThrow(
      "can't learn one of its planned moves",
    );
  });

  it("rejects an ability, held item or nature the group doesn't offer", () => {
    expect(check({ abilityId: 99 })).toThrow("can't have that ability");
    expect(check({ heldItemId: 99 })).toThrow("held item isn't in");
    expect(check({ natureId: 99 })).toThrow("nature isn't in");
  });
});
