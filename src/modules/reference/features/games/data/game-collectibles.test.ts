import { describe, expect, it } from "vitest";

import {
  hasGameCollectibles,
  mapGameCollectiblesByGameSlug,
} from "@/modules/reference/features/games/data/game-collectibles";

const games = [
  { id: 1, slug: "sword", version_group_id: 18 },
  { id: 2, slug: "shield", version_group_id: 18 },
  { id: 3, slug: "sun", version_group_id: 16 },
  { id: 4, slug: "red", version_group_id: 1 },
];
const scopes = [
  { game_id: 1, is_base_scope: true, version_group_id: 18 },
  { game_id: 1, is_base_scope: false, version_group_id: 19 },
  { game_id: 1, is_base_scope: false, version_group_id: 20 },
  { game_id: 2, is_base_scope: true, version_group_id: 18 },
  { game_id: 2, is_base_scope: false, version_group_id: 19 },
  { game_id: 3, is_base_scope: true, version_group_id: 16 },
  { game_id: 4, is_base_scope: true, version_group_id: 1 },
];

describe("mapGameCollectiblesByGameSlug", () => {
  it("finds collectibles in the game and in its expansions, and leaves out games with none", () => {
    expect(
      mapGameCollectiblesByGameSlug({
        collectibles: [
          { game_id: null, version_group_id: 19 },
          { game_id: 3, version_group_id: 16 },
        ],
        games,
        scopes,
      }),
    ).toEqual({
      shield: { expansionVersionGroupIds: [19], inGame: false },
      sun: { expansionVersionGroupIds: [], inGame: true },
      sword: { expansionVersionGroupIds: [19], inGame: false },
    });
  });

  it("keeps a collectible that names one game to that game", () => {
    expect(
      mapGameCollectiblesByGameSlug({
        collectibles: [{ game_id: 1, version_group_id: 18 }],
        games,
        scopes,
      }),
    ).toEqual({ sword: { expansionVersionGroupIds: [], inGame: true } });
  });
});

describe("hasGameCollectibles", () => {
  const collectibles = {
    sun: { expansionVersionGroupIds: [], inGame: true },
    sword: { expansionVersionGroupIds: [19], inGame: false },
  };

  it("has them in the game, or once you own the expansion that holds them", () => {
    expect(hasGameCollectibles(collectibles, "sun", [])).toBe(true);
    expect(hasGameCollectibles(collectibles, "sword", [])).toBe(false);
    expect(hasGameCollectibles(collectibles, "sword", [20])).toBe(false);
    expect(hasGameCollectibles(collectibles, "sword", [19])).toBe(true);
    expect(hasGameCollectibles(collectibles, "red", [])).toBe(false);
  });

  it("counts them as there when unknown, so nothing is hidden on a guess", () => {
    expect(hasGameCollectibles(null, "red", [])).toBe(true);
  });
});
