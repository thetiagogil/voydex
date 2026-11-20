import { describe, expect, it } from "vitest";

import {
  getPlayCombinedPercent,
  getPlayProgressNote,
} from "./play-overall-progress";

describe("play overall progress", () => {
  it("averages the parts a Play tracks into one figure", () => {
    expect(
      getPlayCombinedPercent({
        items: [
          { label: "Story", percent: 50 },
          { label: "Pokédex", percent: 25 },
          { label: "Collectibles", percent: null },
        ],
        state: "available",
      }),
    ).toBe(38);
    expect(
      getPlayCombinedPercent({ items: [], state: "available" }),
    ).toBeNull();
    expect(
      getPlayCombinedPercent({
        items: [{ label: "Story", percent: null }],
        state: "available",
      }),
    ).toBeNull();
    expect(getPlayCombinedPercent({ state: "unavailable" })).toBeNull();
  });

  it("says why there is no overall figure", () => {
    expect(getPlayProgressNote({ state: "unavailable" })).toBe(
      "Progress unavailable",
    );
    expect(getPlayProgressNote({ items: [], state: "available" })).toBe(
      "Progress not recorded",
    );
    expect(
      getPlayProgressNote({
        items: [{ label: "Story", percent: null }],
        state: "available",
      }),
    ).toBe("Progress not tracked");
  });
});
