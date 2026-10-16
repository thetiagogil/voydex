import { afterEach, describe, expect, it, vi } from "vitest";

import {
  filterPlaysWithSpecies,
  settleCodexExtra,
  toCodexPlays,
} from "./codex-plays-model";

afterEach(() => {
  vi.restoreAllMocks();
});

describe("settleCodexExtra", () => {
  it("returns the read's value when it succeeds", async () => {
    await expect(
      settleCodexExtra<Record<string, number>>(
        "counts",
        async () => ({ sword: 2 }),
        {},
      ),
    ).resolves.toEqual({ sword: 2 });
  });

  it("logs a failed read and falls back instead of throwing", async () => {
    const log = vi.spyOn(console, "error").mockImplementation(() => {});
    const failure = new Error("Unable to load your Plays.");

    await expect(
      settleCodexExtra(
        "Reading your Plays",
        async () => {
          throw failure;
        },
        null,
      ),
    ).resolves.toBeNull();
    expect(log).toHaveBeenCalledWith(
      expect.stringContaining("Reading your Plays"),
      failure,
    );
  });
});

describe("toCodexPlays", () => {
  it("labels each Play by its game's short name and drops rows with no id", () => {
    expect(
      toCodexPlays([
        {
          game_name: "Pokémon Sword",
          game_slug: "sword",
          play_id: "p1",
          play_name: "Late Journey",
          status_name: "Playing",
          status_slug: "playing",
          version_group_slug: "sword-shield",
        },
        {
          game_name: null,
          game_slug: null,
          play_id: null,
          play_name: null,
          status_name: null,
          status_slug: null,
          version_group_slug: null,
        },
      ]),
    ).toEqual([
      {
        gameName: "Pokémon Sword",
        gameSlug: "sword",
        id: "p1",
        label: "Sword · Late Journey",
        name: "Late Journey",
        statusName: "Playing",
        statusSlug: "playing",
        versionGroupSlug: "sword-shield",
      },
    ]);
  });
});

describe("filterPlaysWithSpecies", () => {
  const plays = toCodexPlays([
    {
      game_name: "Pokémon Sword",
      game_slug: "sword",
      play_id: "play-sword",
      play_name: "Galar",
      status_name: "Playing",
      status_slug: "playing",
      version_group_slug: "sword-shield",
    },
    {
      game_name: "Pokémon Red",
      game_slug: "red",
      play_id: "play-red",
      play_name: "Kanto",
      status_name: "Playing",
      status_slug: "playing",
      version_group_slug: "red-blue",
    },
  ]);

  it("keeps only the Plays whose Pokédex lists the species", () => {
    expect(
      filterPlaysWithSpecies(plays, new Set(["play-sword"])).map(
        (play) => play.id,
      ),
    ).toEqual(["play-sword"]);
    expect(filterPlaysWithSpecies(plays, new Set())).toEqual([]);
  });

  it("keeps every Play when that couldn't be read", () => {
    expect(filterPlaysWithSpecies(plays, null)).toBe(plays);
  });
});
