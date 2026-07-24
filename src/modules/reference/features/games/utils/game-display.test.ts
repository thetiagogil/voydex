import { describe, expect, it } from "vitest";

import { getGameInitials } from "./game-display";

describe("game display", () => {
  it("removes the Pokemon prefix before building initials", () => {
    expect(getGameInitials("Pokémon Brilliant Diamond")).toBe("BD");
  });

  it("uses the first two words when a game has several words", () => {
    expect(getGameInitials("Legends: Z-A")).toBe("LZ");
  });
});
