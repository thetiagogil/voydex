import { describe, expect, it } from "vitest";

import { parseProfileIconInput } from "./profile-icon-input";

describe("profile icon input", () => {
  it("reads the picked form's id", () => {
    expect(parseProfileIconInput("2500")).toEqual({ formId: 2500, ok: true });
  });

  it("refuses an empty field: every trainer has an icon", () => {
    expect(parseProfileIconInput("")).toEqual({
      message: "Pick an icon.",
      ok: false,
    });
    expect(parseProfileIconInput(null)).toEqual({
      message: "Pick an icon.",
      ok: false,
    });
    expect(parseProfileIconInput("  ")).toEqual({
      message: "Pick an icon.",
      ok: false,
    });
  });

  it("refuses anything that isn't a form id", () => {
    for (const value of ["0", "-1", "1.5", "abc", "1e3", "12345678901"]) {
      expect(parseProfileIconInput(value).ok).toBe(false);
    }
  });
});
