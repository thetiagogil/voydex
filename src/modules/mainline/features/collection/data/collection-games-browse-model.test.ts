import { describe, expect, it } from "vitest";

import type { CollectionGame } from "@/modules/mainline/features/collection/data/collection-games-model";

import {
  countActiveCollectionGameFilters,
  countCollectionGameKinds,
  defaultCollectionGameFilters,
  filterAndSortCollectionGames,
  hasActiveCollectionGameFilters,
} from "./collection-games-browse-model";

/* Only what the sort and filters read. */
const game = (
  id: number,
  shortName: string,
  releaseYear: number,
  generationId: number,
  regionName: string,
  statuses: { archived?: boolean; status: string }[],
): CollectionGame =>
  ({
    game: {
      generation: { id: generationId },
      id,
      name: `Pokémon ${shortName}`,
      regionName,
      releaseYear,
      shortName,
    },
    plays: statuses.map(({ archived = false, status }) => ({
      archived,
      play: { statusSlug: status },
    })),
  }) as unknown as CollectionGame;

/* As the shelf hands them over: most played first. */
const games = [
  game(30, "Sword", 2019, 8, "Galar", [
    { status: "playing" },
    { status: "completed", archived: true },
  ]),
  game(3, "Gold", 1999, 2, "Johto", [{ status: "paused" }]),
  game(1, "Red", 1996, 1, "Kanto", [{ status: "playing", archived: true }]),
];

const names = (list: CollectionGame[]) =>
  list.map((entry) => entry.game.shortName);

describe("filterAndSortCollectionGames", () => {
  it("keeps Most played as the shelf ordered it", () => {
    expect(
      names(filterAndSortCollectionGames(games, defaultCollectionGameFilters)),
    ).toEqual(["Sword", "Gold", "Red"]);
  });

  it("sorts by release order or by name", () => {
    expect(
      names(
        filterAndSortCollectionGames(games, {
          ...defaultCollectionGameFilters,
          sort: "release",
        }),
      ),
    ).toEqual(["Red", "Gold", "Sword"]);
    expect(
      names(
        filterAndSortCollectionGames(games, {
          ...defaultCollectionGameFilters,
          sort: "name",
        }),
      ),
    ).toEqual(["Gold", "Red", "Sword"]);
  });

  it("shows games you're playing now, never counting an archived Play", () => {
    expect(
      names(
        filterAndSortCollectionGames(games, {
          ...defaultCollectionGameFilters,
          kind: "playing",
        }),
      ),
    ).toEqual(["Sword"]);
  });

  it("shows games you completed, archived Plays included", () => {
    expect(
      names(
        filterAndSortCollectionGames(games, {
          ...defaultCollectionGameFilters,
          kind: "completed",
        }),
      ),
    ).toEqual(["Sword"]);
  });

  it("filters by generation and by name or region", () => {
    const by = (filters: Partial<typeof defaultCollectionGameFilters>) =>
      names(
        filterAndSortCollectionGames(games, {
          ...defaultCollectionGameFilters,
          ...filters,
        }),
      );

    expect(by({ generation: "2" })).toEqual(["Gold"]);
    expect(by({ query: " kanto" })).toEqual(["Red"]);
    expect(by({ query: "SWO" })).toEqual(["Sword"]);
  });
});

describe("game filter counts", () => {
  it("counts each Show choice", () => {
    expect(countCollectionGameKinds(games)).toEqual({
      all: 3,
      completed: 1,
      playing: 1,
    });
  });

  it("counts filters beyond search and sort, and knows a search is a filter", () => {
    expect(countActiveCollectionGameFilters(defaultCollectionGameFilters)).toBe(
      0,
    );
    expect(
      countActiveCollectionGameFilters({
        ...defaultCollectionGameFilters,
        generation: "8",
        kind: "playing",
        sort: "name",
      }),
    ).toBe(2);
    expect(
      hasActiveCollectionGameFilters({
        ...defaultCollectionGameFilters,
        query: "red",
      }),
    ).toBe(true);
    expect(
      hasActiveCollectionGameFilters({
        ...defaultCollectionGameFilters,
        sort: "release",
      }),
    ).toBe(false);
  });
});
