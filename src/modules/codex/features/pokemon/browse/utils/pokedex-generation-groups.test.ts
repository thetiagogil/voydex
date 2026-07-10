import { describe, expect, it } from "vitest";

import { groupPokemonByGeneration } from "@/modules/codex/features/pokemon/browse/utils/pokedex-generation-groups";
import type {
  Generation,
  PokedexPokemonBrowseCard,
} from "@/modules/reference/types";

const buildGeneration = (slug: string, name: string) => {
  return { name, slug } as Generation;
};

const buildPokemon = (
  id: number,
  generation: { name: string; slug: string } | null,
) => {
  return {
    id,
    introducedGeneration: generation,
  } as PokedexPokemonBrowseCard;
};

describe("groupPokemonByGeneration", () => {
  it("keeps known generations ordered and appends unknown groups", () => {
    const groups = groupPokemonByGeneration(
      [
        buildPokemon(2, { name: "Generation II", slug: "gen-ii" }),
        buildPokemon(1, { name: "Generation I", slug: "gen-i" }),
        buildPokemon(3, null),
      ],
      [buildGeneration("gen-i", "Generation I")],
    );

    expect(groups.map((group) => group.key)).toEqual([
      "gen-i",
      "gen-ii",
      "unknown",
    ]);
    expect(groups[0]?.pokemon.map((pokemon) => pokemon.id)).toEqual([1]);
    expect(groups[1]?.label).toBe("Generation II");
    expect(groups[2]?.pokemon.map((pokemon) => pokemon.id)).toEqual([3]);
  });
});
