import { describe, expect, it } from "vitest";

import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import type { TrainerPokemonRows } from "@/modules/mainline/shared/server/trainer-pokemon-reader";

import {
  buildStatsModel,
  getTrainerTitle,
  getTrainerTitleReason,
  type StatsPhrase,
} from "./stats-model";

const rows: TrainerPokemonRows = {
  attributes: [],
  evolutions: [],
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
  momentIdByPlayId: {},
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
  /* In the most Plays, so it is the most picked and Kirlia's family stays. */
  const pikachu = {
    ...entry(25, "Pikachu", ["a", "b", "c"], "2026-02-01"),
    evolutionFamilyId: 10,
  };

  it("leads a family with the member in the most Plays and names it after it", () => {
    const [friend] = buildStatsModel(rows, [
      gallade,
      kirlia,
      gardevoir,
      pikachu,
    ]).friends;

    expect(friend?.name).toBe("Kirlia family");
    expect(friend?.memberNames).toBe("Kirlia, Gardevoir and Gallade");
    expect(friend?.entry).toBe(kirlia);
    expect(friend?.family).toEqual([kirlia, gardevoir, gallade]);
    expect(friend?.playCount).toBe(4);
  });

  it("picks one species, the one in the most Plays, and leaves its family out of Old friends", () => {
    const stats = buildStatsModel(rows, [gallade, kirlia, gardevoir, pikachu]);

    expect(stats.mostPicked?.entry).toBe(pikachu);
    expect(stats.friends.map((friend) => friend.name)).toEqual([
      "Kirlia family",
    ]);
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
  const read = (phrase: StatsPhrase) =>
    phrase.map(({ strong, text }) => (strong ? `**${text}**` : text)).join("");
  const flying = { name: "Flying", slug: "Flying" };
  const typed = (pokemon: TrainerPokemonEntry) => ({
    ...pokemon,
    evolutionFamilyId: pokemon.speciesId,
    types: [flying],
  });

  it("makes a specialist of a clear favourite type, beating the next type by a margin", () => {
    const title = getTrainerTitle({
      mostPicked: null,
      playCount: 4,
      regions: [region("kanto", 4)],
      types: [type("Fire", 9), type("Water", 3), type("Grass", 0)],
    });

    expect(title.title).toBe("Fire Specialist");
    expect(read(getTrainerTitleReason(title))).toBe(
      "**9** of your Pokémon are Fire types, **6 more** than Water.",
    );
  });

  it("pictures a specialist with up to three top Pokémon of the type, never the most picked one", () => {
    const pidgeot = typed(entry(18, "Pidgeot", ["a", "b", "c"], "2026-03-01"));
    const staraptor = typed(entry(398, "Staraptor", ["a", "b"], "2026-04-01"));
    const noctowl = typed(entry(164, "Noctowl", ["a"], "2026-06-01"));
    const fearow = typed(entry(22, "Fearow", ["b"], "2026-05-01"));
    const swellow = typed(entry(277, "Swellow", ["c"], "2026-01-01"));
    const pikachu = entry(25, "Pikachu", ["a"], "2026-05-01");
    const stats = {
      mostPicked: { entry: pidgeot, family: [] },
      playCount: 3,
      regions: [region("kanto", 3)],
      types: [type("Flying", 5), type("Electric", 1)],
    };

    const title = getTrainerTitle(stats, [
      pidgeot,
      swellow,
      fearow,
      staraptor,
      noctowl,
      pikachu,
    ]);

    expect(
      title.kind === "specialist" &&
        title.pokemon.map((pokemon) => pokemon.entry),
    ).toEqual([staraptor, noctowl, fearow]);
    expect(getTrainerTitle(stats, [pidgeot, pikachu])).toMatchObject({
      kind: "specialist",
      pokemon: [],
    });
  });

  it("makes a region hopper of three regions or more", () => {
    const types = [type("Fire", 5), type("Water", 5)];
    const regions = [
      region("kanto", 2),
      region("johto", 1),
      region("hoenn", 1),
    ];

    const every = getTrainerTitle({
      mostPicked: null,
      playCount: 4,
      regions,
      types,
    });
    const some = getTrainerTitle({
      mostPicked: null,
      playCount: 4,
      regions: [...regions, region("sinnoh", 0)],
      types,
    });

    expect(every.title).toBe("Region Hopper");
    expect(read(getTrainerTitleReason(every))).toBe(
      "You've played in **all 3 regions**, across **4 Plays**.",
    );
    expect(read(getTrainerTitleReason(some))).toBe(
      "You've played in **3 of the 4 regions**, across **4 Plays**.",
    );
  });

  it("calls everyone else a trainer, with how far they are from Region Hopper", () => {
    const types = [type("Fire", 5), type("Water", 5)];
    const one = getTrainerTitle({
      mostPicked: null,
      playCount: 1,
      regions: [region("kanto", 1), region("johto", 0)],
      types,
    });
    const two = getTrainerTitle({
      mostPicked: null,
      playCount: 3,
      regions: [region("kanto", 2), region("johto", 1)],
      types,
    });

    expect(one).toEqual({
      kind: "trainer",
      playCount: 1,
      regionsToHopper: 2,
      title: "Pokémon Trainer",
    });
    expect(read(getTrainerTitleReason(one))).toBe(
      "**1 Play** and counting. Play in **2 more regions** to become a Region Hopper.",
    );
    expect(read(getTrainerTitleReason(two))).toBe(
      "**3 Plays** and counting. Play in **1 more region** to become a Region Hopper.",
    );
  });
});
