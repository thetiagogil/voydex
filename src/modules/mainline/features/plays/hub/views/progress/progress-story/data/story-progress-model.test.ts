import { describe, expect, it } from "vitest";

import type { StoryCategorySource, StoryMilestoneSource } from "../types";
import { buildStoryProgressModel } from "./story-progress-model";

const category = (
  overrides: Partial<StoryCategorySource> = {},
): StoryCategorySource => ({
  category_id: 1,
  category_name: "Main Story",
  category_slug: "main-story",
  category_sort_order: 1,
  completed_milestone_count: 0,
  completed_required_milestone_count: 0,
  content_scope_sort_order: 1,
  milestone_count: 1,
  required_milestone_count: 1,
  version_group_id: 1,
  version_group_name: "Red / Blue",
  version_group_slug: "rb",
  ...overrides,
});

const milestone = (
  overrides: Partial<StoryMilestoneSource> = {},
): StoryMilestoneSource => ({
  category_id: 1,
  category_name: "Main Story",
  category_slug: "main-story",
  completed_at: null,
  completion_event_id: null,
  completion_event_team_snapshot_count: 0,
  decision_options: [],
  description: "A story milestone.",
  is_completed: false,
  is_required_for_completion: true,
  milestone_id: 1,
  milestone_name: "Choose Starter",
  milestone_type_name: "Decision",
  milestone_type_slug: "decision",
  prerequisites: [],
  progress_notes: null,
  selected_decision_option_id: null,
  selected_decision_option_label: null,
  snapshot_policy_slug: "none",
  sort_order: 1,
  version_group_id: 1,
  ...overrides,
});

