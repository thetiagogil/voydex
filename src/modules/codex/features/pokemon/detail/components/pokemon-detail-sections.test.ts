import { describe, expect, it } from "vitest";

import {
  getPokemonDetailSectionLinks,
  pokemonDetailSections,
} from "./pokemon-detail-sections";

const at = (top: number, index: number) => ({
  ...pokemonDetailSections[index],
  top,
});

describe("getPokemonDetailSectionLinks", () => {
  it("gives sections side by side one link", () => {
    expect(
      getPokemonDetailSectionLinks([
        at(0, 0),
        at(0, 1),
        at(0, 2),
        at(400, 3),
        at(400, 4),
        at(800, 5),
      ]),
    ).toEqual([
      {
        ids: ["abilities", "training", "breeding"],
        label: "Abilities, training & breeding",
      },
      { ids: ["base-stats", "type-matchups"], label: "Base stats & matchups" },
      { ids: ["evolution"], label: "Evolution" },
    ]);
  });

  it("keeps stacked sections apart", () => {
    expect(
      getPokemonDetailSectionLinks([at(400, 3), at(800, 4)]).map(
        (link) => link.label,
      ),
    ).toEqual(["Base stats", "Matchups"]);
  });
});
