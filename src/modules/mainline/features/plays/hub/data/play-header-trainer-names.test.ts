import { describe, expect, it } from "vitest";

import { getTrainerNameSuggestions } from "./play-header-trainer-names";

describe("getTrainerNameSuggestions", () => {
  it("offers each name from your other Plays once, A to Z", () => {
    expect(
      getTrainerNameSuggestions(["Red", "Blue", "Red", "Ash"], null),
    ).toEqual(["Ash", "Blue", "Red"]);
  });

  it("treats names that differ only in case or spacing as one", () => {
    expect(
      getTrainerNameSuggestions([" red", "RED ", "Red", "Blue"], null),
    ).toEqual(["Blue", "red"]);
  });

  it("leaves out empty names", () => {
    expect(getTrainerNameSuggestions([null, "", "  ", "Gold"], null)).toEqual([
      "Gold",
    ]);
  });

  it("leaves out the name this Play already has", () => {
    expect(getTrainerNameSuggestions(["Red", "Blue"], " red ")).toEqual([
      "Blue",
    ]);
  });

  it("offers nothing when no other Play has a name", () => {
    expect(getTrainerNameSuggestions([], "Red")).toEqual([]);
    expect(getTrainerNameSuggestions([null], null)).toEqual([]);
  });
});
