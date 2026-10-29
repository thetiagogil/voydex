import { describe, expect, it } from "vitest";

import {
  defaultPlayName,
  NewPlayInputError,
  parseNewPlayInput,
} from "./new-play-input";

const valid = {
  expansionVersionGroupIds: [19, 20, 19],
  gameSlug: "sword",
  partner: { formId: 81000, speciesId: 810 },
  playName: "  Late Journey ",
  startedOn: "2026-10-13",
  trainerName: " Tiago ",
};

describe("parseNewPlayInput", () => {
  it("trims names, dedupes expansions and keeps the partner", () => {
    expect(parseNewPlayInput(valid)).toEqual({
      challengeRules: [],
      expansionVersionGroupIds: [19, 20],
      gameSlug: "sword",
      partner: { formId: 81000, speciesId: 810 },
      playName: "Late Journey",
      startedOn: "2026-10-13",
      tracking: null,
      trainerName: "Tiago",
    });
  });

  it("falls back to the default name and allows deciding the partner later", () => {
    const input = parseNewPlayInput({
      ...valid,
      partner: null,
      playName: "   ",
      trainerName: "",
    });

    expect(input.playName).toBe(defaultPlayName);
    expect(input.partner).toBeNull();
    expect(input.trainerName).toBeNull();
  });

  it("reads no tracking as your saved defaults, and keeps what it was sent", () => {
    expect(parseNewPlayInput(valid).tracking).toBeNull();

    const tracking = {
      collectibles: false,
      pokedexMode: "caught_only",
      story: true,
    };

    expect(parseNewPlayInput({ ...valid, tracking }).tracking).toEqual(
      tracking,
    );
  });

  it("refuses tracking that is not the three choices", () => {
    expect(() =>
      parseNewPlayInput({
        ...valid,
        tracking: { collectibles: true, pokedexMode: "all", story: true },
      }),
    ).toThrow();
  });

  it("keeps the rules it starts with and their options", () => {
    const ruleId = "7d4c8f0e-6a52-4f11-9a0b-1c2d3e4f5a6b";

    expect(
      parseNewPlayInput({
        ...valid,
        challengeRules: [{ config: { type_id: 3 }, ruleId }],
      }).challengeRules,
    ).toEqual([{ config: { type_id: 3 }, ruleId }]);
  });

  it.each([
    [{ ...valid, challengeRules: [{ config: null, ruleId: "monotype" }] }],
    [
      {
        ...valid,
        challengeRules: [
          {
            config: { dupes_clause: true },
            ruleId: "7d4c8f0e-6a52-4f11-9a0b-1c2d3e4f5a6b",
          },
        ],
      },
    ],
    [{ ...valid, gameSlug: "Sword!" }],
    [{ ...valid, partner: { formId: "1", speciesId: 2 } }],
    [{ ...valid, expansionVersionGroupIds: [0] }],
    [{ ...valid, startedOn: "2026-02-30" }],
    [{ ...valid, playName: "x".repeat(201) }],
    [null],
  ])("rejects %j", (raw) => {
    expect(() => parseNewPlayInput(raw)).toThrow(NewPlayInputError);
  });
});
