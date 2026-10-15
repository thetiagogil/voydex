import { describe, expect, it } from "vitest";

import {
  countTrainerSpeciesPlays,
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
  id,
  imageUrl: null,
  isCurrent,
  isShiny: false,
  level: 30,
  name: speciesName,
  placeLabel: isCurrent ? "On the team" : "Retired",
  play: play(playId),
  speciesName,
  typeSlug: null,
});

describe("splitTrainerSpeciesPlays", () => {
  const hrefs = {
    getMemberHref: (one: TrainerPokemonMember) => `/member/${one.id}`,
    getPlayHref: (one: TrainerPlay) => `/history/${one.id}`,
  };
  const charmander: TrainerPokemonEntry = {
    ...entry(4, 2),
    name: "Charmander",
    members: [
      member("now", "A Play", "Charmander", true),
      member("retired", "B Play", "Charmander", false),
    ],
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
        detail: "Charmander · Lv. 30 · Retired",
        href: "/member/retired",
        member: charmander.members[1],
        play: play("B Play"),
      },
      {
        detail: "Now Charizard · Lv. 30 · On the team",
        href: "/member/zard",
        member: charizard.members[0],
        play: play("C Play"),
      },
      {
        detail: "In a recorded moment",
        href: "/history/D Play",
        member: null,
        play: play("D Play"),
      },
    ]);
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
