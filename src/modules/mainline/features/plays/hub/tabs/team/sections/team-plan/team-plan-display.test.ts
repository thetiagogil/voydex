import { describe, expect, it } from "vitest";

import {
  getTeamPlanActiveTargetSummary,
  getTeamPlanChangeSummary,
  getTeamPlanFollowingLabel,
  getTeamPlanTargetProgressLabel,
} from "@/modules/mainline/features/plays/hub/tabs/team/sections/team-plan/team-plan-display";
import type { MainlinePlayTeamPlanSummary } from "@/modules/mainline/features/plays/hub/types";

const plan = {
  alternateSkippedCount: 1,
  followingState: "following-with-changes",
  inProgressCount: 2,
  notUsedCount: 2,
  offPlanCount: 1,
  planId: "plan-id",
  planName: "Balanced Alola team",
  primarySkippedCount: 1,
  primaryTargetCount: 5,
  reachedCount: 1,
} satisfies MainlinePlayTeamPlanSummary;

describe("Team Plan display", () => {
  it("formats following state and target progress", () => {
    expect(getTeamPlanFollowingLabel(plan.followingState)).toBe(
      "Following with changes",
    );
    expect(getTeamPlanTargetProgressLabel(plan)).toBe("1 of 5 targets reached");
  });

  it("summarizes active targets and plan changes", () => {
    expect(getTeamPlanActiveTargetSummary(plan)).toBe(
      "2 in progress and 2 not used yet",
    );
    expect(getTeamPlanChangeSummary(plan)).toBe(
      "1 target skipped, 1 off-plan member, and 1 alternate skipped",
    );
  });

  it("handles plans without targets or changes", () => {
    const emptyPlan = {
      ...plan,
      alternateSkippedCount: 0,
      inProgressCount: 0,
      notUsedCount: 0,
      offPlanCount: 0,
      primarySkippedCount: 0,
      primaryTargetCount: 0,
      reachedCount: 0,
    };

    expect(getTeamPlanTargetProgressLabel(emptyPlan)).toBe(
      "No primary targets yet",
    );
    expect(getTeamPlanActiveTargetSummary(emptyPlan)).toBeNull();
    expect(getTeamPlanChangeSummary(emptyPlan)).toBeNull();
  });
});
