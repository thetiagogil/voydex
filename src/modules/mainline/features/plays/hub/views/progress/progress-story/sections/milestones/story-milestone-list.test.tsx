import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { createStampOrder } from "@/modules/mainline/features/plays/shared/data/play-stamps";

import { buildStoryProgressModel } from "../../data/story-progress-model";
import type { StoryMilestoneSource } from "../../types";
import { StoryMilestoneList } from "./story-milestone-list";

const milestone = (
  overrides: Partial<StoryMilestoneSource>,
): StoryMilestoneSource => ({
  badge_refs: null,
  category_id: 1,
  category_name: "Main Story",
  category_slug: "main-story",
  completed_at: "2026-10-19T12:00:00Z",
  completion_event_id: null,
  completion_event_team_snapshot_count: 0,
  decision_options: [],
  description: null,
  is_completed: true,
  is_required_for_completion: true,
  milestone_id: 1,
  milestone_name: "Boulder Badge",
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

const scope = buildStoryProgressModel({
  badgeTypes: [],
  categories: [
    {
      category_id: 1,
      category_name: "Main Story",
      category_slug: "main-story",
      category_sort_order: 1,
      completed_required_milestone_count: 2,
      content_scope_sort_order: 1,
      is_open_world: false,
      milestone_count: 3,
      required_milestone_count: 3,
      version_group_id: 6,
      version_group_name: "FireRed / LeafGreen",
    },
  ],
  decisionForms: [],
  milestones: [
    milestone({}),
    milestone({
      milestone_id: 2,
      milestone_name: "Cascade Badge",
      sort_order: 2,
    }),
    milestone({
      completed_at: null,
      is_completed: false,
      milestone_id: 3,
      milestone_name: "Thunder Badge",
      sort_order: 3,
    }),
  ],
  snapshotEvents: [],
}).scopes[0]!;

const render = (waiting: number[]) =>
  renderToStaticMarkup(
    <StoryMilestoneList
      fadingMilestoneIds={new Set()}
      onMilestoneSelect={() => {}}
      onMotionEnd={() => {}}
      scope={scope}
      selectedMilestoneId={null}
      stampOrder={createStampOrder([1, 2])}
      waitingMilestoneIds={new Set(waiting)}
    />,
  );

/* The markup of one row, by the milestone's name. */
const row = (markup: string, name: string) =>
  markup.split("<li").find((part) => part.includes(name)) ?? "";

describe("StoryMilestoneList cascade", () => {
  it("shows a row still waiting its turn as it was", () => {
    const cascade = row(render([2]), "Cascade Badge");

    expect(cascade).toContain("Not recorded");
    expect(cascade).toContain("empty-slot");
    expect(cascade).not.toContain("animate-stamp-slap");
  });

  it("stamps a row's medallion down once its turn comes", () => {
    const markup = render([]);

    expect(row(markup, "Boulder Badge")).toContain("animate-stamp-slap");
    expect(row(markup, "Cascade Badge")).toContain("animate-stamp-slap");
  });

  it("leaves rows outside the cascade still", () => {
    expect(row(render([]), "Thunder Badge")).not.toContain("animate-");
  });
});
