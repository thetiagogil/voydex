import { describe, expect, it } from "vitest";

import { getFocusWrapTarget } from "./use-focus-wrap";

/* Document order as numbers: the title at 0, then four controls. */
const tabbables = [1, 2, 3, 4];
const wrap = (active: number | null, backwards: boolean, list = tabbables) =>
  getFocusWrapTarget({
    active,
    backwards,
    isBefore: (left, right) => left < right,
    tabbables: list,
  });

describe("getFocusWrapTarget", () => {
  it("wraps forward from the last control to the first", () => {
    expect(wrap(4, false)).toBe(1);
  });

  it("wraps backward from the first control to the last", () => {
    expect(wrap(1, true)).toBe(4);
  });

  it("wraps backward from the title, which holds focus on open", () => {
    expect(wrap(0, true)).toBe(4);
  });

  it("leaves the browser to move between the controls in between", () => {
    expect(wrap(2, false)).toBeNull();
    expect(wrap(4, true)).toBeNull();
    /* Tab from the title reaches the first control on its own. */
    expect(wrap(0, false)).toBeNull();
  });

  it("does nothing with nothing to focus", () => {
    expect(wrap(4, false, [])).toBeNull();
    expect(wrap(null, false)).toBeNull();
  });
});
