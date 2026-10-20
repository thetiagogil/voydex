import { describe, expect, it } from "vitest";

import { getGameTypes } from "./game-types";

const types = [
  { id: 3, introducedGenerationNumber: 1, name: "Water", slug: "water" },
  { id: 16, introducedGenerationNumber: 2, name: "Dark", slug: "dark" },
  { id: 18, introducedGenerationNumber: 6, name: "Fairy", slug: "fairy" },
];

describe("getGameTypes", () => {
  it("leaves out types a game's generation hasn't brought in yet", () => {
    expect(getGameTypes(types, 1).map((type) => type.name)).toEqual(["Water"]);
    expect(getGameTypes(types, 5).map((type) => type.name)).toEqual([
      "Water",
      "Dark",
    ]);
  });

  it("offers Fairy from Generation VI on", () => {
    expect(getGameTypes(types, 6)).toEqual([
      { id: 3, name: "Water", slug: "water" },
      { id: 16, name: "Dark", slug: "dark" },
      { id: 18, name: "Fairy", slug: "fairy" },
    ]);
  });
});
