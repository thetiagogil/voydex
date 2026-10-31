import { describe, expect, it } from "vitest";

import {
  getHoverFocusClassName,
  isOutsideGridFocus,
  isOutsideKeyFocus,
} from "./hover-focus";

describe("isOutsideKeyFocus", () => {
  it("dims nothing while nothing is picked out", () => {
    expect(isOutsideKeyFocus(null, "a")).toBe(false);
  });

  it("dims every part but the picked one", () => {
    expect(isOutsideKeyFocus("a", "a")).toBe(false);
    expect(isOutsideKeyFocus("a", "b")).toBe(true);
  });

  it("treats 0 as a key, not as nothing", () => {
    expect(isOutsideKeyFocus(0, 1)).toBe(true);
    expect(isOutsideKeyFocus(0, 0)).toBe(false);
  });
});

describe("isOutsideGridFocus", () => {
  const cell = { column: 2, row: 3 };

  it("dims nothing while nothing is picked out", () => {
    expect(isOutsideGridFocus(null, { column: 0, row: 0 })).toBe(false);
  });

  it("keeps a hovered cell's whole row and whole column", () => {
    expect(isOutsideGridFocus(cell, { column: 0, row: 3 })).toBe(false);
    expect(isOutsideGridFocus(cell, { column: 2, row: 0 })).toBe(false);
    expect(isOutsideGridFocus(cell, { column: 0, row: 0 })).toBe(true);
  });

  it("keeps the heads of the hovered row and column", () => {
    expect(isOutsideGridFocus(cell, { column: 2, row: null })).toBe(false);
    expect(isOutsideGridFocus(cell, { column: null, row: 3 })).toBe(false);
    expect(isOutsideGridFocus(cell, { column: 1, row: null })).toBe(true);
    expect(isOutsideGridFocus(cell, { column: null, row: 1 })).toBe(true);
  });

  it("keeps only the column under a column head", () => {
    const head = { column: 2, row: null };

    expect(isOutsideGridFocus(head, { column: 2, row: 7 })).toBe(false);
    expect(isOutsideGridFocus(head, { column: 1, row: 7 })).toBe(true);
    /* Another row's head never matches a missing row. */
    expect(isOutsideGridFocus(head, { column: null, row: 0 })).toBe(true);
  });

  it("keeps only the row beside a row head", () => {
    const head = { column: null, row: 3 };

    expect(isOutsideGridFocus(head, { column: 5, row: 3 })).toBe(false);
    expect(isOutsideGridFocus(head, { column: 5, row: 4 })).toBe(true);
    expect(isOutsideGridFocus(head, { column: 5, row: null })).toBe(true);
  });
});

describe("getHoverFocusClassName", () => {
  it("fades only the dimmed parts, always ready to ease", () => {
    expect(getHoverFocusClassName(false)).toBe("transition-opacity");
    expect(getHoverFocusClassName(true)).toBe("transition-opacity opacity-40");
  });
});
