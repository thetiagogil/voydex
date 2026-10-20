import { describe, expect, it } from "vitest";

import {
  describePlannerSwitchLoss,
  keepPlannerMembersInGroup,
} from "./planner-game-switch";

describe("describePlannerSwitchLoss", () => {
  it("names how many and which a switch drops", () => {
    expect(
      describePlannerSwitchLoss(["Gloom", "Pikachu", "Onix"], "Emerald"),
    ).toBe(
      "3 of the team aren't in Emerald and will be removed: Gloom, Pikachu, and Onix.",
    );
  });

  it("reads one on its own", () => {
    expect(describePlannerSwitchLoss(["Gloom"], "Emerald")).toBe(
      "Gloom isn't in Emerald and will be removed from the team.",
    );
  });
});

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
