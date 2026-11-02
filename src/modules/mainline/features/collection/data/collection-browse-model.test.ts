import { describe, expect, it } from "vitest";

import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";

import {
  defaultCollectionFilters,
  filterAndSortCollection,
} from "./collection-browse-model";

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
});
