import { describe, expect, it } from "vitest";

import { countBadgesByGameSlug } from "@/modules/reference/features/games/data/game-badge-counts";

const badges = (
  versionGroupId: number,
  count: number,
  gameId: number | null = null,
) =>
  Array.from({ length: count }, () => ({
    game_id: gameId,
    version_group_id: versionGroupId,
  }));

describe("countBadgesByGameSlug", () => {
  it("counts a version group's badges for each of its games", () => {
    expect(
      countBadgesByGameSlug(
        [
          { id: 1, slug: "red", version_group_id: 1 },
          { id: 2, slug: "blue", version_group_id: 1 },
          { id: 5, slug: "gold", version_group_id: 3 },
        ],
        [...badges(1, 8), ...badges(3, 16)],
      ),
    ).toEqual({ blue: 8, gold: 16, red: 8 });
  });

  it("counts a game's own badges only for that game", () => {
    expect(
      countBadgesByGameSlug(
        [
          { id: 31, slug: "sword", version_group_id: 18 },
          { id: 32, slug: "shield", version_group_id: 18 },
        ],
        [...badges(18, 6), ...badges(18, 2, 31), ...badges(18, 2, 32)],
      ),
    ).toEqual({ shield: 8, sword: 8 });
  });

  it("leaves out games without badges", () => {
    expect(
      countBadgesByGameSlug(
        [{ id: 20, slug: "sun", version_group_id: 15 }],
        badges(1, 8),
      ),
    ).toEqual({});
  });
});
