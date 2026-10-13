import { describe, expect, it } from "vitest";

import {
  getTeamPlanFollowingLabel,
  getTeamPlanStatusLabel,
} from "./team-plan-display";

describe("team Plan display", () => {
  it("describes aggregate and row statuses", () => {
    expect(getTeamPlanFollowingLabel("following-with-changes")).toBe(
      "Following with changes",
    );
    expect(getTeamPlanStatusLabel("earlier-evolution")).toBe("In progress");
    expect(getTeamPlanStatusLabel("retired")).toBe("Previously used · retired");
  });
});
