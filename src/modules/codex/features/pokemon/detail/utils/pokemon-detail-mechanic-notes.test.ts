import { describe, expect, it } from "vitest";

import { getPokemonDetailMechanicNote } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-mechanic-notes";

describe("getPokemonDetailMechanicNote", () => {
  it("says when a mechanic arrives", () => {
    expect(
      getPokemonDetailMechanicNote(
        { introducedGeneration: 3, kind: "later-generation" },
        "abilities",
      ),
    ).toEqual({ arrivesIn: 3, text: "Abilities arrive in" });
  });

  it("says a game leaves it out", () => {
    expect(
      getPokemonDetailMechanicNote({ kind: "not-in-game" }, "breeding"),
    ).toEqual({ arrivesIn: null, text: "This game has no eggs or Day Care" });
  });

  it("says nothing when the game has it", () => {
    expect(getPokemonDetailMechanicNote(null, "abilities")).toBeNull();
  });
});
