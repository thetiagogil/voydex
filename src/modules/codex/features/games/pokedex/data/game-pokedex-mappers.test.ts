import { describe, expect, it } from "vitest";

import { buildGamePokedexData } from "@/modules/codex/features/games/pokedex/data/game-pokedex-mappers";
import { gameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type {
  Game,
  Generation,
  Pokedex,
  VersionGroup,
} from "@/modules/reference/types";

const buildData = (generationId: number) => {
  const game = {
    generation_id: generationId,
    id: generationId,
    name: `Game ${generationId}`,
    version_group_id: generationId,
  } as Game;
  const versionGroup = {
    generation_id: generationId,
    id: generationId,
    sort_order: 1,
  } as VersionGroup;
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
    games: [game],
    generations: [generation],
    pokedex: { id: 1, name: "Regional Pokédex" } as Pokedex,
    pokedexes: [],
    pokemonCountByPokedexId: new Map(),
    species: [],
    types: [],
    versionGroup,
    versionGroupById: new Map([[versionGroup.id, versionGroup]]),
  });
};

describe("buildGamePokedexData", () => {
  it("carries the version group's mechanic support into Codex Pokédex data", () => {
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
