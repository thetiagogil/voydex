import { describe, expect, it } from "vitest";

import { buildGamesPageData } from "@/modules/codex/features/games/browse/data/games-page-mappers";
import type { GamesPageRows } from "@/modules/codex/features/games/browse/server/games-page-loaders";
import type {
  Game,
  GameType,
  Generation,
  VersionGroup,
} from "@/modules/reference/types";

const game = (
  id: number,
  slug: string,
  year: number,
  versionGroupId: number,
  gameTypeId: number,
) =>
  ({
    game_type_id: gameTypeId,
    generation_id: 3,
    id,
    name: `Pokémon ${slug}`,
    region_id: 1,
    release_year: year,
    slug,
    sort_order: 1,
    version_group_id: versionGroupId,
  }) as Game;

const rows = {
  gamePlatforms: [],
  gameTypes: [
    { id: 1, slug: "main" },
    { id: 2, slug: "enhanced" },
    { id: 3, slug: "remake" },
  ] as GameType[],
  games: [
    game(11, "emerald", 2004, 7, 2),
    game(9, "firered", 2004, 6, 3),
    game(7, "ruby", 2002, 5, 1),
  ],
  generations: [{ id: 3, sort_order: 3 }] as Generation[],
  platforms: [],
  regions: [],
  versionGroups: [
    { id: 5, sort_order: 1 },
    { id: 6, sort_order: 2 },
    { id: 7, sort_order: 3 },
  ] as VersionGroup[],
} satisfies GamesPageRows;

describe("buildGamesPageData", () => {
  it("sorts by year within a generation, then by the series' order", () => {
    expect(
      buildGamesPageData(rows).games.map((card) => card.game.slug),
    ).toEqual(["ruby", "firered", "emerald"]);
  });

  it("reads each game's kind from its type", () => {
    expect(buildGamesPageData(rows).games.map((card) => card.kind)).toEqual([
      "core",
      "companion",
      "companion",
    ]);
  });

  it("accepts a known kind from the address and drops anything else", () => {
    expect(buildGamesPageData(rows, { kind: "legends" }).filters.kind).toBe(
      "legends",
    );
    expect(buildGamesPageData(rows, { kind: "remake" }).filters.kind).toBe("");
  });
});
