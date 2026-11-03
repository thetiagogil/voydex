import { describe, expect, it } from "vitest";

import type { PlannerPokemon } from "@/modules/mainline/features/plans/types";

import { getRandomCandidates } from "./plan-random-team";

const pokemon = (formId: number) =>
  ({ formId, name: `#${formId}`, speciesId: formId }) as PlannerPokemon;

const byId = new Map([1, 2, 3].map((id) => [id, pokemon(id)]));
const sections = [
  { formIds: [1, 2], key: "galar", name: "Galar", note: null },
  { formIds: [3], key: "armor", name: "Isle of Armor", note: null },
];

describe("getRandomCandidates", () => {
  it("picks from every Pokédex unless the pool is filtered", () => {
    expect(
      getRandomCandidates({
        byId,
        dex: "armor",
        isShown: () => false,
        mode: "all",
        sections,
      }).map((candidate) => candidate.formId),
    ).toEqual([1, 2, 3]);
  });

  it("keeps to the Pokédex and filters the pool shows", () => {
    expect(
      getRandomCandidates({
        byId,
        dex: "galar",
        isShown: (candidate) => candidate.formId !== 2,
        mode: "filtered",
        sections,
      }).map((candidate) => candidate.formId),
    ).toEqual([1]);
  });
});
