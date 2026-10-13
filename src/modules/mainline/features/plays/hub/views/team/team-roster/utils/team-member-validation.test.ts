import { describe, expect, it } from "vitest";

import {
  MainlineTeamValidationError,
  validateAddMainlinePlayPokemon,
  validateUpdateMainlinePlayPokemon,
} from "./team-member-validation";

const validInput = {
  formId: 25,
  playId: "00000000-0000-4000-8000-000000000001",
  rosterStateId: 1,
  slot: 1,
  speciesId: 25,
};

describe("validateAddMainlinePlayPokemon", () => {
  it("normalizes optional fields and applies database-compatible defaults", () => {
    expect(
      validateAddMainlinePlayPokemon({
        ...validInput,
        eventBody: "  First team member  ",
        nickname: "  Sparky  ",
      }),
    ).toMatchObject({
      createEvent: true,
      eventBody: "First team member",
      gender: "unknown",
      isShiny: false,
      moveIds: [],
      nickname: "Sparky",
    });
  });

  it("matches reserve slots to the database roster contract", () => {
    expect(() =>
      validateAddMainlinePlayPokemon({
        ...validInput,
        rosterStateId: 2,
        slot: 1,
      }),
    ).toThrow(MainlineTeamValidationError);

    expect(
      validateAddMainlinePlayPokemon({
        ...validInput,
        rosterStateId: 2,
        slot: 7,
      }).slot,
    ).toBe(7);
  });

  it("rejects more than four moves before reaching the repository", () => {
    expect(() =>
      validateAddMainlinePlayPokemon({
        ...validInput,
        moveIds: [1, 2, 3, 4, 5],
      }),
    ).toThrow("at most four moves");
  });
});

describe("validateUpdateMainlinePlayPokemon", () => {
  const edit = {
    abilityId: 65,
    ballItemId: 4,
    gender: "male" as const,
    heldItemId: null,
    isShiny: false,
    level: 34,
    metLevel: 5,
    metLocation: "  Route 1 ",
    moveIds: [33, 45],
    natureId: 3,
    nickname: "  ",
    notes: null,
  };

  it("trims text and keeps empty text as not recorded", () => {
    expect(validateUpdateMainlinePlayPokemon(edit)).toMatchObject({
      metLocation: "Route 1",
      nickname: null,
    });
  });

  it("refuses repeated moves, more than four, and levels out of range", () => {
    expect(() =>
      validateUpdateMainlinePlayPokemon({ ...edit, moveIds: [33, 33] }),
    ).toThrow(MainlineTeamValidationError);
    expect(() =>
      validateUpdateMainlinePlayPokemon({ ...edit, moveIds: [1, 2, 3, 4, 5] }),
    ).toThrow("four");
    expect(() =>
      validateUpdateMainlinePlayPokemon({ ...edit, level: 101 }),
    ).toThrow("Level");
  });
});