describe("buildStoryProgressModel", () => {
  it("groups ordered sections into a base-game scope and calculates completion", () => {
    const model = buildStoryProgressModel({
      categories: [
        category({
          category_id: 2,
          category_name: "Post Game",
          category_slug: "post-game",
          category_sort_order: 2,
        }),
        category({
          completed_milestone_count: 1,
          completed_required_milestone_count: 1,
        }),
      ],
      decisionForms: [],
      milestones: [
        milestone({
          category_id: 2,
          milestone_id: 2,
          milestone_name: "Rematch",
        }),
        milestone({
          completed_at: "2026-01-01T12:00:00Z",
          is_completed: true,
        }),
      ],
      snapshotEvents: [],
    });

    expect(model.scopes).toHaveLength(1);
    expect(model.scopes[0]?.label).toBe("Main game");
    expect(model.scopes[0]?.sections.map((section) => section.name)).toEqual([
      "Main Story",
      "Post Game",
    ]);
    expect(model.completedRequiredCount).toBe(1);
    expect(model.requiredCount).toBe(2);
    expect(model.nextMilestone?.name).toBe("Rematch");
    expect(model.defaultMilestoneId).toBe(2);
  });

  it("uses required prerequisite relationships rather than display order", () => {
    const model = buildStoryProgressModel({
      categories: [
        category({ category_id: 1, milestone_count: 2 }),
        category({
          category_id: 2,
          category_name: "Parallel Path",
          category_slug: "parallel-path",
        }),
      ],
      decisionForms: [],
      milestones: [
        milestone({
          milestone_id: 1,
          milestone_name: "Blocked objective",
          prerequisites: [
            {
              prerequisite_kind_name: "Story Unlock",
              prerequisite_kind_slug: "story-unlock",
              prerequisite_milestone_id: 9,
              prerequisite_milestone_name: "Missing unlock",
            },
          ],
        }),
        milestone({
          milestone_id: 9,
          milestone_name: "Missing unlock",
          sort_order: 2,
        }),
        milestone({
          category_id: 2,
          milestone_id: 10,
          milestone_name: "Available parallel objective",
        }),
      ],
      snapshotEvents: [],
    });

    expect(model.nextMilestone?.name).toBe("Missing unlock");
  });

  it("hydrates decision, prerequisite, and snapshot evidence", () => {
    const model = buildStoryProgressModel({
      categories: [category()],
      decisionForms: [{ id: 906, sprite_slug: "sprigatito" }],
      milestones: [
        milestone({
          completion_event_team_snapshot_count: 6,
          decision_options: [
            {
              decision_option_id: 5,
              label: "Sprigatito",
              pokemon_form_id: 906,
              pokemon_form_name: "Sprigatito",
              pokemon_species_name: "Sprigatito",
            },
          ],
          prerequisites: [
            {
              prerequisite_kind_name: "Suggested",
              prerequisite_kind_slug: "suggested",
              prerequisite_milestone_id: 4,
              prerequisite_milestone_name: "Meet the director",
            },
          ],
          selected_decision_option_id: 5,
          selected_decision_option_label: "Sprigatito",
          snapshot_policy_slug: "recommended",
        }),
      ],
      snapshotEvents: [
        {
          milestone_id: 1,
          team_snapshots: [
            {
              form_id: 906,
              form_name: "Sprigatito",
              is_shiny: false,
              position: 1,
              species_name: "Sprigatito",
              sprite_slug: "sprigatito",
            },
            {
              form_id: 1008,
              form_name: "Miraidon (Drive Mode)",
              is_shiny: true,
              position: 2,
              species_name: "Miraidon",
              sprite_slug: "miraidon",
            },
          ],
        },
      ],
    });
    const result = model.scopes[0]?.sections[0]?.milestones[0];

    expect(result).toMatchObject({
      decisionOptions: [
        {
          formName: "Sprigatito",
          id: 5,
          imageUrl:
            "https://img.pokemondb.net/sprites/home/normal/sprigatito.png",
          label: "Sprigatito",
          speciesName: "Sprigatito",
        },
      ],
      selectedDecisionId: 5,
      selectedDecisionLabel: "Sprigatito",
      snapshotCount: 6,
      snapshotMembers: [
        {
          formName: "Sprigatito",
          imageUrl:
            "https://img.pokemondb.net/sprites/home/normal/sprigatito.png",
          isShiny: false,
          position: 1,
          speciesName: "Sprigatito",
        },
        {
          formName: "Miraidon (Drive Mode)",
          imageUrl: "https://img.pokemondb.net/sprites/home/shiny/miraidon.png",
          isShiny: true,
          position: 2,
          speciesName: "Miraidon",
        },
      ],
    });
    expect(result?.prerequisites).toEqual([
      {
        completed: false,
        id: 4,
        kindName: "Suggested",
        kindSlug: "suggested",
        name: "Meet the director",
      },
    ]);
  });

  it("keeps DLC in separate named scopes while joining its category sections", () => {
    const model = buildStoryProgressModel({
      categories: [
        category(),
        category({
          category_id: 2,
          category_name: "DLC Story",
          category_slug: "dlc-story",
          content_scope_sort_order: 2,
          version_group_id: 24,
          version_group_name: "The Teal Mask",
          version_group_slug: "sv-tm",
        }),
        category({
          category_id: 3,
          category_name: "DLC Side Content",
          category_slug: "dlc-side-content",
          category_sort_order: 2,
          content_scope_sort_order: 2,
          version_group_id: 24,
          version_group_name: "The Teal Mask",
          version_group_slug: "sv-tm",
        }),
      ],
      decisionForms: [],
      milestones: [
        milestone(),
        milestone({
          category_id: 2,
          milestone_id: 2,
          version_group_id: 24,
        }),
        milestone({
          category_id: 3,
          milestone_id: 3,
          version_group_id: 24,
        }),
      ],
      snapshotEvents: [],
    });

    expect(model.scopes.map((scope) => scope.label)).toEqual([
      "Main game",
      "The Teal Mask",
    ]);
    expect(model.scopes[1]?.sections.map((section) => section.name)).toEqual([
      "DLC Story",
      "DLC Side Content",
    ]);
  });

  it("marks hard prerequisites unavailable without treating suggestions as locks", () => {
    const model = buildStoryProgressModel({
      categories: [category({ milestone_count: 3 })],
      decisionForms: [],
      milestones: [
        milestone(),
        milestone({
          milestone_id: 2,
          milestone_name: "Suggested next step",
          prerequisites: [
            {
              prerequisite_kind_name: "Suggested",
              prerequisite_kind_slug: "suggested",
              prerequisite_milestone_id: 1,
              prerequisite_milestone_name: "Choose Starter",
            },
          ],
          sort_order: 2,
        }),
        milestone({
          milestone_id: 3,
          milestone_name: "Locked objective",
          prerequisites: [
            {
              prerequisite_kind_name: "Story Unlock",
              prerequisite_kind_slug: "story-unlock",
              prerequisite_milestone_id: 1,
              prerequisite_milestone_name: "Choose Starter",
            },
          ],
          sort_order: 3,
        }),
      ],
      snapshotEvents: [],
    });

    const scopeMilestones = model.scopes[0]?.sections[0]?.milestones;

    expect(scopeMilestones?.[1]).toMatchObject({
      isAvailable: true,
      blockingPrerequisites: [],
    });
    expect(scopeMilestones?.[2]).toMatchObject({
      isAvailable: false,
      blockingPrerequisites: [{ id: 1 }],
    });
  });

  it("previews only completed transitive hard dependents for milestone correction", () => {
    const model = buildStoryProgressModel({
      categories: [category({ milestone_count: 4 })],
      decisionForms: [],
      milestones: [
        milestone({
          completed_at: "2026-01-01T12:00:00Z",
          is_completed: true,
          progress_notes: "Started here.",
          selected_decision_option_id: 11,
          selected_decision_option_label: "Rowlet",
        }),
        milestone({
          completed_at: "2026-01-02T12:00:00Z",
          is_completed: true,
          milestone_id: 2,
          milestone_name: "Required dependent",
          prerequisites: [
            {
              prerequisite_kind_name: "Required",
              prerequisite_kind_slug: "required",
              prerequisite_milestone_id: 1,
              prerequisite_milestone_name: "Choose Starter",
            },
          ],
          sort_order: 2,
        }),
        milestone({
          completed_at: "2026-01-03T12:00:00Z",
          completion_event_id: "10000000-0000-0000-0000-000000000003",
          completion_event_team_snapshot_count: 6,
          is_completed: true,
          milestone_id: 3,
          milestone_name: "Transitive dependent",
          prerequisites: [
            {
              prerequisite_kind_name: "Story Unlock",
              prerequisite_kind_slug: "story-unlock",
              prerequisite_milestone_id: 2,
              prerequisite_milestone_name: "Required dependent",
            },
          ],
          sort_order: 3,
        }),
        milestone({
          completed_at: "2026-01-04T12:00:00Z",
          is_completed: true,
          milestone_id: 4,
          milestone_name: "Suggested branch",
          prerequisites: [
            {
              prerequisite_kind_name: "Suggested",
              prerequisite_kind_slug: "suggested",
              prerequisite_milestone_id: 1,
              prerequisite_milestone_name: "Choose Starter",
            },
          ],
          sort_order: 4,
        }),
      ],
      snapshotEvents: [],
    });
    const target = model.scopes[0]?.sections[0]?.milestones[0];

    expect(target?.incompletionImpact).toEqual({
      affectedMilestones: [
        { id: 1, name: "Choose Starter" },
        { id: 2, name: "Required dependent" },
        { id: 3, name: "Transitive dependent" },
      ],
      decisionCount: 1,
      historyEventCount: 1,
      noteCount: 1,
      snapshotCount: 1,
    });
  });
});
