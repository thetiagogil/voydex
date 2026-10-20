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
  it("counts each id's Play links", () => {
    const usage = countLibraryUsage(["a", "a", "b"]);

    expect(usage("a")).toEqual({ playCount: 2 });
    expect(usage("c")).toEqual({ playCount: 0 });
  });
});

describe("getLibraryUsageLabel", () => {
  it("names the Plays that use it, or says none do", () => {
    expect(getLibraryUsageLabel({ playCount: 2 })).toBe("In 2 Plays");
    expect(getLibraryUsageLabel({ playCount: 0 })).toBe("Not used yet");
  });
});

describe("getLibraryDeleteNote", () => {
  it("says what deleting leaves", () => {
    expect(getLibraryDeleteNote({ playCount: 1 })).toBe("It leaves 1 Play.");
    expect(getLibraryDeleteNote({ playCount: 0 })).toBeNull();
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
    { kind: custom, name: "No items", playCount: 1 },
    { kind: reuse, name: "Dupes clause", playCount: 5 },
    { kind: custom, name: "Level caps", playCount: 0 },
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
