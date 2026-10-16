import { describe, expect, it } from "vitest";

import { getPokemonDetailMechanicNote } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-mechanic-notes";

describe("getPokemonDetailMechanicNote", () => {
  it("says when a mechanic arrives", () => {
    expect(
      getPokemonDetailMechanicNote(
        { introducedGeneration: 3, kind: "later-generation" },
        "abilities",
        "Ruby and Sapphire",
      ),
    ).toEqual({ arrivesIn: 3, text: "Abilities arrive in" });
  });

  it("names the game that leaves it out", () => {
    expect(
      getPokemonDetailMechanicNote(
        { kind: "not-in-game" },
        "breeding",
        "Legends: Arceus",
      ),
    ).toEqual({
      arrivesIn: null,
      text: "No eggs or Day Care in Legends: Arceus",
    });
  });

  it("says nothing when the game has it", () => {
    expect(
      getPokemonDetailMechanicNote(null, "abilities", "Sword and Shield"),
    ).toBeNull();
  });
});
