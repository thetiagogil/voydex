import { describe, expect, it } from "vitest";

import { keepPlannerMembersInGroup } from "./planner-group-members";

describe("keepPlannerMembersInGroup", () => {
  it("keeps only the Pokémon in the group's Pokédexes, expansions included", () => {
    const members = [{ speciesId: 1 }, { speciesId: 25 }, { speciesId: 150 }];

    expect(
      keepPlannerMembersInGroup(members, [
        { speciesIds: [25] },
        { speciesIds: [150] },
      ]),
    ).toEqual([{ speciesId: 25 }, { speciesId: 150 }]);
  });
});
