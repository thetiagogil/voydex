import { describe, expect, it } from "vitest";

import {
  buildMember,
  buildMove,
  buildPlanRow,
  buildTeamPlanSummary,
  plannedMove,
} from "@/modules/mainline/features/plays/hub/views/team/data/__tests__/team-plan-test-fixtures";

import {
  countTeamPlanDifferences,
  getTeamPlanCompareLabel,
  getTeamPlanCompareRows,
  getTeamPlanMatchText,
  getTeamPlanMemberPlacement,
  getTeamPlanStatusTone,
  isTeamPlanTargetOwned,
} from "./team-plan-model";

const summarize = (...args: Parameters<typeof buildTeamPlanSummary>) => {
  const plan = buildTeamPlanSummary(...args);

  if (!plan?.comparisons[0]) throw new Error("Expected one comparison");

  return { comparison: plan.comparisons[0], mechanics: plan.mechanics };
};

describe("team plan model", () => {
  it("treats an exact match as an owned target with nothing to report", () => {
    const { comparison, mechanics } = summarize(
      [buildPlanRow(1, { planned_ability_name: "Blaze" })],
      [buildMember("member-1", { ability_name: "Blaze", slot: 2 })],
    );

    expect(getTeamPlanStatusTone(comparison.status)).toBe("ok");
    expect(isTeamPlanTargetOwned(comparison)).toBe(true);
    expect(countTeamPlanDifferences(comparison, mechanics)).toBe(0);
    expect(getTeamPlanCompareLabel(comparison, mechanics)).toBe("Compare");
    expect(getTeamPlanCompareRows(comparison, mechanics)[0]).toEqual({
      kind: "species",
      label: "Species",
      planned: "Planned 1",
      recorded: "Current",
      state: "ok",
    });
  });

  it("counts each recorded build difference and the missing moves once", () => {
    const { comparison, mechanics } = summarize(
      [
        buildPlanRow(1, {
          planned_ability_name: "Blaze",
          planned_held_item_name: "Leftovers",
          planned_moves: [plannedMove(10, 1), plannedMove(11, 2)],
        }),
      ],
      [
        buildMember("member-1", {
          ability_name: "Solar Power",
          moves: [buildMove(20, 1, "Ember")],
        }),
      ],
    );
    const rows = getTeamPlanCompareRows(comparison, mechanics);

    expect(getTeamPlanStatusTone(comparison.status)).toBe("warn");
    /* Ability differs and moves are missing; the blank held item is not a difference. */
    expect(countTeamPlanDifferences(comparison, mechanics)).toBe(2);
    expect(getTeamPlanCompareLabel(comparison, mechanics)).toBe(
      "2 differences",
    );
    expect(
      rows.filter((row) => row.state === "differs" && row.kind !== "move"),
    ).toHaveLength(1);
    expect(rows.find((row) => row.label === "Ability")).toMatchObject({
      planned: "Blaze",
      recorded: "Solar Power",
      state: "differs",
    });
    expect(rows.find((row) => row.label === "Held item")).toMatchObject({
      recorded: null,
      state: "none",
    });
    expect(rows.find((row) => row.label === "Nature")).toMatchObject({
      planned: "Any",
      state: "free",
    });
    expect(
      rows
        .filter((row) => row.kind === "move")
        .map(({ label, state }) => ({ label, state })),
    ).toEqual([
      { label: "Move 1", state: "differs" },
      { label: "Move 2", state: "none" },
    ]);
  });

  it("shows a target with no match as a silhouette to see the Plan for", () => {
    const { comparison, mechanics } = summarize(
      [
        buildPlanRow(1, {
          planned_ability_name: "Blaze",
          planned_moves: [plannedMove(10, 1)],
          target_form_id: 99,
          target_species_id: 99,
        }),
      ],
      [],
    );
    const rows = getTeamPlanCompareRows(comparison, mechanics);

    expect(isTeamPlanTargetOwned(comparison)).toBe(false);
    expect(getTeamPlanCompareLabel(comparison, mechanics)).toBe("See the Plan");
    expect(getTeamPlanMatchText(comparison.playMember)).toBe("Not caught yet");
    expect(rows[0]).toMatchObject({
      recorded: "Not caught yet",
      state: "empty",
    });
    expect(rows.find((row) => row.label === "Ability")).toMatchObject({
      planned: "Blaze",
      recorded: null,
      state: "empty",
    });
    expect(rows.find((row) => row.label === "Nature")).toMatchObject({
      recorded: null,
      state: "free",
    });
    expect(rows.find((row) => row.label === "Move 1")).toMatchObject({
      recorded: null,
      state: "empty",
    });
  });

  it("compares gender only when the Plan asks for one", () => {
    const unset = summarize(
      [buildPlanRow(1)],
      [buildMember("member-1", { gender: "male" })],
    );
    const set = summarize(
      [buildPlanRow(1, { planned_gender: "female" })],
      [buildMember("member-1", { gender: "male" })],
    );

    expect(
      getTeamPlanCompareRows(unset.comparison, unset.mechanics).map(
        (row) => row.label,
      ),
    ).not.toContain("Gender");
    expect(countTeamPlanDifferences(unset.comparison, unset.mechanics)).toBe(0);
    expect(
      getTeamPlanCompareRows(set.comparison, set.mechanics).find(
        (row) => row.label === "Gender",
      ),
    ).toEqual({
      kind: "build",
      label: "Gender",
      planned: "Female",
      recorded: "Male",
      state: "differs",
    });
    expect(countTeamPlanDifferences(set.comparison, set.mechanics)).toBe(1);
  });

  it("keeps a retired match out of the build comparison", () => {
    const { comparison, mechanics } = summarize(
      [buildPlanRow(1, { planned_ability_name: "Blaze" })],
      [
        buildMember("member-1", {
          roster_state_name: "Retired",
          roster_state_slug: "retired",
        }),
      ],
    );

    expect(comparison.status).toBe("retired");
    expect(isTeamPlanTargetOwned(comparison)).toBe(false);
    expect(countTeamPlanDifferences(comparison, mechanics)).toBe(0);
    expect(getTeamPlanCompareRows(comparison, mechanics)).toHaveLength(1);
  });

  it("labels moves by their Plan slot and extra moves apart", () => {
    const { comparison, mechanics } = summarize(
      [buildPlanRow(1, { planned_moves: [plannedMove(10, 4)] })],
      [
        buildMember("member-1", {
          moves: [buildMove(10, 1, "Planned move"), buildMove(20, 2, "Ember")],
        }),
      ],
    );
    const moveRows = getTeamPlanCompareRows(comparison, mechanics).filter(
      (row) => row.kind === "move",
    );

    expect(
      moveRows.map(({ label, planned, state }) => ({ label, planned, state })),
    ).toEqual([
      { label: "Move 4", planned: "Move 10", state: "ok" },
      { label: "Extra move", planned: "Not in the Plan", state: "free" },
    ]);
    expect(countTeamPlanDifferences(comparison, mechanics)).toBe(0);
  });

  it("says where a match sits now", () => {
    expect(
      getTeamPlanMemberPlacement(buildMember("team", { slot: 3 })),
    ).toEqual({ kind: "team", label: "Team, slot 3" });
    expect(
      getTeamPlanMatchText(buildMember("team", { nickname: "Buddy", slot: 1 })),
    ).toBe("Buddy, Team, slot 1");
    expect(
      getTeamPlanMemberPlacement(
        buildMember("reserve", { roster_state_slug: "reserve", slot: 8 }),
      ),
    ).toEqual({ kind: "reserve", label: "Reserve" });
    expect(
      getTeamPlanMemberPlacement(
        buildMember("gone", {
          roster_state_name: "Replaced",
          roster_state_slug: "replaced",
        }),
      ),
    ).toEqual({ kind: "past", label: "Replaced" });
  });
});
