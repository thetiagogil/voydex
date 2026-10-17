import { describe, expect, it } from "vitest";

import { getPokemonTypeCssVariables } from "./pokemon-type-styles";

describe("getPokemonTypeCssVariables", () => {
  it("gives a type its official colour and its own label ink", () => {
    expect(getPokemonTypeCssVariables("electric")).toEqual({
      "--t": "var(--type-electric)",
      "--t-on": "var(--type-electric-on)",
    });
  });

  it("falls back to the muted colour with the deep ink", () => {
    expect(getPokemonTypeCssVariables(null)).toEqual({
      "--t": "var(--mute)",
      "--t-on": "var(--on-type-dark)",
    });
  });
});
