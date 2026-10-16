import { describe, expect, it } from "vitest";

import {
  gameMechanics,
  getGameMechanicAbsence,
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
      [gameMechanics.breeding]: "unsupported",
      [gameMechanics.heldItems]: "unsupported",
      [gameMechanics.natures]: "unsupported",
      [gameMechanics.pokemonGender]: "unsupported",
    });
  });

  it("enables breeding, held items and Pokemon gender in Generation II", () => {
    const profile = resolveGameMechanics(buildContext(2));

    expect(profile.support).toMatchObject({
      [gameMechanics.abilities]: "unsupported",
      [gameMechanics.breeding]: "supported",
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
      "unknown",
    ]);
  });
});

describe("exact-title exceptions", () => {
  it.each([
    ["Let's Go", 17, 7],
    ["Legends: Arceus", 22, 8],
    ["Legends: Z-A", 26, 9],
    ["Mega Dimension", 27, 9],
  ])("has no breeding in %s", (_name, versionGroupId, generationId) => {
    const profile = resolveGameMechanics({
      gameId: 1,
      generationId,
      versionGroupId,
    });

    expect(profile.support[gameMechanics.breeding]).toBe("unsupported");
    expect(profile.support[gameMechanics.pokemonGender]).toBe("supported");
  });

  it.each([
    ["Let's Go, Pikachu!", 29, 7, 17],
    ["Legends: Arceus", 35, 8, 22],
    ["Legends: Z-A", 38, 9, 26],
    ["Mega Dimension", 38, 9, 27],
  ])(
    "drops abilities and held items but keeps natures in %s",
    (_name, gameId, generationId, versionGroupId) => {
      const profile = resolveGameMechanics({
        gameId,
        generationId,
        versionGroupId,
      });

      expect(profile.support[gameMechanics.abilities]).toBe("unsupported");
      expect(profile.support[gameMechanics.heldItems]).toBe("unsupported");
      expect(profile.support[gameMechanics.natures]).toBe("supported");
    },
  );

  it.each([
    ["Ultra Sun / Ultra Moon", 27, 7, 16],
    ["Brilliant Diamond / Shining Pearl", 33, 8, 21],
    ["Scarlet / Violet", 36, 9, 23],
  ])(
    "keeps abilities and held items in %s, from the same generation",
    (_name, gameId, generationId, versionGroupId) => {
      const profile = resolveGameMechanics({
        gameId,
        generationId,
        versionGroupId,
      });

      expect(profile.support[gameMechanics.abilities]).toBe("supported");
      expect(profile.support[gameMechanics.heldItems]).toBe("supported");
    },
  );

  it("keeps breeding in the other games of the same generations", () => {
    const profile = resolveVersionGroupMechanics({
      gameIds: [31, 32],
      generationId: 8,
      versionGroupId: 18,
    });

    expect(profile.support[gameMechanics.breeding]).toBe("supported");
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
      "unknown",
    ]);
  });
});

describe("getGameMechanicAbsence", () => {
  it("says a mechanic comes in a later generation", () => {
    expect(
      getGameMechanicAbsence(
        resolveGameMechanics(buildContext(1)),
        gameMechanics.abilities,
      ),
    ).toEqual({ introducedGeneration: 3, kind: "later-generation" });
  });

  it("says a title leaves a mechanic out", () => {
    expect(
      getGameMechanicAbsence(
        resolveGameMechanics({
          gameId: 29,
          generationId: 7,
          versionGroupId: 17,
        }),
        gameMechanics.abilities,
      ),
    ).toEqual({ kind: "not-in-game" });
  });

  it("is null for a supported mechanic", () => {
    expect(
      getGameMechanicAbsence(
        resolveGameMechanics(buildContext(8)),
        gameMechanics.abilities,
      ),
    ).toBeNull();
  });
});
