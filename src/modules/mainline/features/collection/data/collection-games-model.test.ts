import { describe, expect, it } from "vitest";

import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import type { GameShelfGame } from "@/modules/reference/types";

import { buildCollectionGames } from "./collection-games-model";

const makeGame = (
  id: number,
  slug: string,
  generation: number,
  releaseYear: number,
): GameShelfGame => ({
  coverImageUrl: null,
  coverShape: "portrait",
  generation: {
    id: generation,
    name: `Generation ${generation}`,
    numeral: String(generation),
    number: generation,
  },
  id,
  name: `Pokémon ${slug}`,
  platformNames: [],
  regionName: null,
  releaseYear,
  shortName: slug,
  slug,
  versionGroupSlug: `${slug}-group`,
});

const games = [
  makeGame(1, "red", 1, 1996),
  makeGame(2, "blue", 1, 1996),
  makeGame(3, "yellow", 1, 1998),
  makeGame(4, "gold", 2, 1999),
];

const play = (
  id: string,
  gameSlug: string | null,
  extra: Partial<MainlinePlaySummary> = {},
) =>
  ({
    archived_at: null,
    game_name: gameSlug ? `Pokémon ${gameSlug}` : null,
    game_slug: gameSlug,
    play_id: id,
    play_name: `Play ${id}`,
    playtime_minutes: null,
    status_name: "Playing",
    status_slug: "playing",
    trainer_name: "Ash",
    ...extra,
  }) as MainlinePlaySummary;

const listPlays = (result: ReturnType<typeof buildCollectionGames>) =>
  result.games.map((entry) => [
    entry.game.slug,
    entry.plays.map((gamePlay) => gamePlay.play.id),
  ]);

describe("buildCollectionGames", () => {
  it("keeps every unplayed game in release order", () => {
    const result = buildCollectionGames(games, []);

    expect(result.games.map((entry) => entry.game.slug)).toEqual([
      "red",
      "blue",
      "yellow",
      "gold",
    ]);
    expect(result.totalGameCount).toBe(4);
    expect(result.playedGameCount).toBe(0);
    expect(result.playCount).toBe(0);
  });

  it("puts the played games first, most Plays leading, archived ones counted", () => {
    const result = buildCollectionGames(games, [
      play("a", "yellow"),
      play("b", "gold"),
      play("c", "gold", { archived_at: "2026-01-01" }),
      play("d", null),
      play("e", "unknown-game"),
      play("f", "red", { play_id: null }),
    ]);

    expect(listPlays(result)).toEqual([
      ["gold", ["b", "c"]],
      ["yellow", ["a"]],
      ["red", []],
      ["blue", []],
    ]);
    /* The header's numbers are the marks' own. */
    expect(result.playCount).toBe(3);
    expect(result.playedGameCount).toBe(2);
  });

  it("names each Play by its trainer and playtime, and marks the archived", () => {
    const [red] = buildCollectionGames(games, [
      play("a", "red", { playtime_minutes: 90 }),
      play("b", "red", { archived_at: "2026-01-01", trainer_name: null }),
    ]).games;

    expect(red.plays.map((gamePlay) => gamePlay.detail)).toEqual([
      "Ash · 1h 30m",
      "",
    ]);
    expect(red.plays.map((gamePlay) => gamePlay.archived)).toEqual([
      false,
      true,
    ]);
    expect(red.plays[0].play).toMatchObject({
      id: "a",
      name: "Play a",
      statusSlug: "playing",
    });
  });

  it("links only an unplayed game, to New Play with it picked", () => {
    const [red, blue] = buildCollectionGames(games, [play("a", "red")]).games;

    expect(red.href).toBeNull();
    expect(blue.href).toBe("/mainline?new=blue");
  });
});
