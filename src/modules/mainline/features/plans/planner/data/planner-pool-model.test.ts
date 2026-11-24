import { describe, expect, it } from "vitest";

import { getPoolTileReadout } from "./planner-pool-model";

describe("getPoolTileReadout", () => {
  it("reads the number with one mark, then the types", () => {
    expect(getPoolTileReadout(25, ["Electric"])).toBe(", #025, Electric");
    expect(getPoolTileReadout(131, ["Water", "Ice"])).toBe(
      ", #131, Water and Ice",
    );
  });
});
