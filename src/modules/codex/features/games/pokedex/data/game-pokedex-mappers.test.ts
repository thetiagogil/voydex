import { describe, expect, it } from "vitest";

import { buildGamePokedexData } from "@/modules/codex/features/games/pokedex/data/game-pokedex-mappers";
import { gameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type { Game, Generation, Pokedex } from "@/modules/reference/types";

const buildData = (generationId: number) => {
  const game = {
    generation_id: generationId,
    id: generationId,
    name: `Game ${generationId}`,
    version_group_id: generationId,
  } as Game;
  const generation = {
    id: generationId,
    name: `Generation ${generationId}`,
    sort_order: generationId,
  } as Generation;

  return buildGamePokedexData({
    abilities: [],
    attributes: [],
    entries: [],
    forms: [],
    game,
    generations: [generation],
    pokedex: { id: 1, name: "Regional Pokédex" } as Pokedex,
    pokedexes: [],
    species: [],
    types: [],
  });
};

describe("buildGamePokedexData", () => {
  it("carries exact-game mechanic support into Codex game Pokédex data", () => {
    const generationOne = buildData(1);
    const generationThree = buildData(3);

    expect(generationOne.mechanics.support[gameMechanics.abilities]).toBe(
      "unsupported",
    );
    expect(generationThree.mechanics.support[gameMechanics.abilities]).toBe(
      "supported",
    );
  });
});
