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
