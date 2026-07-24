import { describe, expect, it } from "vitest";

import {
  MainlineTeamValidationError,
  validateAddMainlinePlayPokemon,
} from "@/modules/mainline/features/plays/hub/views/team/team-overview/domain/team-member-domain";

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
