import { describe, expect, it } from "vitest";

import {
  getTrainerFamilyEntries,
  type TrainerPokemonEntry,
} from "./trainer-pokemon-model";

const entry = (
  speciesId: number,
  evolutionFamilyId: number | null,
): TrainerPokemonEntry => ({
  evolutionFamilyId,
  firstUsedAt: null,
  gameNames: [],
  imageUrl: null,
  lastUsedAt: null,
  members: [],
  name: `Pokémon ${speciesId}`,
  nationalNumber: speciesId,
  onTeamNow: false,
  playIds: [],
  shiny: false,
  speciesId,
  speciesSlug: `pokemon-${speciesId}`,
  types: [],
});

describe("getTrainerFamilyEntries", () => {
  const charmander = entry(4, 2);
  const charmeleon = entry(5, 2);
  const charizard = entry(6, 2);
  const pikachu = entry(25, 10);
  const unknown = entry(999, null);
  const entries = [charizard, pikachu, charmeleon, charmander, unknown];

  it("finds the rest of the family in Pokédex order", () => {
    expect(getTrainerFamilyEntries(entries, charmeleon)).toEqual([
      charmander,
      charizard,
    ]);
  });

  it("finds nobody for a lone species or an unknown family", () => {
    expect(getTrainerFamilyEntries(entries, pikachu)).toEqual([]);
    expect(getTrainerFamilyEntries(entries, unknown)).toEqual([]);
  });
});
