type BadgeCountGame = {
  id: number;
  slug: string;
  version_group_id: number;
};

type BadgeCountBadge = {
  game_id: number | null;
  version_group_id: number;
};

/*
 * How many badges each game hands out, by game slug. A badge belongs to its
 * version group's every game unless it names one (Sword's Fighting Badge,
 * Shield's Ghost Badge). Games without badges are left out.
 */
export const countBadgesByGameSlug = (
  games: readonly BadgeCountGame[],
  badges: readonly BadgeCountBadge[],
): Record<string, number> => {
  const counts: Record<string, number> = {};

  for (const game of games) {
    const count = badges.filter(
      (badge) =>
        badge.version_group_id === game.version_group_id &&
        (badge.game_id === null || badge.game_id === game.id),
    ).length;

    if (count > 0) {
      counts[game.slug] = count;
    }
  }

  return counts;
};
