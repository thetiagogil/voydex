import { describe, expect, it } from "vitest";

import { findPartnerDecision } from "./partner-milestone";

const starterOptions = [
  {
    decision_option_id: 11,
    pokemon_form_id: 81000,
    pokemon_species_id: 810,
  },
  {
    decision_option_id: 12,
    pokemon_form_id: 81300,
    pokemon_species_id: 813,
  },
];

const rows = [
  {
    category_sort_order: 2,
    decision_options: [
      { decision_option_id: 40, pokemon_form_id: 1, pokemon_species_id: 1 },
    ],
    milestone_id: 180040,
    sort_order: 1,
    version_group_id: 18,
  },
  {
    category_sort_order: 1,
    decision_options: starterOptions,
    milestone_id: 180001,
    sort_order: 1,
    version_group_id: 18,
  },
  {
    category_sort_order: 1,
    decision_options: [],
    milestone_id: 180002,
    sort_order: 2,
    version_group_id: 18,
  },
];

describe("findPartnerDecision", () => {
  it("picks the first Pokémon choice of the base game and the partner's option", () => {
    expect(
      findPartnerDecision({
        baseVersionGroupId: 18,
        partner: { formId: 81300, speciesId: 813 },
        rows,
      }),
    ).toEqual({ decisionOptionId: 12, milestoneId: 180001 });
  });

  it("matches the species when the form differs", () => {
    expect(
      findPartnerDecision({
        baseVersionGroupId: 18,
        partner: { formId: 99, speciesId: 810 },
        rows,
      }),
    ).toEqual({ decisionOptionId: 11, milestoneId: 180001 });
  });

  it("is null for a game whose partner is given, or a partner not on offer", () => {
    expect(
      findPartnerDecision({
        baseVersionGroupId: 2,
        partner: { formId: 2500, speciesId: 25 },
        rows,
      }),
    ).toBeNull();
    expect(
      findPartnerDecision({
        baseVersionGroupId: 18,
        partner: { formId: 2500, speciesId: 25 },
        rows,
      }),
    ).toBeNull();
  });
});
