import { describe, expect, it } from "vitest";

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
  archivedAt: string | null = null,
) => ({ archived_at: archivedAt, game_slug: gameSlug, play_id: id });

describe("buildCollectionGames", () => {
  it("keeps every game in release order, a section per generation", () => {
    const result = buildCollectionGames(games, []);

    expect(result.sections.map((section) => section.label)).toEqual([
      "Generation 1",
      "Generation 2",
    ]);
    expect(result.sections[0].games.map((entry) => entry.game.slug)).toEqual([
      "red",
      "blue",
      "yellow",
    ]);
    expect(result.sections[0].summary).toBe("1996–1998 · 0 of 3 played");
    expect(result.sections[1].summary).toBe("1999 · 0 of 1 played");
    expect(result.totalGameCount).toBe(4);
    expect(result.playedGameCount).toBe(0);
    expect(result.playCount).toBe(0);
  });

  it("counts each game's Plays, archived ones too, and adds them up", () => {
    const result = buildCollectionGames(games, [
      play("a", "red"),
      play("b", "red", "2026-01-01"),
      play("c", "gold"),
      play("d", null),
      play("e", "unknown-game"),
    ]);
    const counts = result.sections.flatMap((section) =>
      section.games.map((entry) => [entry.game.slug, entry.playCount]),
    );

    expect(counts).toEqual([
      ["red", 2],
      ["blue", 0],
      ["yellow", 0],
      ["gold", 1],
    ]);
    /* The header's numbers are the stamps' own. */
    expect(result.playCount).toBe(3);
    expect(result.playedGameCount).toBe(2);
    expect(result.sections[0].summary).toBe("1996–1998 · 1 of 3 played");
  });

  it("opens the one Play, the game's Plays, or the game's Codex page", () => {
    const result = buildCollectionGames(games, [
      play("a", "red"),
      play("b", "red", "2026-01-01"),
      play("c", "gold"),
      play("d", "yellow", "2026-01-01"),
      play("e", "yellow", "2026-02-01"),
    ]);
    const hrefs = Object.fromEntries(
      result.sections.flatMap((section) =>
        section.games.map((entry) => [entry.game.slug, entry.href]),
      ),
    );

    expect(hrefs).toEqual({
      blue: "/codex/games/blue-group?version=blue",
      gold: "/mainline/plays/c",
      red: "/mainline/plays?game=red",
      /* Only archived Plays: the active list wouldn't show them. */
      yellow: "/mainline/plays?view=archived",
    });
  });
});
