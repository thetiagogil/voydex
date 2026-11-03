import { describe, expect, it } from "vitest";

import { keepPlannerMembersInGroup } from "./planner-group-members";

describe("keepPlannerMembersInGroup", () => {
  it("keeps only the Pokémon in the group's Pokédexes, expansions included", () => {
    const members = [{ formId: 100 }, { formId: 2500 }, { formId: 15000 }];

    expect(
      keepPlannerMembersInGroup(members, [
        { formIds: [2500] },
        { formIds: [15000] },
      ]),
    ).toEqual([{ formId: 2500 }, { formId: 15000 }]);
  });

  it("drops a variant the group's Planner doesn't offer, even of a listed species", () => {
    expect(
      keepPlannerMembersInGroup(
        [{ formId: 14400 }, { formId: 14401 }],
        [{ formIds: [14400] }],
      ),
    ).toEqual([{ formId: 14400 }]);
  });
});
