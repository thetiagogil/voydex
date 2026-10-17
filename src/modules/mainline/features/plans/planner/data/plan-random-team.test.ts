import { describe, expect, it } from "vitest";

import type { PlannerPokemon } from "@/modules/mainline/features/plans/types";

import { getRandomCandidates } from "./plan-random-team";

const pokemon = (speciesId: number) =>
  ({ speciesId, name: `#${speciesId}` }) as PlannerPokemon;

const byId = new Map([1, 2, 3].map((id) => [id, pokemon(id)]));
const sections = [
  { key: "galar", name: "Galar", note: null, speciesIds: [1, 2] },
  { key: "armor", name: "Isle of Armor", note: null, speciesIds: [3] },
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
      }).map((candidate) => candidate.speciesId),
    ).toEqual([1, 2, 3]);
  });

  it("keeps to the Pokédex and filters the pool shows", () => {
    expect(
      getRandomCandidates({
        byId,
        dex: "galar",
        isShown: (candidate) => candidate.speciesId !== 2,
        mode: "filtered",
        sections,
      }).map((candidate) => candidate.speciesId),
    ).toEqual([1]);
  });
});
