import { describe, expect, it } from "vitest";

import {
  getPokemonDetailAbilitiesAbsence,
  getPokemonDetailAbsenceLabel,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-mechanic-notes";

describe("the entry's notes for what a game doesn't have", () => {
  it("says when a mechanic arrives", () => {
    const absence = {
      introducedGeneration: 3,
      kind: "later-generation",
    } as const;

    expect(getPokemonDetailAbsenceLabel(absence)).toBe("From Generation III");
    expect(getPokemonDetailAbilitiesAbsence(absence)).toBe(
      "Abilities arrive in Generation III.",
    );
  });

  it("says a game leaves it out", () => {
    const absence = { kind: "not-in-game" } as const;

    expect(getPokemonDetailAbsenceLabel(absence)).toBe("Not in this game");
    expect(getPokemonDetailAbilitiesAbsence(absence)).toBe(
      "This game has no abilities.",
    );
  });

  it("says nothing when the game has it", () => {
    expect(getPokemonDetailAbsenceLabel(null)).toBeNull();
    expect(getPokemonDetailAbilitiesAbsence(null)).toBeNull();
  });
});
