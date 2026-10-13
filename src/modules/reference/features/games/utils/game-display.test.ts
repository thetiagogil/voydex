import { describe, expect, it } from "vitest";

import {
  getGameInitials,
  getGameShortName,
  getGenerationNumeral,
} from "./game-display";

describe("game display", () => {
  it("removes the Pokemon prefix before building initials", () => {
    expect(getGameInitials("Pokémon Brilliant Diamond")).toBe("BD");
  });

  it("uses the first two words when a game has several words", () => {
    expect(getGameInitials("Legends: Z-A")).toBe("LZ");
  });
});

describe("getGameShortName", () => {
  it("drops the Pokémon prefix", () => {
    expect(getGameShortName("Pokémon Sword")).toBe("Sword");
    expect(getGameShortName("Pokemon Legends: Arceus")).toBe("Legends: Arceus");
  });

  it("keeps names without the prefix", () => {
    expect(getGameShortName("Let's Go, Pikachu!")).toBe("Let's Go, Pikachu!");
  });
});

describe("getGenerationNumeral", () => {
  it("keeps the numeral of a generation's name", () => {
    expect(getGenerationNumeral("Generation VIII")).toBe("VIII");
  });
});
