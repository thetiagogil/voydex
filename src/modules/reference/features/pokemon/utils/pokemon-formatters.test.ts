import { describe, expect, it } from "vitest";

import { formatPokedexNumber, formatShortFormName } from "./pokemon-formatters";

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

describe("formatPokedexNumber", () => {
  /* One way for every Pokédex number, national or a game's own. */
  it.each([
    [1, "#001"],
    [25, "#025"],
    [151, "#151"],
    [1025, "#1025"],
  ])("%i reads %s", (number, expected) => {
    expect(formatPokedexNumber(number)).toBe(expected);
  });
});
