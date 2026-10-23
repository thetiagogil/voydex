import { describe, expect, it } from "vitest";

import { getMoveCategory } from "./move-categories";

describe("getMoveCategory", () => {
  it("reads the stored damage class", () => {
    expect(getMoveCategory("physical")).toEqual({
      label: "Physical",
      slug: "physical",
    });
    expect(getMoveCategory("Status")).toEqual({
      label: "Status",
      slug: "status",
    });
  });

  it("has none for an unknown or missing class", () => {
    expect(getMoveCategory(null)).toBeNull();
    expect(getMoveCategory("shadow")).toBeNull();
  });
});
