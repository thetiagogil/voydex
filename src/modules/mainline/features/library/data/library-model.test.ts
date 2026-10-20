import { describe, expect, it } from "vitest";

import {
  countLibraryUsage,
  getLibraryDeleteNote,
  getLibraryUsageLabel,
  parseLibraryTab,
} from "./library-model";

describe("countLibraryUsage", () => {
  it("counts each id's Play and Plan links", () => {
    const usage = countLibraryUsage({
      planIds: ["a"],
      playIds: ["a", "a", "b"],
    });

    expect(usage("a")).toEqual({ planCount: 1, playCount: 2 });
    expect(usage("b")).toEqual({ planCount: 0, playCount: 1 });
    expect(usage("c")).toEqual({ planCount: 0, playCount: 0 });
  });
});

describe("getLibraryUsageLabel", () => {
  it("names the Plays and Plans that use it", () => {
    expect(getLibraryUsageLabel({ planCount: 1, playCount: 2 })).toBe(
      "In 2 Plays · 1 Plan",
    );
    expect(getLibraryUsageLabel({ planCount: 3, playCount: 0 })).toBe(
      "In 3 Plans",
    );
  });

  it("says when nothing uses it", () => {
    expect(getLibraryUsageLabel({ planCount: 0, playCount: 0 })).toBe(
      "Not used yet",
    );
  });
});

describe("getLibraryDeleteNote", () => {
  it("says what deleting leaves", () => {
    expect(getLibraryDeleteNote({ planCount: 1, playCount: 1 })).toBe(
      "It leaves 1 Play and 1 Plan.",
    );
    expect(getLibraryDeleteNote({ planCount: 0, playCount: 0 })).toBeNull();
  });
});

describe("parseLibraryTab", () => {
  it("falls back to Rules", () => {
    expect(parseLibraryTab("tags")).toBe("tags");
    expect(parseLibraryTab("sets")).toBe("rules");
    expect(parseLibraryTab(undefined)).toBe("rules");
  });
});
