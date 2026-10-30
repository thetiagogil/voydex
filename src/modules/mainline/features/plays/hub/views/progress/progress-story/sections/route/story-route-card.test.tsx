import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { createStampOrder } from "@/modules/mainline/features/plays/shared/data/play-stamps";

import { buildStoryProgressModel } from "../../data/story-progress-model";
import type { StoryMilestoneSource } from "../../types";
import { StoryRouteCard } from "./story-route-card";

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
      chapter_kind: "main-story",
      is_open_world: false,
      plays_in_any_order: false,
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

const render = (waiting: number[], selected: number | null = null) =>
  renderToStaticMarkup(
    <StoryRouteCard
      fadingMilestoneIds={new Set()}
      onMilestoneSelect={() => {}}
      onMotionEnd={() => {}}
      scope={scope}
      selectedMilestoneId={selected}
      stampOrder={createStampOrder([1, 2])}
      waitingMilestoneIds={new Set(waiting)}
    />,
  );

/* The markup of one stop, by the milestone's name. */
const stop = (markup: string, name: string) =>
  markup.split("<li").find((part) => part.includes(name)) ?? "";

describe("StoryRouteCard cascade", () => {
  it("shows a stop still waiting its turn as it was", () => {
    const cascade = stop(render([2]), "Cascade Badge");

    expect(cascade).toContain("Not recorded");
    /* A stop still ahead sinks back. */
    expect(cascade).toContain("bg-surface-2");
    expect(cascade).not.toContain("animate-stamp-slap");
  });

  it("stamps a stop's medallion down once its turn comes", () => {
    const markup = render([]);

    expect(stop(markup, "Boulder Badge")).toContain("animate-stamp-slap");
    expect(stop(markup, "Cascade Badge")).toContain("animate-stamp-slap");
  });

  it("leaves stops outside the cascade still", () => {
    expect(stop(render([]), "Thunder Badge")).not.toContain("animate-");
  });
});

describe("StoryRouteCard", () => {
  it("opens the route with its first chapter's sign and count", () => {
    const markup = render([]);

    expect(markup).toContain("Main Story");
    expect(markup).toContain("2 of 3");
  });

  it("says where each stop stands in one quiet line", () => {
    const markup = render([]);

    expect(stop(markup, "Boulder Badge")).toContain("Recorded");
    expect(stop(markup, "Thunder Badge")).toContain("Next objective");
    /* The next one and those recorded stay at full strength. */
    expect(stop(markup, "Thunder Badge")).not.toContain("bg-surface-2");
    expect(stop(markup, "Boulder Badge")).not.toContain("bg-surface-2");
  });

  it("opens a stop's milestone as a dialog and rings the one open", () => {
    const markup = render([], 3);

    expect(stop(markup, "Thunder Badge")).toContain('aria-haspopup="dialog"');
    expect(stop(markup, "Thunder Badge")).toContain("ring-select-ink");
    expect(stop(markup, "Boulder Badge")).not.toContain("ring-select-ink");
  });
});
