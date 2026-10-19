import { describe, expect, it } from "vitest";

import { orderPlayMilestones } from "@/modules/mainline/features/plays/shared/data/play-milestones";

import {
  getOverviewMilestoneSummary,
  type OverviewMilestone,
} from "./overview-milestones-mapper";

const milestone = (
  overrides: Partial<OverviewMilestone>,
): OverviewMilestone => ({
  badge_refs: [],
  category_id: 101,
  category_name: "Story",
  completed_at: null,
  decision_options: [],
  description: null,
  is_completed: false,
  is_required_for_completion: true,
  milestone_id: 1,
  milestone_name: "Milestone",
  milestone_type_name: "Story",
  milestone_type_slug: "story",
  prerequisites: [],
  selected_decision_option_id: null,
  snapshot_policy_slug: "none",
  sort_order: 1,
  version_group_id: 1,
  ...overrides,
});

const categories = [
  { category_id: 101, category_sort_order: 1, content_scope_sort_order: 1 },
  { category_id: 102, category_sort_order: 2, content_scope_sort_order: 1 },
];

describe("orderPlayMilestones on Overview's rows", () => {
  it("orders by category before each category's own sort order", () => {
    const ordered = orderPlayMilestones({
      categories,
      milestones: [
        milestone({ category_id: 102, milestone_id: 13, sort_order: 1 }),
        milestone({ category_id: 101, milestone_id: 2, sort_order: 2 }),
        milestone({ category_id: 101, milestone_id: 1, sort_order: 1 }),
      ],
    });

    expect(ordered.map((entry) => entry.milestone_id)).toEqual([1, 2, 13]);
  });
});

describe("getOverviewMilestoneSummary", () => {
  it("counts required milestones only, as Story's ring does", () => {
    // FireRed: the optional Fossil Choice sits between Boulder and Cascade.
    const summary = getOverviewMilestoneSummary([
      milestone({
        is_completed: true,
        milestone_id: 1,
        milestone_name: "Boulder Badge",
      }),
      milestone({
        is_required_for_completion: false,
        milestone_id: 2,
        milestone_name: "Fossil Choice",
        sort_order: 2,
      }),
      milestone({
        milestone_id: 3,
        milestone_name: "Cascade Badge",
        sort_order: 3,
      }),
    ]);

    expect(summary.nextMilestonePosition).toEqual({ sequence: 2, total: 2 });
  });

  it("picks the next milestone in the story, not a later category's first", () => {
    const summary = getOverviewMilestoneSummary(
      orderPlayMilestones({
        categories,
        milestones: [
          milestone({
            completed_at: "2026-08-01T10:00:00Z",
            is_completed: true,
            milestone_id: 1,
            milestone_name: "Choose Starter",
          }),
          milestone({
            milestone_id: 2,
            milestone_name: "Receive Pokédex",
            sort_order: 2,
          }),
          milestone({
            category_id: 102,
            milestone_id: 13,
            milestone_name: "Elite Four Lorelei",
          }),
        ],
      }),
    );

    expect(summary.nextMilestone?.milestone_name).toBe("Receive Pokédex");
  });

  it("skips a milestone whose required prerequisite is still open", () => {
    const summary = getOverviewMilestoneSummary([
      milestone({
        milestone_id: 1,
        milestone_name: "Locked",
        prerequisites: [
          { prerequisite_kind_slug: "required", prerequisite_milestone_id: 9 },
        ],
      }),
      milestone({ milestone_id: 2, milestone_name: "Open", sort_order: 2 }),
      milestone({ milestone_id: 9, milestone_name: "Later", sort_order: 9 }),
    ]);

    expect(summary.nextMilestone?.milestone_name).toBe("Open");
  });
});

describe("getOverviewMilestoneSummary journey numbering", () => {
  it("numbers the next objective within its journey", () => {
    const summary = getOverviewMilestoneSummary(
      orderPlayMilestones({
        categories,
        milestones: [
          milestone({ is_completed: true, milestone_id: 1, sort_order: 1 }),
          milestone({ milestone_id: 2, sort_order: 2 }),
          milestone({ is_completed: true, milestone_id: 3, sort_order: 3 }),
          milestone({ milestone_id: 4, sort_order: 4 }),
          milestone({ milestone_id: 5, sort_order: 5 }),
          milestone({ milestone_id: 6, sort_order: 6 }),
          milestone({
            category_id: 102,
            milestone_id: 50,
            version_group_id: 2,
          }),
        ],
      }),
    );

    expect(summary.nextMilestonePosition).toEqual({ sequence: 2, total: 6 });
  });
});
