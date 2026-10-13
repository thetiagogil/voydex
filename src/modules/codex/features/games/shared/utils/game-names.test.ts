import { describe, expect, it } from "vitest";

import {
  formatNameList,
  getGameShortName,
  getPokedexShortName,
} from "@/modules/codex/features/games/shared/utils/game-names";

describe("getGameShortName", () => {
  it("drops the Pokémon prefix", () => {
    expect(getGameShortName("Pokémon Sword")).toBe("Sword");
    expect(getGameShortName("Pokemon Legends: Arceus")).toBe("Legends: Arceus");
  });

  it("keeps names without the prefix", () => {
    expect(getGameShortName("Let's Go, Pikachu!")).toBe("Let's Go, Pikachu!");
  });
});

describe("formatNameList", () => {
  it("joins names in plain English", () => {
    expect(formatNameList(["Nintendo Switch"])).toBe("Nintendo Switch");
    expect(formatNameList(["Nintendo Switch", "Nintendo Switch 2"])).toBe(
      "Nintendo Switch and Nintendo Switch 2",
    );
  });
});

describe("getPokedexShortName", () => {
  it("drops the Pokédex suffix", () => {
    expect(getPokedexShortName("Galar Pokédex")).toBe("Galar");
    expect(getPokedexShortName("Central Kalos Pokedex")).toBe("Central Kalos");
  });
});
