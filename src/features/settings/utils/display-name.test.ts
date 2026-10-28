import { describe, expect, it } from "vitest";

import {
  DISPLAY_NAME_MAX_LENGTH,
  parseDisplayName,
  parseTrainerName,
  TRAINER_NAME_MAX_LENGTH,
} from "./display-name";

describe("display name", () => {
  it("trims and folds spaces", () => {
    expect(parseDisplayName("  Ash   Ketchum ")).toEqual({
      ok: true,
      value: "Ash Ketchum",
    });
  });

  it("clears the name when it is empty", () => {
    expect(parseDisplayName("   ")).toEqual({ ok: true, value: null });
    expect(parseDisplayName(null)).toEqual({ ok: true, value: null });
  });

  it("refuses a name longer than the profile allows", () => {
    expect(parseDisplayName("a".repeat(DISPLAY_NAME_MAX_LENGTH + 1)).ok).toBe(
      false,
    );
    expect(parseDisplayName("a".repeat(DISPLAY_NAME_MAX_LENGTH)).ok).toBe(true);
  });

  it("refuses anything that isn't text", () => {
    expect(parseDisplayName(new File([], "name")).ok).toBe(false);
  });
});

describe("default trainer name", () => {
  it("trims, folds spaces and clears when empty", () => {
    expect(parseTrainerName("  Red   ")).toEqual({ ok: true, value: "Red" });
    expect(parseTrainerName("  ")).toEqual({ ok: true, value: null });
  });

  it("allows what a Play's trainer name allows, and no more", () => {
    expect(parseTrainerName("a".repeat(TRAINER_NAME_MAX_LENGTH)).ok).toBe(true);
    expect(parseTrainerName("a".repeat(TRAINER_NAME_MAX_LENGTH + 1)).ok).toBe(
      false,
    );
    expect(parseTrainerName("a".repeat(DISPLAY_NAME_MAX_LENGTH + 1)).ok).toBe(
      true,
    );
  });
});
