import { describe, expect, it } from "vitest";

import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import type {
  TrainerPokemonRows,
  TrainerPokemonUse,
} from "@/modules/mainline/shared/server/trainer-pokemon-reader";

import {
  buildTrainerPokemonEntries,
  countTrainerSpeciesPlays,
  getEvolvedFromByPlayPokemon,
  getEarlierFamilyNames,
  getTrainerFamilyEntries,
  splitTrainerSpeciesPlays,
  type TrainerPlay,
  type TrainerPokemonEntry,
  type TrainerPokemonMember,
} from "./trainer-pokemon-model";

const entry = (
  speciesId: number,
  evolutionFamilyId: number | null,
): TrainerPokemonEntry => ({
  evolutionFamilyId,
  firstUsedAt: null,
  gameNames: [],
  imageUrl: null,
  lastUsedAt: null,
  members: [],
  momentIdByPlayId: {},
  name: `Pokémon ${speciesId}`,
  nationalNumber: speciesId,
  onTeamNow: false,
  playIds: [],
  plays: [],
  shiny: false,
  speciesId,
  speciesSlug: `pokemon-${speciesId}`,
  types: [],
});

describe("getTrainerFamilyEntries", () => {
  const charmander = entry(4, 2);
  const charmeleon = entry(5, 2);
  const charizard = entry(6, 2);
  const pikachu = entry(25, 10);
  const unknown = entry(999, null);
  const entries = [charizard, pikachu, charmeleon, charmander, unknown];

  it("finds the rest of the family in Pokédex order", () => {
    expect(getTrainerFamilyEntries(entries, charmeleon)).toEqual([
      charmander,
      charizard,
    ]);
  });

  it("finds nobody for a lone species or an unknown family", () => {
    expect(getTrainerFamilyEntries(entries, pikachu)).toEqual([]);
    expect(getTrainerFamilyEntries(entries, unknown)).toEqual([]);
  });
});

const play = (id: string): TrainerPlay => ({
  gameName: "Sword",
  gameSlug: "sword",
  id,
  label: `Sword · ${id}`,
  name: id,
  statusName: "Playing",
  statusSlug: "playing",
});

const member = (
  id: string,
  playId: string,
  speciesName: string,
  isCurrent: boolean,
): TrainerPokemonMember => ({
  evolvedFrom: [],
  id,
  imageUrl: null,
  isCurrent,
  isShiny: false,
  level: 30,
  name: speciesName,
  play: play(playId),
  speciesName,
  typeSlug: null,
});

describe("splitTrainerSpeciesPlays", () => {
  const hrefs = {
    getMemberHref: (one: TrainerPokemonMember) => `/member/${one.id}`,
    getMomentHref: (one: TrainerPlay, eventId: string) =>
      `/history/${one.id}#moment-${eventId}`,
    getPlayHref: (one: TrainerPlay) => `/history/${one.id}`,
  };
  const charmander: TrainerPokemonEntry = {
    ...entry(4, 2),
    name: "Charmander",
    members: [
      member("now", "A Play", "Charmander", true),
      member("retired", "B Play", "Charmander", false),
    ],
    momentIdByPlayId: { "D Play": "evolved-d" },
    plays: [play("A Play"), play("B Play"), play("C Play"), play("D Play")],
  };
  const charizard: TrainerPokemonEntry = {
    ...entry(6, 2),
    name: "Charizard",
    members: [member("zard", "C Play", "Charizard", true)],
    plays: [play("C Play")],
  };

  it("keeps the Plays it is on now apart from the ones it was in before", () => {
    const { before, now } = splitTrainerSpeciesPlays({
      ...hrefs,
      family: [charizard],
      species: [charmander],
    });

    expect(now.map((one) => one.id)).toEqual(["now"]);
    expect(before).toEqual([
      {
        detail: "Charmander · Lv. 30",
        href: "/member/retired",
        member: charmander.members[1],
        play: play("B Play"),
      },
      {
        detail: "Now Charizard · Lv. 30",
        href: "/member/zard",
        member: charizard.members[0],
        play: play("C Play"),
      },
      {
        detail: "In a recorded moment",
        href: "/history/D Play#moment-evolved-d",
        member: null,
        play: play("D Play"),
      },
    ]);
  });

  it("opens the Play's History when the moment isn't known", () => {
    const { before } = splitTrainerSpeciesPlays({
      ...hrefs,
      family: [],
      species: [{ ...charmander, momentIdByPlayId: {} }],
    });

    expect(before.find((one) => one.play.id === "D Play")?.href).toBe(
      "/history/D Play",
    );
  });

  it("says it evolved when History recorded the evolution", () => {
    const evolvedZard: TrainerPokemonEntry = {
      ...charizard,
      members: [
        {
          ...member("zard", "C Play", "Charizard", true),
          evolvedFrom: ["Charmander"],
        },
      ],
    };
    const { before } = splitTrainerSpeciesPlays({
      ...hrefs,
      family: [evolvedZard],
      species: [charmander],
    });

    expect(before.find((one) => one.play.id === "C Play")?.detail).toBe(
      "Evolved into Charizard · Lv. 30",
    );
  });

  it("counts a Play as now when any of the family is on it", () => {
    const { before, now } = splitTrainerSpeciesPlays({
      ...hrefs,
      family: [],
      species: [charmander, charizard],
    });

    expect(now.map((one) => one.id)).toEqual(["now", "zard"]);
    expect(before.map((one) => one.play.id)).toEqual(["B Play", "D Play"]);
  });
});

