import { describe, expect, it } from "vitest";

import { getPokemonTypeSlugAtGeneration } from "./pokemon-type-at-generation";

const typeSlugById = new Map([
  [1, "normal"],
  [18, "fairy"],
]);
const clefairy = [
  { form_id: 35, generation_start_id: 1, primary_type_id: 1 },
  { form_id: 35, generation_start_id: 6, primary_type_id: 18 },
];

describe("getPokemonTypeSlugAtGeneration", () => {
  it("reads a form's type as it stood in the Plan's generation", () => {
    const read = (generationId: number | null) =>
      getPokemonTypeSlugAtGeneration({
        attributes: clefairy,
        formId: 35,
        generationId,
        typeSlugById,
      });

    expect(read(3)).toBe("normal");
    expect(read(8)).toBe("fairy");
    expect(read(null)).toBe("fairy");
  });

  it("is null for a form without attributes", () => {
    expect(
      getPokemonTypeSlugAtGeneration({
        attributes: clefairy,
        formId: 1,
        generationId: 3,
        typeSlugById,
      }),
    ).toBeNull();
  });
});
