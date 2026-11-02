import { describe, expect, it } from "vitest";

import {
  buildSpeciesGenerations,
  findSpeciesGeneration,
} from "./species-generations";

const generations = [
  { id: 20, name: "Generation II", sort_order: 2 },
  { id: 10, name: "Generation I", sort_order: 1 },
  { id: 30, name: "Generation III", sort_order: 3 },
];

const species = [
  { introduced_generation_id: 10, national_number: 1 },
  { introduced_generation_id: 10, national_number: 151 },
  { introduced_generation_id: 10, national_number: 25 },
  { introduced_generation_id: 20, national_number: 152 },
  { introduced_generation_id: 20, national_number: 251 },
  /* A generation Voydex has no species of yet. */
  { introduced_generation_id: 99, national_number: 9999 },
];

describe("buildSpeciesGenerations", () => {
  it("orders the generations, counts their species and spans their numbers", () => {
    expect(buildSpeciesGenerations(generations, species)).toEqual([
      {
        firstNumber: 1,
        id: 10,
        lastNumber: 151,
        name: "Generation I",
        number: 1,
        speciesCount: 3,
      },
      {
        firstNumber: 152,
        id: 20,
        lastNumber: 251,
        name: "Generation II",
        number: 2,
        speciesCount: 2,
      },
    ]);
  });
});

describe("findSpeciesGeneration", () => {
  const built = buildSpeciesGenerations(generations, species);

  it("finds the generation by National number, or none", () => {
    expect(findSpeciesGeneration(built, 25)?.name).toBe("Generation I");
    expect(findSpeciesGeneration(built, 152)?.name).toBe("Generation II");
    expect(findSpeciesGeneration(built, 900)).toBeNull();
    expect(findSpeciesGeneration(built, null)).toBeNull();
  });
});
