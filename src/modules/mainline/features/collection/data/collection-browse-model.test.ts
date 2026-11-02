import { describe, expect, it } from "vitest";

import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";

import type { SpeciesGeneration } from "@/modules/reference/features/pokemon/data/species-generations";

import {
  countActiveCollectionFilters,
  defaultCollectionFilters,
  filterAndSortCollection,
  hasActiveCollectionFilters,
} from "./collection-browse-model";

const generations: SpeciesGeneration[] = [
  {
    firstNumber: 1,
    id: 10,
    lastNumber: 151,
    name: "Generation I",
    number: 1,
    speciesCount: 151,
  },
  {
    firstNumber: 152,
    id: 20,
    lastNumber: 251,
    name: "Generation II",
    number: 2,
    speciesCount: 100,
  },
];

/* Only what the sort and filters read. */
const entry = (
  name: string,
  nationalNumber: number,
  playIds: string[],
  members = playIds.length,
) =>
  ({
    lastUsedAt: null,
    members: Array.from({ length: members }, (_, index) => ({
      name: `${name} ${index + 1}`,
    })),
    name,
    nationalNumber,
    onTeamNow: false,
    playIds,
    shiny: false,
    types: [],
  }) as unknown as TrainerPokemonEntry;

describe("filterAndSortCollection", () => {
  it("opens on Most used: more Plays first, then more caught, then the Pokédex", () => {
    const entries = [
      entry("Bulbasaur", 1, ["a"]),
      entry("Pikachu", 25, ["a", "b"]),
      entry("Eevee", 133, ["a", "b", "c"]),
      entry("Charmander", 4, ["a"], 2),
    ];

    expect(defaultCollectionFilters.sort).toBe("used");
    expect(
      filterAndSortCollection(entries, defaultCollectionFilters).map(
        (shown) => shown.name,
      ),
    ).toEqual(["Eevee", "Pikachu", "Charmander", "Bulbasaur"]);
  });

  it("keeps only a generation's species when one is picked", () => {
    const entries = [
      entry("Pikachu", 25, ["a"]),
      entry("Togepi", 175, ["a", "b"]),
      entry("Stranger", 900, ["a"]),
    ];
    const filters = { ...defaultCollectionFilters, generation: "20" };

    expect(
      filterAndSortCollection(entries, filters, generations).map(
        (shown) => shown.name,
      ),
    ).toEqual(["Togepi"]);
    expect(hasActiveCollectionFilters(filters)).toBe(true);
    expect(countActiveCollectionFilters(filters)).toBe(1);
    expect(countActiveCollectionFilters(defaultCollectionFilters)).toBe(0);
  });
});
