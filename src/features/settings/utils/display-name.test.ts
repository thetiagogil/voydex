import { describe, expect, it } from "vitest";

import { TRAINER_NAME_MAX_LENGTH } from "@/config/trainer-name";

import {
  DISPLAY_NAME_MAX_LENGTH,
  parseDisplayName,
  parseTrainerName,
} from "./display-name";

describe("display name", () => {
  it("trims and folds spaces", () => {
    expect(parseDisplayName("  Ash   Ketchum ")).toEqual({
      ok: true,
      value: "Ash Ketchum",
    });
  });

  it("refuses an empty name: every trainer has one", () => {
    for (const value of ["", "   ", null]) {
      expect(parseDisplayName(value)).toEqual({
        message: "Type a display name.",
        ok: false,
      });
    }
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
  it("trims, folds spaces and refuses an empty name", () => {
    expect(parseTrainerName("  Red   ")).toEqual({ ok: true, value: "Red" });
    expect(parseTrainerName("  ")).toEqual({
      message: "Type a trainer name.",
      ok: false,
    });
    expect(parseTrainerName(null)).toEqual({
      message: "Type a trainer name.",
      ok: false,
    });
  });

  it("allows what a Play's trainer name allows, and no more", () => {
    expect(parseTrainerName("a".repeat(TRAINER_NAME_MAX_LENGTH)).ok).toBe(true);
    expect(parseTrainerName("a".repeat(TRAINER_NAME_MAX_LENGTH + 1)).ok).toBe(
      false,
    );
    /* The games' limit, and the display name's for a card and a bar. */
    expect(TRAINER_NAME_MAX_LENGTH).toBe(12);
    expect(DISPLAY_NAME_MAX_LENGTH).toBe(24);
    expect(parseTrainerName("a".repeat(13))).toEqual({
      message: "Keep it to 12 characters.",
      ok: false,
    });
  });
});
