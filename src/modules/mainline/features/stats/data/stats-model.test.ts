import { describe, expect, it } from "vitest";

import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import type { TrainerPokemonRows } from "@/modules/mainline/shared/server/trainer-pokemon-reader";

import { buildStatsModel } from "./stats-model";

const rows: TrainerPokemonRows = {
  attributes: [],
  forms: [],
  games: [],
  plays: [],
  regions: [],
  roster: [],
  types: [],
  uses: [],
};

const entry = (
  speciesId: number,
  name: string,
  playIds: string[],
  lastUsedAt: string,
): TrainerPokemonEntry => ({
  evolutionFamilyId: 7,
  firstUsedAt: null,
  gameNames: [],
  imageUrl: `/art/${speciesId}.png`,
  lastUsedAt,
  members: [],
  name,
  nationalNumber: speciesId,
  onTeamNow: false,
  playIds,
  plays: [],
  shiny: false,
  speciesId,
  speciesSlug: name.toLowerCase(),
  types: [],
});

describe("buildStatsModel old friends", () => {
  it("names a family by every member used, led by the most recent", () => {
    const gallade = entry(475, "Gallade", ["c"], "2026-03-01");
    const kirlia = entry(281, "Kirlia", ["a", "b"], "2026-05-01");
    const gardevoir = entry(282, "Gardevoir", ["b", "d"], "2026-01-01");

    const [friend] = buildStatsModel(rows, [
      gallade,
      kirlia,
      gardevoir,
    ]).friends;

    expect(friend?.name).toBe("Kirlia, Gardevoir and Gallade");
    expect(friend?.entry).toBe(kirlia);
    expect(friend?.family).toEqual([kirlia, gardevoir, gallade]);
    expect(friend?.imageUrls).toEqual([
      "/art/281.png",
      "/art/282.png",
      "/art/475.png",
    ]);
    expect(friend?.playCount).toBe(4);
  });
});
