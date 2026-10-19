import { describe, expect, it } from "vitest";

import {
  getBlockingPrerequisiteIds,
  numberJourneyMilestones,
  orderPlayMilestones,
  pickNextMilestone,
  pickNextMilestoneRow,
} from "./play-milestones";

describe("getBlockingPrerequisiteIds", () => {
  it("keeps required and story-unlock prerequisites, not suggested ones", () => {
    expect(
      getBlockingPrerequisiteIds([
        { prerequisite_kind_slug: "required", prerequisite_milestone_id: 1 },
        {
          prerequisite_kind_slug: "story-unlock",
          prerequisite_milestone_id: 2,
        },
        { prerequisite_kind_slug: "suggested", prerequisite_milestone_id: 3 },
        { prerequisite_milestone_id: 4 },
        "not a prerequisite",
      ]),
    ).toEqual([1, 2]);
    expect(getBlockingPrerequisiteIds(null)).toEqual([]);
  });
});

describe("orderPlayMilestones", () => {
  it("orders by scope, then category, then the milestone's own order", () => {
    const ordered = orderPlayMilestones({
      categories: [
        {
          category_id: 10,
          category_sort_order: 1,
          content_scope_sort_order: 2,
        },
        {
          category_id: 20,
          category_sort_order: 2,
          content_scope_sort_order: 1,
        },
        {
          category_id: 30,
          category_sort_order: 1,
          content_scope_sort_order: 1,
        },
      ],
      milestones: [
        { category_id: 10, milestone_id: 1, sort_order: 1 },
        { category_id: 20, milestone_id: 2, sort_order: 1 },
        { category_id: 30, milestone_id: 4, sort_order: 2 },
        { category_id: 30, milestone_id: 3, sort_order: 1 },
        { category_id: 99, milestone_id: 5, sort_order: 1 },
      ],
    });

    expect(ordered.map((milestone) => milestone.milestone_id)).toEqual([
      3, 4, 2, 1, 5,
    ]);
  });
});

describe("pickNextMilestone", () => {
  const state = (
    isRequired: boolean,
    isCompleted: boolean,
    isAvailable = true,
    isChoice = false,
  ) => ({
    isAvailable,
    isChoice,
    isCompleted,
    isRequired,
  });

  it("prefers a required milestone you can record now", () => {
    const open = state(true, false);

    expect(
      pickNextMilestone(
        [state(true, false, false), state(false, false), open],
        (milestone) => milestone,
      ),
    ).toBe(open);
  });

  it("falls back to the first required one, then anything still open", () => {
    const locked = state(true, false, false);
    const optional = state(false, false);

    expect(pickNextMilestone([optional, locked], (m) => m)).toBe(locked);
    expect(pickNextMilestone([state(true, true), optional], (m) => m)).toBe(
      optional,
    );
    expect(pickNextMilestone([state(true, true)], (m) => m)).toBeNull();
  });

  it("comes to an optional choice in its place, as Story order has it", () => {
    // FireRed's Fossil Choice, between Boulder and Cascade.
    const fossilChoice = state(false, false, true, true);

    expect(
      pickNextMilestone(
        [state(true, true), fossilChoice, state(true, false)],
        (milestone) => milestone,
      ),
    ).toBe(fossilChoice);
  });

  it("reads raw rows, treating an open blocking prerequisite as locked", () => {
    const next = pickNextMilestoneRow([
      {
        is_completed: false,
        is_required_for_completion: true,
        milestone_id: 1,
        milestone_type_slug: "story",
        prerequisites: [
          { prerequisite_kind_slug: "required", prerequisite_milestone_id: 9 },
        ],
      },
      {
        is_completed: false,
        is_required_for_completion: true,
        milestone_id: 2,
        milestone_type_slug: "story",
        prerequisites: [],
      },
    ]);

    expect(next?.milestone_id).toBe(2);
  });
});

describe("numberJourneyMilestones", () => {
  it("numbers only the milestones a journey needs", () => {
    // FireRed's Fossil Choice sits between Boulder and Cascade.
    const journey = [
      { name: "Boulder Badge", required: true },
      { name: "Fossil Choice", required: false },
      { name: "Cascade Badge", required: true },
    ];

    expect(
      numberJourneyMilestones(journey, (milestone) => milestone.required),
    ).toEqual({ sequences: [1, null, 2], total: 2 });
  });
});
