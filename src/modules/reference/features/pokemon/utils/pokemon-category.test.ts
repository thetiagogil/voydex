import { describe, expect, it } from "vitest";

import {
  getPokemonCategory,
  pokemonCategoryNames,
  pokemonCategoryOrder,
} from "@/modules/reference/features/pokemon/utils/pokemon-category";

const flags = (overrides: Partial<Record<string, boolean>> = {}) => ({
  is_baby: false,
  is_legendary: false,
  is_mythical: false,
  ...overrides,
});

describe("getPokemonCategory", () => {
  it("reads each flag as its own category", () => {
    expect(getPokemonCategory(flags({ is_legendary: true }))).toBe("legendary");
    expect(getPokemonCategory(flags({ is_mythical: true }))).toBe("mythical");
    expect(getPokemonCategory(flags({ is_baby: true }))).toBe("baby");
  });

  it("falls back to other when no flag is set", () => {
    expect(getPokemonCategory(flags())).toBe("other");
  });

  it("lets Mythical win over Legendary, and both over Baby", () => {
    expect(
      getPokemonCategory(flags({ is_legendary: true, is_mythical: true })),
    ).toBe("mythical");
    expect(
      getPokemonCategory(flags({ is_baby: true, is_legendary: true })),
    ).toBe("legendary");
  });
});

describe("pokemon categories", () => {
  it("names every category in the order the list shows them", () => {
    expect(
      pokemonCategoryOrder.map((key) => pokemonCategoryNames[key]),
    ).toEqual(["Legendary", "Mythical", "Baby", "Other"]);
  });
});
