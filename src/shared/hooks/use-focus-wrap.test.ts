import { describe, expect, it } from "vitest";

import { getFocusWrapTarget } from "./use-focus-wrap";

const tabbables = ["back", "moves", "edit", "close"];

describe("getFocusWrapTarget", () => {
  it("wraps forward from the last control to the first", () => {
    expect(
      getFocusWrapTarget({ active: "close", backwards: false, tabbables }),
    ).toBe("back");
  });

  it("wraps backward from the first control to the last", () => {
    expect(
      getFocusWrapTarget({ active: "back", backwards: true, tabbables }),
    ).toBe("close");
  });

  it("leaves the browser to move between the controls in between", () => {
    expect(
      getFocusWrapTarget({ active: "moves", backwards: false, tabbables }),
    ).toBeNull();
    expect(
      getFocusWrapTarget({ active: "close", backwards: true, tabbables }),
    ).toBeNull();
    /* The title holds focus on open; Tab goes on from it as usual. */
    expect(
      getFocusWrapTarget({ active: "title", backwards: false, tabbables }),
    ).toBeNull();
  });

  it("does nothing with nothing to focus", () => {
    expect(
      getFocusWrapTarget({ active: "close", backwards: false, tabbables: [] }),
    ).toBeNull();
    expect(
      getFocusWrapTarget({ active: null, backwards: false, tabbables }),
    ).toBeNull();
  });
});
