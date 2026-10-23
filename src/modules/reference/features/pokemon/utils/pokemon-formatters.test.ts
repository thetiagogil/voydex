import { describe, expect, it } from "vitest";

import { formatShortFormName } from "./pokemon-formatters";

describe("formatShortFormName", () => {
  it.each([
    ["Hisuian Arcanine", "Arcanine", "Hisuian"],
    ["Rotom (Heat)", "Rotom", "Heat"],
    ["Paldean Tauros (Blaze Breed)", "Tauros", "Blaze Breed"],
    ["Galarian Mr. Mime", "Mr. Mime", "Galarian"],
    ["Arcanine", "Arcanine", "Arcanine"],
  ])("%s beside %s reads %s", (formName, speciesName, expected) => {
    expect(formatShortFormName(formName, speciesName)).toBe(expected);
  });
});
