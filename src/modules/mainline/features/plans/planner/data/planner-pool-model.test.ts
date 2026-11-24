import { describe, expect, it } from "vitest";

import type { PlannerPokemon } from "@/modules/mainline/features/plans/types";

import {
  getPlannerFormTip,
  getPlannerPokemonNames,
  getPoolTileReadout,
  getPoolTileTip,
  matchesPoolFilters,
} from "./planner-pool-model";

describe("getPoolTileReadout", () => {
  it("reads the types alone, the number being read before the name", () => {
    expect(getPoolTileReadout(["Electric"])).toBe(", Electric");
    expect(getPoolTileReadout(["Water", "Ice"])).toBe(", Water and Ice");
  });
});

describe("the Planner's names", () => {
  const pikachu = getPlannerPokemonNames(
    { name: "Pikachu" },
    { is_default: true, name: "Pikachu" },
  );
  const floette = getPlannerPokemonNames(
    { name: "Floette" },
    { is_default: false, name: "Floette (Eternal Flower)" },
  );
  const raichu = getPlannerPokemonNames(
    { name: "Raichu" },
    { is_default: false, name: "Alolan Raichu" },
  );

  it("names a base form by its species, with no hover note", () => {
    expect(pikachu).toEqual({ name: "Pikachu", speciesName: "Pikachu" });
    expect(getPlannerFormTip(pikachu)).toBeNull();
  });

  it("shows a named form's species and keeps its own name for the hover", () => {
    expect(floette).toEqual({
      name: "Floette (Eternal Flower)",
      speciesName: "Floette",
    });
    expect(getPlannerFormTip(floette)).toBe("Floette (Eternal Flower)");
  });

  it("shows a regional form's species and keeps its own name for the hover", () => {
    expect(raichu).toEqual({ name: "Alolan Raichu", speciesName: "Raichu" });
    expect(getPlannerFormTip(raichu)).toBe("Alolan Raichu");
  });
});

describe("getPoolTileTip", () => {
  it("names the form alone, or before what adding it would mean", () => {
    expect(getPoolTileTip("Alolan Raichu", [])).toBe("Alolan Raichu");
    expect(getPoolTileTip("Alolan Raichu", ["Moon only: trade for it."])).toBe(
      "Alolan Raichu. Moon only: trade for it.",
    );
    expect(getPoolTileTip(null, ["Evolves only by trade."])).toBe(
      "Evolves only by trade.",
    );
    expect(getPoolTileTip(null, [])).toBeNull();
  });
});

describe("matchesPoolFilters", () => {
  const filters = { dex: "", fullyEvolved: false, query: "", type: "" };
  const pokemon = (name: string, speciesName: string) =>
    ({
      isFullyEvolved: true,
      name,
      speciesName,
      types: [{ name: "Psychic", slug: "psychic" }],
    }) as PlannerPokemon;
  const female = pokemon("Meowstic (Female)", "Meowstic");
  const raichu = pokemon("Alolan Raichu", "Raichu");
  const floette = pokemon("Floette (Eternal Flower)", "Floette");

  it("finds a form by its own name, not only its species'", () => {
    expect(matchesPoolFilters(female, { ...filters, query: "female" })).toBe(
      true,
    );
    expect(matchesPoolFilters(raichu, { ...filters, query: "Alolan" })).toBe(
      true,
    );
    expect(matchesPoolFilters(floette, { ...filters, query: "eternal" })).toBe(
      true,
    );
    expect(matchesPoolFilters(raichu, { ...filters, query: "raichu" })).toBe(
      true,
    );
    expect(matchesPoolFilters(raichu, { ...filters, query: "eternal" })).toBe(
      false,
    );
  });
});
