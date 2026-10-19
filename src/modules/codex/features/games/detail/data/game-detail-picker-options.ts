import { getVersionGroupShortName } from "@/modules/codex/shared/utils/game-names";
import type { GameShelfGame } from "@/modules/reference/features/games/types";
import type { VersionGroup } from "@/modules/reference/types";

/* One page the Codex game picker can open: a base version group. */
export type GameDetailPickerGroup = {
  /* Its first game, whose cover pictures the row. */
  coverGame: {
    name: string;
    slug: string;
  };
  /* "Sword and Shield", as the crumb reads it. */
  name: string;
  regionName: string | null;
  releaseYear: number;
  slug: string;
};

/*
 * Every base version group that has a page, in the Games list's release
 * order (the group sits where its first game does).
 */
export const buildGameDetailPickerGroups = (
  games: GameShelfGame[],
  versionGroups: VersionGroup[],
): GameDetailPickerGroup[] => {
  const versionGroupBySlug = new Map(
    versionGroups.map((versionGroup) => [versionGroup.slug, versionGroup]),
  );
  const groupBySlug = new Map<string, GameDetailPickerGroup>();

  for (const game of games) {
    const versionGroup = versionGroupBySlug.get(game.versionGroupSlug);

    if (!versionGroup || groupBySlug.has(versionGroup.slug)) {
      continue;
    }

    groupBySlug.set(versionGroup.slug, {
      coverGame: { name: game.name, slug: game.slug },
      name: getVersionGroupShortName(versionGroup.name),
      regionName: game.regionName,
      releaseYear: game.releaseYear,
      slug: versionGroup.slug,
    });
  }

  return [...groupBySlug.values()];
};
