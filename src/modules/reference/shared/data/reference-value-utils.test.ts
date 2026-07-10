import { describe, expect, it } from "vitest";

import {
  normalizeSearchQuery,
  normalizeSlug,
  resolveReferenceFilter,
} from "./reference-value-utils";

const rows = [
  { id: 1, slug: "generation-1" },
  { id: 2, slug: "generation-2" },
];

describe("reference value utilities", () => {
  it("normalizes free-text search without changing its casing", () => {
    expect(normalizeSearchQuery("  Pikachu  ")).toBe("Pikachu");
  });

  it("normalizes slugs to trimmed lowercase values", () => {
    expect(normalizeSlug("  Generation-2  ")).toBe("generation-2");
  });

  it("resolves reference filters by slug or numeric id", () => {
    expect(resolveReferenceFilter(rows, "generation-2")).toEqual(rows[1]);
    expect(resolveReferenceFilter(rows, "1")).toEqual(rows[0]);
  });
});
