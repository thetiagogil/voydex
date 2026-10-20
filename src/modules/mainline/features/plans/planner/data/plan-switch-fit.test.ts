import { describe, expect, it } from "vitest";

import type { PlanMemberCheckRows } from "@/modules/mainline/features/plans/planner/utils/plan-member-check";
import type { PlanMember } from "@/modules/mainline/features/plans/types";

import { fitPlanMembersForSwitch } from "./plan-switch-fit";

const member = (fields: Partial<PlanMember>): PlanMember => ({
  abilityId: null,
  formId: 25,
  gender: null,
  heldItemId: null,
  moveIds: [null, null, null, null],
  natureId: null,
  notes: null,
  role: null,
  slot: 1,
  speciesId: 25,
  ...fields,
});

const rows: PlanMemberCheckRows = {
  abilityIdsByFormId: new Map([[25, new Set([9])]]),
  heldItemIds: new Set([1]),
  learnableMoveIdsByFormId: new Map([[25, new Set([85, 98])]]),
  natureIds: new Set([3]),
  poolSpeciesIds: new Set([25]),
  speciesIdByFormId: new Map([[25, 25]]),
  speciesNameById: new Map([[25, "Pikachu"]]),
  versionGroupName: "Emerald",
};
const allFields = { ability: true, gender: true, heldItem: true, nature: true };

describe("fitPlanMembersForSwitch", () => {
  it("drops a Pokémon the game doesn't have", () => {
    const fit = fitPlanMembersForSwitch(
      [member({}), member({ formId: 6, slot: 2, speciesId: 6 })],
      rows,
      allFields,
    );

    expect(fit.removedSpeciesIds).toEqual([6]);
    expect(fit.kept.map((kept) => kept.speciesId)).toEqual([25]);
    expect(fit.changed).toEqual([]);
  });

  it("keeps what the game offers and names what it loses", () => {
    const fit = fitPlanMembersForSwitch(
      [
        member({
          abilityId: 31,
          heldItemId: 1,
          moveIds: [85, 412, 98, 999],
          natureId: 3,
        }),
      ],
      rows,
      allFields,
    );

    expect(fit.kept[0]).toMatchObject({
      abilityId: null,
      heldItemId: 1,
      moveIds: [85, null, 98, null],
      natureId: 3,
    });
    expect(fit.changed).toEqual([
      { lost: ["Ability", "2 moves"], slot: 1, speciesId: 25 },
    ]);
  });

  it("clears choices the game has no place for, such as held items in Red", () => {
    const fit = fitPlanMembersForSwitch(
      [member({ gender: "female", heldItemId: 1, natureId: 3 })],
      rows,
      { ability: false, gender: false, heldItem: false, nature: false },
    );

    expect(fit.kept[0]).toMatchObject({
      gender: null,
      heldItemId: null,
      natureId: null,
    });
    expect(fit.changed[0].lost).toEqual(["Held item", "Nature", "Gender"]);
  });
});
