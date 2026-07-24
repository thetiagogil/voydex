import { describe, expect, it } from "vitest";

import {
  getTeamPlanFollowingLabel,
  getTeamPlanStatusLabel,
  getTeamPlanTargetProgressLabel,
} from "@/modules/mainline/features/plays/hub/views/team/shared/team-plan-display";
import type { MainlinePlayTeamPlanSummary } from "@/modules/mainline/features/plays/hub/types";

describe("team Plan display", () => {
  it("describes aggregate and row statuses", () => {
    const plan = {
      foundCount: 4,
      targetCount: 6,
    } as MainlinePlayTeamPlanSummary;

    expect(getTeamPlanFollowingLabel("following-with-changes")).toBe(
      "Following with changes",
    );
    expect(getTeamPlanTargetProgressLabel(plan)).toBe(
      "4 of 6 planned Pokémon found",
    );
    expect(getTeamPlanStatusLabel("earlier-evolution")).toBe("In progress");
    expect(getTeamPlanStatusLabel("retired")).toBe("Previously used · retired");
  });
});
