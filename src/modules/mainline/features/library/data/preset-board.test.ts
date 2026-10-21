import { describe, expect, it } from "vitest";

import type { LibraryRule } from "@/modules/mainline/features/library/types";

import {
  orderPresetRules,
  putPresetRule,
  takePresetRule,
} from "./preset-board";

const catching = { id: 1, name: "Catching", slug: "catching" };
const battles = { id: 4, name: "Battles", slug: "battles" };
const rule = (id: string, name: string, kind = catching) =>
  ({ id, isBuiltIn: true, kind, name, playCount: 0, plays: [] }) as LibraryRule;

describe("putPresetRule", () => {
  it("adds a rule once", () => {
    expect(putPresetRule(["a"], "b")).toEqual(["a", "b"]);
    expect(putPresetRule(["a", "b"], "b")).toEqual(["a", "b"]);
  });
});

describe("takePresetRule", () => {
  it("takes a rule out", () => {
    expect(takePresetRule(["a", "b"], "a")).toEqual(["b"]);
  });
});

describe("orderPresetRules", () => {
  it("shows rules by kind, then by name, and drops unknown ids", () => {
    const rules = [
      rule("caps", "Level caps", battles),
      rule("shiny", "Shiny only"),
      rule("catch", "First catch per area"),
    ];

    expect(
      orderPresetRules(["caps", "shiny", "gone", "catch"], rules, [
        catching,
        battles,
      ]).map((item) => item.id),
    ).toEqual(["catch", "shiny", "caps"]);
  });
});
