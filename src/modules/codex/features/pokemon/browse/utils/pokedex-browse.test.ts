import { describe, expect, it } from "vitest";

import { sortPokedexPokemon } from "@/modules/codex/features/pokemon/browse/utils/pokedex-browse";
import type { PokedexPokemonBrowseCard } from "@/modules/reference/types";

const pokemon = (nationalNumber: number, name: string) =>
  ({ name, nationalNumber }) as PokedexPokemonBrowseCard;

describe("sortPokedexPokemon", () => {
  const list = [
    pokemon(1, "Bulbasaur"),
    pokemon(4, "Charmander"),
    pokemon(2, "Ivysaur"),
  ];

  it("keeps national order", () => {
    expect(sortPokedexPokemon(list, "national")).toBe(list);
  });

  it("sorts by name", () => {
    expect(sortPokedexPokemon(list, "name").map((entry) => entry.name)).toEqual(
      ["Bulbasaur", "Charmander", "Ivysaur"],
    );
    expect(
      sortPokedexPokemon(
        [pokemon(25, "Pikachu"), pokemon(6, "Charizard")],
        "name",
      ).map((entry) => entry.nationalNumber),
    ).toEqual([6, 25]);
  });
});
