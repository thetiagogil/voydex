import { describe, expect, it } from "vitest";

import { getPokemonTypeCssVariables } from "./pokemon-type-styles";

describe("getPokemonTypeCssVariables", () => {
  it("gives a type its official colour", () => {
    expect(getPokemonTypeCssVariables("electric")).toEqual({
      "--t": "var(--type-electric)",
    });
  });

  it("falls back to the muted colour", () => {
    expect(getPokemonTypeCssVariables(null)).toEqual({ "--t": "var(--mute)" });
  });
});
