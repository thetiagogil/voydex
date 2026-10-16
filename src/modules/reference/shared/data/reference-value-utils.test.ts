import { describe, expect, it } from "vitest";

import { normalizeSearchQuery, normalizeSlug } from "./reference-value-utils";

describe("reference value utilities", () => {
  it("normalizes free-text search without changing its casing", () => {
    expect(normalizeSearchQuery("  Pikachu  ")).toBe("Pikachu");
  });

  it("normalizes slugs to trimmed lowercase values", () => {
    expect(normalizeSlug("  Generation-2  ")).toBe("generation-2");
  });
});
