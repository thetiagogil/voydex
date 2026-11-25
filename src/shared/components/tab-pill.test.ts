import { describe, expect, it } from "vitest";

import { getTabPillClassName } from "./tab-pill";

describe("getTabPillClassName", () => {
  it("fills the tab you are on with the solid blue and white words", () => {
    const current = getTabPillClassName(true).split(" ");

    expect(current).toContain("bg-calm");
    expect(current).toContain("text-white");
    expect(current).toContain("border-transparent");
    expect(current).not.toContain("bg-surface");
  });

  it("draws every other tab white with the thin outline", () => {
    const other = getTabPillClassName(false).split(" ");

    expect(other).toContain("bg-surface");
    expect(other).toContain("border-lip");
    expect(other).not.toContain("bg-calm");
  });

  it("keeps one height, size and weight, so picking a tab never shifts the row", () => {
    const shape = (isCurrent: boolean) =>
      getTabPillClassName(isCurrent)
        .split(" ")
        .filter((name) => /^(h-|text-15|font-|border-\[|rounded-)/.test(name));

    expect(shape(true)).toEqual(shape(false));
    expect(shape(true)).toContain("h-9");
    expect(shape(true)).toContain("text-15");
    /* The lighter weight: a tab's words are never bold. */
    expect(shape(true)).toContain("font-semibold");
  });

  it("never takes the action red: red is for actions only", () => {
    expect(getTabPillClassName(true)).not.toContain("action");
    expect(getTabPillClassName(false)).not.toContain("action");
  });
});
