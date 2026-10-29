import type { GameCollectibles } from "@/modules/reference/features/games/types";

type CollectiblesGame = {
  id: number;
  slug: string;
  version_group_id: number;
};

type CollectiblesScope = {
  game_id: number;
  is_base_scope: boolean;
  version_group_id: number;
};

type CollectiblesCollectible = {
  game_id: number | null;
  version_group_id: number;
};

/*
 * Where each game keeps collectibles, by game slug: in the game itself, and
 * in which of its expansions (Sword's Alolan Diglett come with The Isle of
 * Armor). A collectible belongs to its version group's every game unless it
 * names one. Games without collectibles anywhere are left out.
 */
export const mapGameCollectiblesByGameSlug = ({
  collectibles,
  games,
  scopes,
}: {
  collectibles: readonly CollectiblesCollectible[];
  games: readonly CollectiblesGame[];
  scopes: readonly CollectiblesScope[];
}): Record<string, GameCollectibles> => {
  const byGameSlug: Record<string, GameCollectibles> = {};

  for (const game of games) {
    const holdsCollectibles = (versionGroupId: number) =>
      collectibles.some(
        (collectible) =>
          collectible.version_group_id === versionGroupId &&
          (collectible.game_id === null || collectible.game_id === game.id),
      );
    const inGame = holdsCollectibles(game.version_group_id);
    const expansionVersionGroupIds = scopes
      .filter(
        (scope) =>
          scope.game_id === game.id &&
          !scope.is_base_scope &&
          holdsCollectibles(scope.version_group_id),
      )
      .map((scope) => scope.version_group_id);

    if (inGame || expansionVersionGroupIds.length) {
      byGameSlug[game.slug] = { expansionVersionGroupIds, inGame };
    }
  }

  return byGameSlug;
};

/*
 * Whether a Play of the game has collectibles, with the expansions it owns.
 * Null (unknown) counts as having them, so nothing is hidden on a guess.
 */
export const hasGameCollectibles = (
  collectibles: Record<string, GameCollectibles> | null,
  gameSlug: string,
  ownedExpansionVersionGroupIds: readonly number[],
) => {
  if (!collectibles) return true;

  const game = collectibles[gameSlug];

  return Boolean(
    game &&
    (game.inGame ||
      game.expansionVersionGroupIds.some((id) =>
        ownedExpansionVersionGroupIds.includes(id),
      )),
  );
};
