import { describe, expect, it } from "vitest";

import { putPresetRule, shiftPresetRule, takePresetRule } from "./preset-board";

describe("putPresetRule", () => {
  it("adds a rule at the end, or before a place", () => {
    expect(putPresetRule(["a", "b"], "c")).toEqual(["a", "b", "c"]);
    expect(putPresetRule(["a", "b"], "c", 0)).toEqual(["c", "a", "b"]);
    expect(putPresetRule(["a", "b"], "c", 1)).toEqual(["a", "c", "b"]);
  });

  it("moves a rule already in it, never twice", () => {
    expect(putPresetRule(["a", "b", "c"], "a", 3)).toEqual(["b", "c", "a"]);
    expect(putPresetRule(["a", "b", "c"], "c", 0)).toEqual(["c", "a", "b"]);
    expect(putPresetRule(["a", "b", "c"], "a", 2)).toEqual(["b", "a", "c"]);
    expect(putPresetRule(["a", "b"], "b")).toEqual(["a", "b"]);
  });
});

describe("shiftPresetRule", () => {
  it("moves a rule up or down, and stays at an end", () => {
    expect(shiftPresetRule(["a", "b", "c"], "b", -1)).toEqual(["b", "a", "c"]);
    expect(shiftPresetRule(["a", "b", "c"], "b", 1)).toEqual(["a", "c", "b"]);
    expect(shiftPresetRule(["a", "b"], "a", -1)).toEqual(["a", "b"]);
    expect(shiftPresetRule(["a", "b"], "b", 1)).toEqual(["a", "b"]);
  });
});

describe("takePresetRule", () => {
  it("takes a rule out", () => {
    expect(takePresetRule(["a", "b"], "a")).toEqual(["b"]);
  });
});
