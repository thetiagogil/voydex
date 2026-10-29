import { describe, expect, it } from "vitest";

import { toSearchFiltersPreference } from "./search-filters-preference";

describe("toSearchFiltersPreference", () => {
  it("reads the saved switch as Always open", () => {
    expect(toSearchFiltersPreference(true)).toBe("open");
  });

  it("stays Folded when off or not saved yet", () => {
    expect(toSearchFiltersPreference(false)).toBe("folded");
    expect(toSearchFiltersPreference(null)).toBe("folded");
    expect(toSearchFiltersPreference(undefined)).toBe("folded");
  });
});
