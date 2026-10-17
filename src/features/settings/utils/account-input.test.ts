import { describe, expect, it } from "vitest";

import { safeParseInput } from "@/shared/utils/input-schemas";

import { newEmailSchema, newPasswordSchema } from "./account-input";

describe("account input", () => {
  it("trims the new email and refuses one without an @", () => {
    expect(safeParseInput(newEmailSchema, "  ash@example.com ")).toEqual({
      data: "ash@example.com",
      ok: true,
    });
    expect(safeParseInput(newEmailSchema, "ash")).toEqual({
      message: "Type the new email you want to use.",
      ok: false,
    });
    expect(safeParseInput(newEmailSchema, null).ok).toBe(false);
  });

  it("keeps spaces in a password and checks its length", () => {
    expect(safeParseInput(newPasswordSchema, " pikachu ")).toEqual({
      data: " pikachu ",
      ok: true,
    });
    expect(safeParseInput(newPasswordSchema, "   ")).toEqual({
      message: "Type your new password.",
      ok: false,
    });
    expect(safeParseInput(newPasswordSchema, "abc")).toEqual({
      message: "Use at least 6 characters.",
      ok: false,
    });
    expect(safeParseInput(newPasswordSchema, "a".repeat(73))).toEqual({
      message: "Keep it to 72 characters.",
      ok: false,
    });
  });
});
