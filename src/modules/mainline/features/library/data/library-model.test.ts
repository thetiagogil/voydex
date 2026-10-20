import { describe, expect, it } from "vitest";

import {
  countLibraryUsage,
  defaultLibraryFilters,
  filterAndSortLibrary,
  hasActiveLibraryFilters,
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

describe("filterAndSortLibrary", () => {
  const custom = { name: "Custom", slug: "custom" };
  const reuse = { name: "Pokémon Reuse", slug: "reuse" };
  const rules = [
    { kind: custom, name: "No items", planCount: 0, playCount: 1 },
    { kind: reuse, name: "Dupes clause", planCount: 2, playCount: 3 },
    { kind: custom, name: "Level caps", planCount: 0, playCount: 0 },
  ];

  it("orders by name, or by use with name breaking ties", () => {
    expect(
      filterAndSortLibrary(rules, defaultLibraryFilters).map(
        ({ name }) => name,
      ),
    ).toEqual(["Dupes clause", "Level caps", "No items"]);
    expect(
      filterAndSortLibrary(rules, {
        ...defaultLibraryFilters,
        sort: "used",
      }).map(({ name }) => name),
    ).toEqual(["Dupes clause", "No items", "Level caps"]);
  });

  it("searches names and kinds without minding accents, and narrows by kind", () => {
    expect(
      filterAndSortLibrary(rules, {
        ...defaultLibraryFilters,
        query: "pokemon",
      }).map(({ name }) => name),
    ).toEqual(["Dupes clause"]);
    expect(
      filterAndSortLibrary(rules, {
        ...defaultLibraryFilters,
        kind: "custom",
      }).map(({ name }) => name),
    ).toEqual(["Level caps", "No items"]);
  });

  it("counts only search and kind as filters", () => {
    expect(
      hasActiveLibraryFilters({ ...defaultLibraryFilters, sort: "used" }),
    ).toBe(false);
    expect(
      hasActiveLibraryFilters({ ...defaultLibraryFilters, query: " x " }),
    ).toBe(true);
  });
});
