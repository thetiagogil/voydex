import { describe, expect, it } from "vitest";

import {
  gameMechanics,
  resolveGameMechanics,
  resolveVersionGroupMechanics,
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

describe("resolveVersionGroupMechanics", () => {
  it("resolves a version group from every game in it", () => {
    const profile = resolveVersionGroupMechanics({
      gameIds: [31, 32],
      generationId: 8,
      versionGroupId: 18,
    });

    expect(profile.context.gameId).toBeNull();
    expect(Object.values(profile.support)).toEqual([
      "supported",
      "supported",
      "supported",
      "supported",
    ]);
  });

  it("keeps Generation I limits for a group", () => {
    const profile = resolveVersionGroupMechanics({
      gameIds: [1, 2],
      generationId: 1,
      versionGroupId: 1,
    });

    expect(profile.support[gameMechanics.abilities]).toBe("unsupported");
  });

  it("stays unknown for a group without games", () => {
    const profile = resolveVersionGroupMechanics({
      gameIds: [],
      generationId: 8,
      versionGroupId: 19,
    });

    expect(Object.values(profile.support)).toEqual([
      "unknown",
      "unknown",
      "unknown",
      "unknown",
    ]);
  });
});
