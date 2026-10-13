import type {
  Game,
  Generation,
  VersionGroup,
} from "@/modules/reference/shared/database-types";
import { byId } from "@/shared/utils/collections";

const fallbackSortOrder = Number.MAX_SAFE_INTEGER;

/*
 * Release order, the one order games are listed in: by generation, then by
 * year within it, then the version group's and the series' own order.
 */
export const compareGamesByRelease = (rows: {
  generations: Generation[];
  versionGroups: VersionGroup[];
}) => {
  const generationById = byId(rows.generations);
  const versionGroupById = byId(rows.versionGroups);
  const getGenerationOrder = (game: Game) =>
    generationById.get(game.generation_id)?.sort_order ?? fallbackSortOrder;
  const getVersionGroupOrder = (game: Game) =>
    versionGroupById.get(game.version_group_id)?.sort_order ??
    fallbackSortOrder;

  return (first: Game, second: Game) => {
    return (
      getGenerationOrder(first) - getGenerationOrder(second) ||
      first.release_year - second.release_year ||
      getVersionGroupOrder(first) - getVersionGroupOrder(second) ||
      first.sort_order - second.sort_order ||
      first.name.localeCompare(second.name)
    );
  };
};
