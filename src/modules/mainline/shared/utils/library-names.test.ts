import { describe, expect, it } from "vitest";

import { parseLibraryName, toLibrarySlug } from "./library-names";

describe("parseLibraryName", () => {
  it("trims and collapses spaces", () => {
    expect(
      parseLibraryName("  No   healing ", { label: "rule", maximum: 80 }),
    ).toBe("No healing");
  });

  it("refuses an empty or too long name", () => {
    expect(() =>
      parseLibraryName("   ", { label: "tag", maximum: 80 }),
    ).toThrow("Give the tag a name.");
    expect(() =>
      parseLibraryName("x".repeat(81), { label: "tag", maximum: 80 }),
    ).toThrow("A tag's name can be 80 characters at most.");
    expect(() =>
      parseLibraryName(null, { label: "rule", maximum: 80 }),
    ).toThrow("Give the rule a name.");
  });
});

describe("toLibrarySlug", () => {
  it("keeps letters and digits, drops accents and joins the words", () => {
    expect(
      toLibrarySlug("Pokémon Center ban!", { maximum: 80, separator: "_" }),
    ).toBe("pokemon_center_ban");
    expect(toLibrarySlug("Shiny hunt 2", { maximum: 80, separator: "-" })).toBe(
      "shiny-hunt-2",
    );
  });

  it("never ends on a separator when cut short", () => {
    expect(toLibrarySlug("ab cd", { maximum: 3, separator: "-" })).toBe("ab");
  });

  it("is null when nothing is left", () => {
    expect(toLibrarySlug("✨✨", { maximum: 80, separator: "-" })).toBeNull();
  });
});
