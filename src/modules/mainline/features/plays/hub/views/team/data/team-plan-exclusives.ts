import {
  getVersionExclusives,
  type VersionExclusiveAvailabilityRow,
} from "@/modules/reference/features/games/domain/version-exclusives";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";

/*
 * A Plan is for either game of its version group, so a Play checks it
 * against its own game: each planned form another game has to itself, by
 * form id, with that game's short name ("Shield"). This Play's game can't
 * catch it; you'd trade for it.
 */
export const getOtherVersionExclusives = ({
  games,
  inGameMethodIds,
  playGameId,
  rows,
}: {
  /* The version group's games. */
  games: { id: number; name: string }[];
  inGameMethodIds: ReadonlySet<number>;
  playGameId: number;
  /* The planned forms' availability rows in the version group. */
  rows: VersionExclusiveAvailabilityRow[];
}): Record<number, string> => {
  const exclusivesByGameId = getVersionExclusives({
    gameIds: games.map((game) => game.id),
    inGameMethodIds,
    rows,
  });
  const result: Record<number, string> = {};

  for (const game of games) {
    if (game.id === playGameId) continue;

    for (const exclusive of exclusivesByGameId.get(game.id) ?? []) {
      result[exclusive.formId] = getGameShortName(game.name);
    }
  }

  return result;
};
