import { describe, expect, it } from "vitest";

import {
  groupPokemonByGeneration,
  groupPokemonByType,
  takePokemonFromGroups,
} from "@/modules/codex/features/pokemon/browse/utils/pokedex-generation-groups";
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

describe("groupPokemonByType", () => {
  it("groups by primary type in chart order, untyped last", () => {
    const withType = (id: number, slug: string | null) =>
      ({
        id,
        primaryType: slug ? { name: slug, slug } : null,
      }) as PokedexPokemonBrowseCard;
    const groups = groupPokemonByType(
      [
        withType(6, "fire"),
        withType(1, "grass"),
        withType(4, "fire"),
        withType(9, null),
      ],
      [
        { name: "Grass", slug: "grass" },
        { name: "Fire", slug: "fire" },
        { name: "Water", slug: "water" },
      ],
    );

    expect(
      groups.map((group) => [group.label, group.pokemon.map((p) => p.id)]),
    ).toEqual([
      ["Grass", [1]],
      ["Fire", [6, 4]],
      ["Unknown type", [9]],
    ]);
  });
});

describe("takePokemonFromGroups", () => {
  it("fills each range before starting the next", () => {
    const group = (key: string, ids: number[]) => ({
      key,
      label: key,
      pokemon: ids.map((id) => buildPokemon(id, null)),
    });
    const taken = takePokemonFromGroups(
      [
        group("normal", [16, 17, 18]),
        group("fire", [4, 5]),
        group("water", [7]),
      ],
      4,
    );

    expect(
      taken.map((range) => [
        range.key,
        range.pokemon.map((pokemon) => pokemon.id),
      ]),
    ).toEqual([
      ["normal", [16, 17, 18]],
      ["fire", [4]],
    ]);
  });
});
