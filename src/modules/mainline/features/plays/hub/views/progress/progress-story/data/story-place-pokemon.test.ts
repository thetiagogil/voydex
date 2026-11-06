import { describe, expect, it } from "vitest";

import {
  groupStoryPlacePokemon,
  type StoryPlaceEncounterRow,
} from "./story-place-pokemon";

const row = (
  overrides: Partial<StoryPlaceEncounterRow>,
): StoryPlaceEncounterRow => ({
  formId: 1600,
  formName: "Pidgey",
  formSlug: "pidgey",
  gameName: null,
  levelMax: 5,
  levelMin: 2,
  wayName: "Walking",
  ...overrides,
});

describe("groupStoryPlacePokemon", () => {
  it("folds a Pokémon's rows into one line with its whole level range and ways", () => {
    expect(
      groupStoryPlacePokemon([
        row({}),
        row({ levelMax: 7, levelMin: 6, wayName: "Surfing" }),
        row({ wayName: "Walking" }),
      ]),
    ).toEqual([
      {
        formId: 1600,
        levels: "Lv. 2–7",
        name: "Pidgey",
        onlyIn: null,
        slug: "pidgey",
        ways: ["Walking", "Surfing"],
      },
    ]);
  });

  it("says which game a Pokémon is only in", () => {
    const [ekans, oddish] = groupStoryPlacePokemon([
      row({ formId: 2300, formName: "Ekans", gameName: "Red" }),
      row({ formId: 4300, formName: "Oddish", gameName: "Blue" }),
    ]);

    expect(ekans.onlyIn).toBe("Red only");
    expect(oddish.onlyIn).toBe("Blue only");
  });

  it("is in every game when its rows are in both, or in neither in particular", () => {
    expect(
      groupStoryPlacePokemon([
        row({ gameName: "Red" }),
        row({ gameName: "Blue" }),
      ])[0].onlyIn,
    ).toBeNull();
  });

  it("reads one level, or none where none is known", () => {
    expect(
      groupStoryPlacePokemon([row({ levelMax: 5, levelMin: 5 })])[0].levels,
    ).toBe("Lv. 5");
    expect(
      groupStoryPlacePokemon([row({ levelMax: null, levelMin: null })])[0]
        .levels,
    ).toBeNull();
  });
});
