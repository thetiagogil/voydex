import { describe, expect, it } from "vitest";

import type { OverviewMilestone } from "./overview-milestones-mapper";
import {
  buildOverviewPartnerChoice,
  findOverviewPartnerMilestone,
  isOverviewFreshPlay,
} from "./partner-choice-mapper";

const milestone = (overrides: Partial<OverviewMilestone>): OverviewMilestone =>
  ({
    badge_refs: [],
    category_id: 1,
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
    sort_order: 1,
    version_group_id: 20,
    ...overrides,
  }) as OverviewMilestone;

const partner = milestone({
  decision_options: [
    {
      decision_option_id: 11,
      label: "Grookey",
      pokemon_form_id: 810,
      pokemon_species_id: 810,
      pokemon_species_name: "Grookey",
    },
    {
      decision_option_id: 12,
      label: "Scorbunny",
      pokemon_form_id: 813,
      pokemon_species_id: 813,
      pokemon_species_name: "Scorbunny",
    },
  ],
  milestone_id: 1,
  milestone_name: "Choose your partner",
});
const gym = milestone({ milestone_id: 2, milestone_name: "Grass Badge" });

describe("partner choice", () => {
  it("finds the base game's first Pokémon choice", () => {
    expect(findOverviewPartnerMilestone([gym, partner], 20)?.milestone_id).toBe(
      1,
    );
    expect(findOverviewPartnerMilestone([gym, partner], 99)).toBeNull();
  });

  it("reads a Play as brand new until more than the partner is recorded", () => {
    const fresh = (milestones: OverviewMilestone[], teamCount = 0) =>
      isOverviewFreshPlay({
        orderedMilestones: milestones,
        partnerMilestone: partner,
        teamCount,
      });

    expect(fresh([partner, gym])).toBe(true);
    expect(fresh([{ ...partner, is_completed: true }, gym], 1)).toBe(true);
    expect(fresh([partner, gym], 2)).toBe(false);
    expect(
      fresh([
        { ...partner, is_completed: true },
        { ...gym, is_completed: true },
      ]),
    ).toBe(false);
  });

  it("draws each option with its art and types at the Play's generation", () => {
    const choice = buildOverviewPartnerChoice({
      formRows: {
        attributes: [
          {
            form_id: 810,
            generation_start_id: 8,
            primary_type_id: 12,
            secondary_type_id: null,
          },
        ],
        forms: [{ id: 810, name: "Grookey", sprite_slug: "grookey" }],
        types: [{ id: 12, name: "Grass", slug: "grass" }],
      },
      milestone: {
        ...partner,
        is_completed: true,
        selected_decision_option_id: 11,
      },
      orderedMilestones: [partner, gym],
    });

    expect(choice).toMatchObject({
      chosenOptionId: 11,
      isRecorded: true,
      position: { sequence: 1, total: 2 },
    });
    expect(choice?.options[0]).toMatchObject({
      name: "Grookey",
      primaryType: { slug: "grass" },
    });
    expect(choice?.options[0]?.imageUrl).toContain("grookey");
    expect(choice?.options[1]).toMatchObject({
      imageUrl: null,
      name: "Scorbunny",
      primaryType: null,
    });
  });
});
