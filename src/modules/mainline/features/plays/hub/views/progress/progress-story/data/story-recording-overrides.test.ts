import { describe, expect, it } from "vitest";

import type {
  MainlinePlayProgressStoryData,
  StoryCategorySource,
  StoryMilestoneSource,
} from "../types";
import {
  applyStoryRecordingOverrides,
  keepPendingOverrides,
} from "./story-recording-overrides";

const category: StoryCategorySource = {
  category_id: 1,
  category_name: "Main Story",
  category_slug: "main-story",
  category_sort_order: 1,
  completed_required_milestone_count: 1,
  content_scope_sort_order: 1,
  is_open_world: false,
  milestone_count: 3,
  required_milestone_count: 2,
  version_group_id: 6,
  version_group_name: "FireRed / LeafGreen",
};

const milestone = (
  overrides: Partial<StoryMilestoneSource>,
): StoryMilestoneSource => ({
  badge_refs: null,
  category_id: 1,
  category_name: "Main Story",
  category_slug: "main-story",
  completed_at: null,
  completion_event_id: null,
  completion_event_team_snapshot_count: 0,
  decision_options: [],
  description: null,
  is_completed: false,
  is_required_for_completion: true,
  milestone_id: 1,
  milestone_name: "Milestone",
  milestone_type_name: "Gym",
  milestone_type_slug: "gym",
  prerequisites: [],
  progress_notes: null,
  selected_decision_option_id: null,
  selected_decision_option_label: null,
  snapshot_policy_slug: "none",
  sort_order: 1,
  version_group_id: 6,
  ...overrides,
});

const data: MainlinePlayProgressStoryData = {
  badgeTypes: [],
  categories: [category],
  decisionForms: [],
  milestones: [
    milestone({ completed_at: "2026-01-01", is_completed: true }),
    milestone({
      is_required_for_completion: false,
      milestone_id: 2,
      milestone_type_slug: "decision",
    }),
    milestone({ milestone_id: 3 }),
  ],
  snapshotEvents: [],
};

describe("applyStoryRecordingOverrides", () => {
  it("shows milestones recorded at once, moving the chapter's count", () => {
    const shown = applyStoryRecordingOverrides(
      data,
      new Map([
        [2, true],
        [3, true],
      ]),
      "2026-10-19T19:00:00Z",
    );

    expect(shown.milestones.map((entry) => entry.is_completed)).toEqual([
      true,
      true,
      true,
    ]);
    // Only the required one counts; the optional choice doesn't.
    expect(shown.categories[0]?.completed_required_milestone_count).toBe(2);
  });

  it("clears an undone milestone and what its record held", () => {
    const shown = applyStoryRecordingOverrides(
      data,
      new Map([[1, false]]),
      "2026-10-19T19:00:00Z",
    );

    expect(shown.milestones[0]).toMatchObject({
      completed_at: null,
      is_completed: false,
    });
    expect(shown.categories[0]?.completed_required_milestone_count).toBe(0);
  });

  it("keeps only the overrides fresh data doesn't show yet", () => {
    expect([
      ...keepPendingOverrides(
        data,
        new Map([
          [1, true],
          [3, true],
        ]),
      ),
    ]).toEqual([[3, true]]);
  });
});
