import { describe, expect, it } from "vitest";
import { z } from "zod";

import {
  formTextSchema,
  parseInput,
  positiveIdSchema,
  safeParseInput,
  slugSchema,
  uuidSchema,
} from "./input-schemas";

const playId = "6f1c2a3e-1b2c-4d5e-8f90-123456789abc";

describe("input schemas", () => {
  it("throws the first issue's message", () => {
    const schema = z.object({
      playId: uuidSchema("A valid Play is required."),
      milestoneId: positiveIdSchema("Milestone"),
    });

    expect(parseInput(schema, { milestoneId: 3, playId })).toEqual({
      milestoneId: 3,
      playId,
    });
    expect(() => parseInput(schema, { milestoneId: 3, playId: "x" })).toThrow(
      "A valid Play is required.",
    );
    expect(() => parseInput(schema, { milestoneId: 1.5, playId })).toThrow(
      "Milestone must be a positive integer.",
    );
  });

  it("uses the error the caller asks for", () => {
    class FormError extends Error {}

    expect(() =>
      parseInput(slugSchema("Pick a game."), "Red Blue", (message) => {
        return new FormError(message);
      }),
    ).toThrow(FormError);
  });

  it("returns the message instead of throwing when asked", () => {
    expect(safeParseInput(positiveIdSchema("Partner"), 0)).toEqual({
      message: "Partner must be a positive integer.",
      ok: false,
    });
  });

  it("reads a form field as trimmed text", () => {
    expect(formTextSchema.parse("  ash ")).toBe("ash");
    expect(formTextSchema.parse(null)).toBe("");
  });
});
