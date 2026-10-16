import { describe, expect, it } from "vitest";

import {
  formatNameList,
  getPokedexShortName,
  getVersionGroupShortName,
  getVersionGroupTitle,
} from "@/modules/codex/shared/utils/game-names";

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

describe("version group names", () => {
  it("reads a pair as one name", () => {
    expect(getVersionGroupShortName("Sword / Shield")).toBe("Sword and Shield");
    expect(getVersionGroupTitle("Sword / Shield")).toBe(
      "Pokémon Sword and Shield",
    );
  });

  it("keeps a single release whole", () => {
    expect(getVersionGroupShortName("Pokémon Legends: Arceus")).toBe(
      "Legends: Arceus",
    );
    expect(getVersionGroupTitle("Pokémon Legends: Arceus")).toBe(
      "Pokémon Legends: Arceus",
    );
    expect(getVersionGroupShortName("Emerald")).toBe("Emerald");
  });
});
