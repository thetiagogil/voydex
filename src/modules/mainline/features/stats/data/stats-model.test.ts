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

describe("buildStatsModel types", () => {
  const attribute = (
    formId: number,
    primary: number,
    secondary: number | null,
  ) =>
    ({
      form_id: formId,
      generation_start_id: 1,
      primary_type_id: primary,
      secondary_type_id: secondary,
      species_id: formId,
    }) as TrainerPokemonRows["attributes"][number];
  const member = (playId: string | null, formId: number) =>
    ({
      form_id: formId,
      play_id: playId,
    }) as TrainerPokemonRows["roster"][number];

  it("counts a type's Pokémon, a dual type for both, and the Plays they were in", () => {
    const { types } = buildStatsModel(
      {
        ...rows,
        attributes: [attribute(1, 10, 11), attribute(2, 10, null)],
        /* The last row has no Play: a Pokémon counted, not a Play. */
        roster: [
          member("a", 1),
          member("a", 2),
          member("b", 2),
          member(null, 2),
        ],
        types: [
          { id: 10, name: "Water", slug: "water" },
          { id: 11, name: "Flying", slug: "flying" },
          { id: 12, name: "Fire", slug: "fire" },
        ] as TrainerPokemonRows["types"],
      },
      [],
    );

    expect(types).toEqual([
      { count: 4, name: "Water", playCount: 2, slug: "water" },
      { count: 1, name: "Flying", playCount: 1, slug: "flying" },
      { count: 0, name: "Fire", playCount: 0, slug: "fire" },
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
  const type = (slug: string, count: number, playCount = 2) => ({
    count,
    name: slug,
    playCount,
    slug,
  });
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

  it("asks a specialist's type for six Pokémon, across two Plays, half again the next type", () => {
    const kind = (types: ReturnType<typeof type>[]) =>
      getTrainerTitle({
        mostPicked: null,
        playCount: 2,
        regions: [region("kanto", 2)],
        types,
      }).kind;

    expect(kind([type("Fire", 6), type("Water", 4)])).toBe("specialist");
    expect(kind([type("Fire", 6)])).toBe("specialist");
    /* One early Charmander, or a first team, is not a specialist. */
    expect(kind([type("Fire", 1, 1)])).toBe("trainer");
    expect(kind([type("Fire", 5), type("Water", 1)])).toBe("trainer");
    expect(kind([type("Fire", 8, 1), type("Water", 1)])).toBe("trainer");
    /* Leading by two is no longer enough without half again as many. */
    expect(kind([type("Fire", 7), type("Water", 5)])).toBe("trainer");
    expect(kind([type("Fire", 9), type("Water", 7)])).toBe("trainer");
  });

  it("puts a clear specialist ahead of a region hopper", () => {
    const title = getTrainerTitle({
      mostPicked: null,
      playCount: 4,
      regions: [region("kanto", 2), region("johto", 1), region("hoenn", 1)],
      types: [type("Water", 6, 3), type("Flying", 2)],
    });

    expect(title.title).toBe("Water Specialist");
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
      types: [type("Flying", 6), type("Electric", 1)],
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
