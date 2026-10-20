import { describe, expect, it } from "vitest";

import { parsePlanSaveInput, PlanSaveInputError } from "./plan-save-input";

const member = (moveIds: unknown) => ({
  formId: 6,
  moveIds,
  slot: 1,
  speciesId: 6,
});
const plan = (members: unknown[]) => ({
  members,
  name: "Galar run",
  planId: null,
  versionGroupSlug: "swsh",
});

describe("parsePlanSaveInput moves", () => {
  it("keeps four move slots, gaps included", () => {
    const input = parsePlanSaveInput(plan([member([53, null, 89, null])]));

    expect(input.members[0].moveIds).toEqual([53, null, 89, null]);
  });

  it("reads a member without moves as four empty slots", () => {
    const input = parsePlanSaveInput(plan([member(undefined)]));

    expect(input.members[0].moveIds).toEqual([null, null, null, null]);
  });

  it("rejects a repeated move or a wrong slot count", () => {
    expect(() =>
      parsePlanSaveInput(plan([member([53, 53, null, null])])),
    ).toThrow(PlanSaveInputError);
    expect(() => parsePlanSaveInput(plan([member([53])]))).toThrow(
      PlanSaveInputError,
    );
  });
});

describe("parsePlanSaveInput", () => {
  it("names an untitled Plan, sorts its slots and keeps each expansion once", () => {
    const input = parsePlanSaveInput({
      ...plan([
        { ...member(undefined), slot: 3 },
        { ...member(undefined), slot: 1 },
      ]),
      expansionVersionGroupIds: [26, 26],
      name: "   ",
    });

    expect(input.name).toBe("Untitled Plan");
    expect(input.members.map((planned) => planned.slot)).toEqual([1, 3]);
    expect(input.expansionVersionGroupIds).toEqual([26]);
    expect(input.members[0]).toMatchObject({
      abilityId: null,
      gender: null,
      notes: null,
    });
  });

  it("refuses what the Plan can't hold, with the Planner's words", () => {
    expect(() => parsePlanSaveInput(null)).toThrow("There's no Plan to save.");
    expect(() =>
      parsePlanSaveInput({ ...plan([]), planId: "not-a-plan" }),
    ).toThrow("That Plan isn't one of yours.");
    expect(() =>
      parsePlanSaveInput({ ...plan([]), versionGroupSlug: "Sword Shield" }),
    ).toThrow("Pick a game for the Plan.");
    expect(() =>
      parsePlanSaveInput(
        plan(
          Array.from({ length: 7 }, (_, index) => ({
            ...member(undefined),
            slot: index + 1,
          })),
        ),
      ),
    ).toThrow("A Plan holds up to six Pokémon.");
    expect(() =>
      parsePlanSaveInput(plan([member(undefined), member(undefined)])),
    ).toThrow("Two Pokémon can't share a slot.");
    expect(() =>
      parsePlanSaveInput(plan([{ ...member(undefined), gender: "robot" }])),
    ).toThrow("A planned gender isn't one Voydex knows.");
    expect(() =>
      parsePlanSaveInput({ ...plan([]), name: "a".repeat(201) }),
    ).toThrow("The Plan name can be at most 200 characters.");
  });
});
