import { describe, expect, it } from "vitest";

import {
  gameMechanics,
  resolveGameMechanics,
} from "@/modules/reference/features/games/domain/game-mechanics";

const buildContext = (generationId: number) => ({
  gameId: generationId,
  generationId,
  versionGroupId: generationId,
});

describe("resolveGameMechanics", () => {
  it("marks all initial build mechanics unsupported in Generation I", () => {
    const profile = resolveGameMechanics(buildContext(1));

    expect(profile.support).toEqual({
      [gameMechanics.abilities]: "unsupported",
      [gameMechanics.heldItems]: "unsupported",
      [gameMechanics.natures]: "unsupported",
      [gameMechanics.pokemonGender]: "unsupported",
    });
  });

  it("enables held items and Pokemon gender in Generation II", () => {
    const profile = resolveGameMechanics(buildContext(2));

    expect(profile.support).toMatchObject({
      [gameMechanics.abilities]: "unsupported",
      [gameMechanics.heldItems]: "supported",
      [gameMechanics.natures]: "unsupported",
      [gameMechanics.pokemonGender]: "supported",
    });
  });

  it("enables abilities and natures from Generation III", () => {
    const profile = resolveGameMechanics(buildContext(3));

    expect(Object.values(profile.support)).toEqual([
      "supported",
      "supported",
      "supported",
      "supported",
    ]);
  });

  it("preserves unknown support when the exact game context is incomplete", () => {
    const profile = resolveGameMechanics({
      gameId: null,
      generationId: 3,
      versionGroupId: null,
    });

    expect(Object.values(profile.support)).toEqual([
      "unknown",
      "unknown",
      "unknown",
      "unknown",
    ]);
  });
});
