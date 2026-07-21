import { describe, expect, it } from "vitest";

import { buildMainlinePlayTeamPlanSummary } from "@/modules/mainline/features/plays/hub/tabs/team/data/team-plan-mapper";
import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamPlanRow,
} from "@/modules/mainline/features/plays/hub/types";

const buildPlanRow = (
  status: string,
  options: {
    group?: string;
    memberId?: string | null;
    slot?: number;
  } = {},
) => {
  return {
    member_group: options.group ?? "primary",
    member_link_status_slug: status,
    play_pokemon_id: options.memberId ?? null,
    slot: options.slot ?? 1,
    team_plan_id: "plan-id",
    team_plan_name: "Balanced Alola team",
  } as MainlinePlayTeamPlanRow;
};

const buildRosterMember = (memberId: string) => {
  return { play_pokemon_id: memberId } as MainlinePlayTeamMember;
};

describe("buildMainlinePlayTeamPlanSummary", () => {
  it("reports a directly followed plan from explicit member relationships", () => {
    const plan = buildMainlinePlayTeamPlanSummary(
      [
        buildPlanRow("reached", { memberId: "member-1", slot: 1 }),
        buildPlanRow("linked", { memberId: "member-2", slot: 2 }),
        buildPlanRow("linked", { memberId: "member-3", slot: 3 }),
        buildPlanRow("pending", { slot: 4 }),
        buildPlanRow("pending", { slot: 5 }),
      ],
      [
        buildRosterMember("member-1"),
        buildRosterMember("member-2"),
        buildRosterMember("member-3"),
      ],
    );

    expect(plan).toMatchObject({
      followingState: "following",
      inProgressCount: 2,
      notUsedCount: 2,
      offPlanCount: 0,
      reachedCount: 1,
    });
  });

  it("distinguishes plan changes and alternate targets", () => {
    const plan = buildMainlinePlayTeamPlanSummary(
      [
        buildPlanRow("reached", { memberId: "member-1", slot: 1 }),
        buildPlanRow("skipped", { slot: 2 }),
        buildPlanRow("skipped", { group: "alternate", slot: 1 }),
      ],
      [buildRosterMember("member-1"), buildRosterMember("off-plan-member")],
    );

    expect(plan).toMatchObject({
      alternateSkippedCount: 1,
      followingState: "following-with-changes",
      offPlanCount: 1,
      primarySkippedCount: 1,
      primaryTargetCount: 2,
    });
  });

  it("distinguishes an off-plan roster from a plan that has not started", () => {
    const rows = [buildPlanRow("pending")];

    expect(
      buildMainlinePlayTeamPlanSummary(rows, [buildRosterMember("member-1")])
        ?.followingState,
    ).toBe("not-following");
    expect(buildMainlinePlayTeamPlanSummary(rows, [])?.followingState).toBe(
      "not-started",
    );
  });

  it("omits the section when no linked plan detail is available", () => {
    expect(buildMainlinePlayTeamPlanSummary([], [])).toBeNull();
  });
});
