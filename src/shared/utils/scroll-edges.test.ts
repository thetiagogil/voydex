import { describe, expect, it } from "vitest";

import { readScrollEdges } from "./scroll-edges";

describe("readScrollEdges", () => {
  it("offers neither way when the content fits", () => {
    expect(
      readScrollEdges({ clientWidth: 800, scrollLeft: 0, scrollWidth: 800 }),
    ).toEqual({ canScrollEnd: false, canScrollStart: false });
  });

  it("offers only forward at the start", () => {
    expect(
      readScrollEdges({ clientWidth: 400, scrollLeft: 0, scrollWidth: 1200 }),
    ).toEqual({ canScrollEnd: true, canScrollStart: false });
  });

  it("offers both ways in the middle", () => {
    expect(
      readScrollEdges({ clientWidth: 400, scrollLeft: 300, scrollWidth: 1200 }),
    ).toEqual({ canScrollEnd: true, canScrollStart: true });
  });

  it("offers only back at the end, allowing a fractional position", () => {
    expect(
      readScrollEdges({
        clientWidth: 400,
        scrollLeft: 799.5,
        scrollWidth: 1200,
      }),
    ).toEqual({ canScrollEnd: false, canScrollStart: true });
  });
});
