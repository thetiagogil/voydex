import { appRoutes } from "@/config/routes";
import type { PokemonDetailVersionGroupScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import {
  doesPokemonAvailabilityMatchGame,
  getPokemonAvailabilityVersionGroups,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-availability";
import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
import type { PokemonAvailabilitySummary } from "@/modules/reference/types";

export type PokemonDetailWhereToFindWay = {
  detail: string | null;
  key: string;
  label: string;
};

/* One game of the group, or one of its expansions, and the ways to find the Pokémon there. */
export type PokemonDetailWhereToFindRow = {
  /* The game's box; an expansion has none of its own. */
  cover: {
    coverImageUrl: string | null;
    gameName: string;
    gameSlug: string;
  } | null;
  href: string | null;
  key: string;
  label: string;
  /*
   * Said when `ways` is empty: "Not in this version" when the other game has
   * it (a version exclusive), "Not in the base game" when only an expansion does.
   */
  missingLabel: string;
  ways: PokemonDetailWhereToFindWay[];
};

const getWay = (
  availability: PokemonAvailabilitySummary,
): PokemonDetailWhereToFindWay => {
  const label = availability.method?.name ?? "Available";
  const detail =
    availability.availability.notes ?? availability.method?.description ?? null;

  return { detail, key: `${label}:${detail ?? ""}`, label };
};

/* The same way twice (one row per game, say) reads once. */
const getDistinctWays = (rows: PokemonAvailabilitySummary[]) => {
  const ways = new Map<string, PokemonDetailWhereToFindWay>();

  for (const row of rows) {
    const way = getWay(row);

    if (!ways.has(way.key)) {
      ways.set(way.key, way);
    }
  }

  return [...ways.values()];
};

/*
 * v3's Where to find: one row per game in the group (Sword, then Shield),
 * then one per expansion that adds the Pokémon. A game with no way to find it
 * stays, saying so, since that is what makes a version exclusive.
 */
export const getPokemonDetailWhereToFindRows = ({
  availability,
  versionGroup,
}: {
  availability: PokemonAvailabilitySummary[];
  versionGroup: PokemonDetailVersionGroupScope;
}): PokemonDetailWhereToFindRow[] => {
  if (!availability.length) {
    return [];
  }

  const expansionIds = new Set(
    versionGroup.expansions.map((expansion) => expansion.id),
  );
  const getExpansionId = (row: PokemonAvailabilitySummary) => {
    return (
      getPokemonAvailabilityVersionGroups(row).find((scope) => {
        return expansionIds.has(scope.id);
      })?.id ?? null
    );
  };
  const baseRows = availability.filter((row) => getExpansionId(row) === null);
  const missingLabel = baseRows.length
    ? "Not in this version"
    : "Not in the base game";
  const gameRows = versionGroup.games.map((game) => ({
    cover: {
      coverImageUrl: getGameCoverImageUrl(game),
      gameName: game.name,
      gameSlug: game.slug,
    },
    href: appRoutes.codexVersionGroup(
      versionGroup.versionGroup.slug,
      game.slug,
    ),
    key: `game-${game.id}`,
    label: game.name,
    missingLabel,
    ways: getDistinctWays(
      baseRows.filter((row) => doesPokemonAvailabilityMatchGame(row, game)),
    ),
  }));
  const expansionRows = versionGroup.expansions.flatMap((expansion) => {
    const ways = getDistinctWays(
      availability.filter((row) => getExpansionId(row) === expansion.id),
    );

    return ways.length
      ? [
          {
            cover: null,
            href: null,
            key: `expansion-${expansion.id}`,
            label: expansion.name,
            missingLabel,
            ways,
          },
        ]
      : [];
  });

  return [...gameRows, ...expansionRows];
};