describe("family counts", () => {
  const ivysaur: TrainerPokemonEntry = {
    ...entry(2, 1),
    name: "Ivysaur",
    members: [
      member("ivy-a", "A Play", "Ivysaur", true),
      member("ivy-b", "B Play", "Ivysaur", true),
    ],
    playIds: ["A Play", "B Play", "C Play"],
  };
  const venusaur: TrainerPokemonEntry = {
    ...entry(3, 1),
    name: "Venusaur",
    members: [member("venu-c", "C Play", "Venusaur", true)],
    playIds: ["C Play"],
  };

  it("says which member came before the one in a Play now", () => {
    expect(
      getEarlierFamilyNames([ivysaur, venusaur], venusaur.members[0]!),
    ).toEqual(["Ivysaur"]);
    expect(
      getEarlierFamilyNames([ivysaur, venusaur], ivysaur.members[0]!),
    ).toEqual([]);
  });

  it("splits a species' Plays into now and before", () => {
    expect(countTrainerSpeciesPlays(ivysaur)).toEqual({ before: 1, now: 2 });
    expect(countTrainerSpeciesPlays(venusaur)).toEqual({ before: 0, now: 1 });
  });
});

describe("getEvolvedFromByPlayPokemon", () => {
  it("reads what each roster Pokémon evolved from out of History", () => {
    const evolved = getEvolvedFromByPlayPokemon([
      {
        play_id: "a",
        pokemon_refs: [
          { play_pokemon_id: "venu", role: "from", species_name: "Bulbasaur" },
          { play_pokemon_id: "venu", role: "to", species_name: "Ivysaur" },
        ],
      },
      {
        play_id: "a",
        pokemon_refs: [
          { play_pokemon_id: null, role: "from", species_name: "Ivysaur" },
          { play_pokemon_id: "venu", role: "to", species_name: "Venusaur" },
        ],
      },
      { play_id: "a", pokemon_refs: null },
    ]);

    expect(evolved.get("venu")).toEqual(["Bulbasaur", "Ivysaur"]);
  });
});

describe("buildTrainerPokemonEntries", () => {
  const use = (eventId: string | null, usedAt: string): TrainerPokemonUse => ({
    event_id: eventId,
    evolution_family_id: 1,
    form_id: 2500,
    national_number: 25,
    play_id: "play-1",
    species_id: 25,
    species_name: "Pikachu",
    species_slug: "pikachu",
    used_at: usedAt,
  });
  const rows: TrainerPokemonRows = {
    attributes: [],
    evolutions: [],
    forms: [],
    games: [],
    plays: [
      {
        game_name: "Pokémon Red",
        game_slug: "red",
        play_id: "play-1",
        play_name: "Red run",
        status_name: "Playing",
        status_slug: "playing",
      } as MainlinePlaySummary,
    ],
    regions: [],
    roster: [],
    types: [],
    uses: [
      use("caught", "2026-01-01T00:00:00Z"),
      use("snapshot", "2026-03-01T00:00:00Z"),
      use(null, "2026-04-01T00:00:00Z"),
    ],
  };

  it("keeps each Play's latest moment with the species, for its Before row", () => {
    const [pikachu] = buildTrainerPokemonEntries(rows);

    expect(pikachu?.momentIdByPlayId).toEqual({ "play-1": "snapshot" });
  });
});
