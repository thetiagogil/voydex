import { describe, expect, it } from "vitest";

import { buildTeamPlanMoveComparison } from "./team-plan-move-comparison";
import {
  buildMember,
  buildMove,
  plannedMove,
} from "@/modules/mainline/features/plays/hub/views/team/data/__tests__/team-plan-test-fixtures";

describe("buildTeamPlanMoveComparison", () => {
  it("matches identical moves while preserving Plan order", () => {
    const comparison = buildTeamPlanMoveComparison(
      [plannedMove(1, 1), plannedMove(2, 2)],
      buildMember("member-1", {
        moves: [buildMove(2, 1), buildMove(1, 2)],
      }),
    );

    expect(comparison.matches).toBe(true);
    expect(comparison.rows).toMatchObject([
      { actual: { id: 1 }, matches: true, planned: { id: 1, slot: 1 } },
      { actual: { id: 2 }, matches: true, planned: { id: 2, slot: 2 } },
    ]);
  });

  it("pairs remaining different moves in recorded order", () => {
    const comparison = buildTeamPlanMoveComparison(
      [plannedMove(1, 1), plannedMove(2, 2)],
      buildMember("member-1", {
        moves: [buildMove(1, 1), buildMove(3, 2)],
      }),
    );

    expect(comparison.matches).toBe(false);
    expect(comparison.rows).toMatchObject([
      { actual: { id: 1 }, matches: true, planned: { id: 1 } },
      { actual: { id: 3 }, matches: false, planned: { id: 2 } },
    ]);
  });

  it("marks a planned move missing when no recorded move remains", () => {
    const comparison = buildTeamPlanMoveComparison(
      [plannedMove(1, 1), plannedMove(2, 2)],
      buildMember("member-1", { moves: [buildMove(1, 1)] }),
    );

    expect(comparison.matches).toBe(false);
    expect(comparison.rows[1]).toMatchObject({
      actual: null,
      matches: false,
      planned: { id: 2 },
    });
  });

  it("appends additional recorded moves as neutral rows", () => {
    const comparison = buildTeamPlanMoveComparison(
      [plannedMove(1, 1)],
      buildMember("member-1", {
        moves: [buildMove(1, 1), buildMove(2, 2)],
      }),
    );

    expect(comparison.matches).toBe(true);
    expect(comparison.rows[1]).toMatchObject({
      actual: { id: 2 },
      matches: null,
      planned: null,
    });
  });

  it("keeps recorded moves neutral when the Plan specifies none", () => {
    const comparison = buildTeamPlanMoveComparison(
      [],
      buildMember("member-1", { moves: [buildMove(1, 1)] }),
    );

    expect(comparison.matches).toBeNull();
    expect(comparison.rows).toMatchObject([
      { actual: { id: 1 }, matches: null, planned: null },
    ]);
  });
});
