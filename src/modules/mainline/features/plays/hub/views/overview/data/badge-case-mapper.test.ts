import { describe, expect, it } from "vitest";

import {
  buildMainlinePlayBadgeCase,
  type MainlinePlayBadgeCaseMilestone,
} from "./badge-case-mapper";

const milestone = (
  overrides: Partial<MainlinePlayBadgeCaseMilestone>,
): MainlinePlayBadgeCaseMilestone => ({
  badge_refs: [],
  completed_at: null,
  is_completed: false,
  milestone_id: 1,
  milestone_name: "Milestone",
  milestone_type_slug: "gym",
  sort_order: 1,
  ...overrides,
});

describe("buildMainlinePlayBadgeCase", () => {
  it("has no badge case when the game has no gyms", () => {
    expect(
      buildMainlinePlayBadgeCase({
        milestones: [milestone({ milestone_type_slug: "champion" })],
        types: [],
      }),
    ).toBeNull();
  });

  it("orders gyms, then the League stamp, and marks the next one", () => {
    const badgeCase = buildMainlinePlayBadgeCase({
      milestones: [
        milestone({
          badge_refs: [{ type_id: 12 }],
          completed_at: "2026-08-12T10:00:00Z",
          is_completed: true,
          milestone_id: 1,
          milestone_name: "Grass Badge",
        }),
        milestone({
          badge_refs: [{ type_id: 10 }],
          milestone_id: 2,
          milestone_name: "Water Badge",
          sort_order: 2,
        }),
        milestone({
          milestone_id: 3,
          milestone_name: "Become Champion",
          milestone_type_slug: "champion",
          sort_order: 3,
        }),
      ],
      types: [
        { id: 10, slug: "water" },
        { id: 12, slug: "grass" },
      ],
    });

    expect(badgeCase).toMatchObject({
      earnedGymCount: 1,
      gymCount: 2,
      lastEarnedAt: "2026-08-12T10:00:00Z",
      nextName: "Water Badge",
    });
    expect(
      badgeCase?.stamps.map((stamp) => [stamp.kind, stamp.state, stamp.type]),
    ).toEqual([
      ["gym", "earned", "grass"],
      ["gym", "next", "water"],
      ["league", "todo", null],
    ]);
  });
});
