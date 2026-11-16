import { describe, expect, it } from "vitest";

import {
  getRuledOutDecisionFormIds,
  groupStoryPlacePokemon,
  type StoryPlaceEncounterRow,
} from "./story-place-pokemon";

const row = (
  overrides: Partial<StoryPlaceEncounterRow>,
): StoryPlaceEncounterRow => ({
  formId: 1600,
  formName: "Pidgey",
  formSlug: "pidgey",
  levelMax: 5,
  levelMin: 2,
  wayName: "Tall grass",
  waySlug: "tall-grass",
  waySortOrder: 1,
  ...overrides,
});

describe("groupStoryPlacePokemon", () => {
  it("groups by how you meet them, in the ways' order", () => {
    expect(
      groupStoryPlacePokemon([
        row({
          formId: 12900,
          formName: "Magikarp",
          wayName: "Fishing",
          waySortOrder: 7,
        }),
        row({}),
        row({ formId: 1900, formName: "Rattata" }),
      ]).map((group) => [
        group.way,
        group.pokemon.map((pokemon) => pokemon.name),
      ]),
    ).toEqual([
      ["Tall grass", ["Pidgey", "Rattata"]],
      ["Fishing", ["Magikarp"]],
    ]);
  });

  it("folds a Pokémon's rows in one way into its whole level range", () => {
    expect(
      groupStoryPlacePokemon([row({}), row({ levelMax: 7, levelMin: 6 })])[0]
        .pokemon,
    ).toEqual([
      { formId: 1600, levels: "Lv. 2–7", name: "Pidgey", slug: "pidgey" },
    ]);
  });

  it("lists a Pokémon met two ways in both, each with its own levels", () => {
    const groups = groupStoryPlacePokemon([
      row({}),
      row({ levelMax: 15, levelMin: 10, wayName: "Surfing", waySortOrder: 6 }),
    ]);

    expect(groups.map((group) => group.pokemon[0].levels)).toEqual([
      "Lv. 2–5",
      "Lv. 10–15",
    ]);
  });

  it("reads one level, or none where none is known", () => {
    expect(
      groupStoryPlacePokemon([row({ levelMax: 5, levelMin: 5 })])[0].pokemon[0]
        .levels,
    ).toBe("Lv. 5");
    expect(
      groupStoryPlacePokemon([row({ levelMax: null, levelMin: null })])[0]
        .pokemon[0].levels,
    ).toBeNull();
  });
});

describe("getRuledOutDecisionFormIds", () => {
  const steedChoice = (selected: number | null) => ({
    decision_options: [
      { decision_option_id: 1, pokemon_form_id: 89600 },
      { decision_option_id: 2, pokemon_form_id: 89700 },
    ],
    selected_decision_option_id: selected,
    version_group_id: 20,
  });
  const freezington = [
    row({
      formId: 89600,
      formName: "Glastrier",
      wayName: "Special encounter",
      waySlug: "special",
      waySortOrder: 28,
    }),
    row({
      formId: 89700,
      formName: "Spectrier",
      wayName: "Special encounter",
      waySlug: "special",
      waySortOrder: 28,
    }),
  ];
  const names = (ruledOut?: ReadonlySet<number>) =>
    groupStoryPlacePokemon(freezington, ruledOut).flatMap((group) =>
      group.pokemon.map((pokemon) => pokemon.name),
    );

  it("leaves off the one-off Pokémon a recorded choice ruled out", () => {
    const ruledOut = getRuledOutDecisionFormIds([steedChoice(2)]);

    expect(names(ruledOut.get(20))).toEqual(["Spectrier"]);
  });

  it("shows every option while the choice isn't recorded", () => {
    const ruledOut = getRuledOutDecisionFormIds([steedChoice(null)]);

    expect(names(ruledOut.get(20))).toEqual(["Glastrier", "Spectrier"]);
  });

  it("keeps a ruled-out Pokémon where it is met in the wild", () => {
    const ruledOut = getRuledOutDecisionFormIds([steedChoice(2)]);

    expect(
      groupStoryPlacePokemon(
        [row({ formId: 89600, formName: "Glastrier" })],
        ruledOut.get(20),
      ).flatMap((group) => group.pokemon.map((pokemon) => pokemon.name)),
    ).toEqual(["Glastrier"]);
  });

  it("never rules out a Pokémon another recorded choice picked", () => {
    const ruledOut = getRuledOutDecisionFormIds([
      steedChoice(2),
      {
        decision_options: [{ decision_option_id: 3, pokemon_form_id: 89600 }],
        selected_decision_option_id: 3,
        version_group_id: 20,
      },
    ]);

    expect(names(ruledOut.get(20))).toEqual(["Glastrier", "Spectrier"]);
  });
});
