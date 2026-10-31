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
  const cell = { column: "c2", row: "r3" };

  it("dims nothing while nothing is picked out", () => {
    expect(isOutsideGridFocus(null, { column: "c0", row: "r0" })).toBe(false);
  });

  it("keeps a hovered cell's whole row and whole column", () => {
    expect(isOutsideGridFocus(cell, { column: "c0", row: "r3" })).toBe(false);
    expect(isOutsideGridFocus(cell, { column: "c2", row: "r0" })).toBe(false);
    expect(isOutsideGridFocus(cell, { column: "c0", row: "r0" })).toBe(true);
  });

  it("keeps the heads of the hovered row and column", () => {
    expect(isOutsideGridFocus(cell, { column: "c2", row: null })).toBe(false);
    expect(isOutsideGridFocus(cell, { column: null, row: "r3" })).toBe(false);
    expect(isOutsideGridFocus(cell, { column: "c1", row: null })).toBe(true);
    expect(isOutsideGridFocus(cell, { column: null, row: "r1" })).toBe(true);
  });

  it("keeps only the column under a column head", () => {
    const head = { column: "c2", row: null };

    expect(isOutsideGridFocus(head, { column: "c2", row: "r7" })).toBe(false);
    expect(isOutsideGridFocus(head, { column: "c1", row: "r7" })).toBe(true);
    /* Another row's head never matches a missing row. */
    expect(isOutsideGridFocus(head, { column: null, row: "r0" })).toBe(true);
  });

  it("follows the row it picked out, wherever a sort moves it", () => {
    /* The Fire row moved from first to fifth: still Fire, still kept. */
    const fire = { column: null, row: "fire" };

    expect(isOutsideGridFocus(fire, { column: "scout", row: "fire" })).toBe(
      false,
    );
    expect(isOutsideGridFocus(fire, { column: "scout", row: "water" })).toBe(
      true,
    );
  });

  it("keeps only the row beside a row head", () => {
    const head = { column: null, row: "r3" };

    expect(isOutsideGridFocus(head, { column: "c5", row: "r3" })).toBe(false);
    expect(isOutsideGridFocus(head, { column: "c5", row: "r4" })).toBe(true);
    expect(isOutsideGridFocus(head, { column: "c5", row: null })).toBe(true);
  });
});

describe("getHoverFocusClassName", () => {
  it("fades only the dimmed parts, always ready to ease", () => {
    expect(getHoverFocusClassName(false)).toBe("transition-opacity");
    expect(getHoverFocusClassName(true)).toBe("transition-opacity opacity-40");
  });
});
