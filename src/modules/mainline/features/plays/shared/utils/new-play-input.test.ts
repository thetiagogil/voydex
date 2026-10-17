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
      expansionVersionGroupIds: [19, 20],
      gameSlug: "sword",
      partner: { formId: 81000, speciesId: 810 },
      playName: "Late Journey",
      startedOn: "2026-10-13",
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

  it.each([
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
