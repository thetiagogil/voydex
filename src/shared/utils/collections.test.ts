import { describe, expect, it } from "vitest";

import { byId, uniqueNumberIds } from "./collections";
import { isUuid } from "./identifiers";

describe("shared collection utilities", () => {
  it("indexes rows by their numeric id", () => {
    const rows = [
      { id: 7, name: "Bulbasaur" },
      { id: 25, name: "Pikachu" },
    ];

    expect(byId(rows).get(25)).toEqual({ id: 25, name: "Pikachu" });
  });

  it("keeps unique numeric ids and removes null values", () => {
    expect(uniqueNumberIds([7, null, 25, 7, 0])).toEqual([7, 25, 0]);
  });
});

describe("shared identifier utilities", () => {
  it("accepts a complete UUID regardless of letter casing", () => {
    expect(isUuid("A0EBC999-9C0B-4EF8-BB6D-6BB9BD380A11")).toBe(true);
  });

  it("rejects partial or malformed UUID values", () => {
    expect(isUuid("a0ebc999-9c0b-4ef8-bb6d")).toBe(false);
    expect(isUuid("not-a-uuid")).toBe(false);
  });
});
