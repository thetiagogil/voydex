import { describe, expect, it } from "vitest";

import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import type { TrainerPokemonRows } from "@/modules/mainline/shared/server/trainer-pokemon-reader";

import { buildStatsModel, getTrainerTitle } from "./stats-model";

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
  const gallade = entry(475, "Gallade", ["c"], "2026-06-01");
  const kirlia = entry(281, "Kirlia", ["a", "b"], "2026-05-01");
  const gardevoir = entry(282, "Gardevoir", ["b", "d"], "2026-01-01");

  it("leads a family with the member in the most Plays and names it after it", () => {
    const [friend] = buildStatsModel(rows, [
      gallade,
      kirlia,
      gardevoir,
    ]).friends;

    expect(friend?.name).toBe("Kirlia family");
    expect(friend?.memberNames).toBe("Kirlia, Gardevoir and Gallade");
    expect(friend?.entry).toBe(kirlia);
    expect(friend?.family).toEqual([kirlia, gardevoir, gallade]);
    expect(friend?.playCount).toBe(4);
  });

  it("highlights one species, the one in the most Plays", () => {
    const { highlight } = buildStatsModel(rows, [gallade, kirlia, gardevoir]);

    expect(highlight.kind).toBe("favourite-pokemon");
    expect(
      highlight.kind === "favourite-pokemon" ? highlight.entry : null,
    ).toBe(kirlia);
  });
});

describe("getTrainerTitle", () => {
  const region = (slug: string, plays: number) => ({
    coverImageUrl: null,
    gameName: null,
    gameSlug: null,
    name: slug,
    playLabels: Array.from({ length: plays }, () => "Play"),
    slug,
  });
  const type = (slug: string, count: number) => ({ count, name: slug, slug });

  it("makes a specialist of a clear favourite type", () => {
    expect(
      getTrainerTitle({
        playCount: 4,
        regions: [region("kanto", 4)],
        types: [type("Fire", 9), type("Water", 3)],
      }).title,
    ).toBe("Fire Specialist");
  });

  it("makes a region hopper of three regions or more, else a trainer", () => {
    const types = [type("Fire", 5), type("Water", 5)];
    const regions = [
      region("kanto", 1),
      region("johto", 1),
      region("hoenn", 0),
    ];

    expect(getTrainerTitle({ playCount: 2, regions, types })).toEqual({
      reason: "2 Plays and counting.",
      title: "Pokémon Trainer",
      typeSlug: null,
    });
    expect(
      getTrainerTitle({
        playCount: 3,
        regions: [...regions.slice(0, 2), region("hoenn", 1)],
        types,
      }),
    ).toEqual({
      reason: "You've travelled every region, all 3 of them.",
      title: "Region Hopper",
      typeSlug: null,
    });
  });
});
