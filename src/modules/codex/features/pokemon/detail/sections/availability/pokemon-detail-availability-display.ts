import { appRoutes } from "@/config/routes";
import type { PokemonDetailVersionGroupScope } from "@/modules/codex/features/pokemon/detail/types";
import {
  doesPokemonAvailabilityMatchGame,
  getPokemonAvailabilityVersionGroups,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-availability";
import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import type {
  Game,
  PokemonAvailabilitySummary,
  PokemonEncounterSummary,
} from "@/modules/reference/types";

export type PokemonDetailWhereToFindWay = {
  detail: string | null;
  key: string;
  label: string;
};

/* One place the Pokémon is met in a game, in story order, with how and at what level. */
export type PokemonDetailWhereToFindPlace = {
  /*
   * "Tall grass, Lv 3–5", a condition in brackets ("Tall grass, Lv 3–5
   * (night)"), two ways joined with " · "; an expansion's version exclusive
   * adds "Sword only".
   */
  detail: string;
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
  /* Where it is met, in story order; empty when no place is recorded. */
  places: PokemonDetailWhereToFindPlace[];
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

const formatLevels = (min: number | null, max: number | null) => {
  if (min === null || max === null) {
    return null;
  }

  return min === max ? `Lv ${min}` : `Lv ${min}–${max}`;
};

/*
 * The places of one game (or expansion), each once, its ways in the ways'
 * order: "Viridian Forest — Walking, Lv 3–5".
 */
const getPlaces = (
  rows: PokemonEncounterSummary[],
  /* Set for a game's own row, where "Sword only" would say nothing. */
  options: { game?: Game } = {},
): PokemonDetailWhereToFindPlace[] => {
  const places = new Map<
    number,
    { label: string; storyOrder: number; ways: Map<string, string> }
  >();

  for (const row of rows) {
    const place = places.get(row.location.id) ?? {
      label: row.location.name,
      storyOrder: row.storyOrder,
      ways: new Map<string, string>(),
    };
    const levels = formatLevels(
      row.encounter.level_min,
      row.encounter.level_max,
    );
    const condition = row.encounter.condition
      ? ` (${row.encounter.condition.charAt(0).toLowerCase()}${row.encounter.condition.slice(1)})`
      : "";
    const wayLabel = [
      `${levels ? `${row.way.name}, ${levels}` : row.way.name}${condition}`,
      /* An expansion's row serves both versions: a version exclusive says so. */
      row.game && !options.game
        ? `${getGameShortName(row.game.name)} only`
        : null,
    ]
      .filter(Boolean)
      .join(", ");
    const wayKey = `${row.way.slug}:${row.game?.id ?? "all"}`;

    if (!place.ways.has(wayKey)) {
      place.ways.set(wayKey, wayLabel);
    }

    places.set(row.location.id, place);
  }

  return [...places.entries()]
    .sort(([, first], [, second]) => first.storyOrder - second.storyOrder)
    .map(([id, place]) => ({
      detail: [...place.ways.values()].join(" · "),
      key: `place-${id}`,
      label: place.label,
    }));
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
  encounters = [],
  listWhenAbsent = false,
  versionGroup,
}: {
  availability: PokemonAvailabilitySummary[];
  /* Where it is met in the group and its expansions, in story order. */
  encounters?: PokemonEncounterSummary[];
  /*
   * List the group's games even with no way to find the Pokémon there,
   * each saying "Not in this game": the generation-wide card does, once
   * another group of the generation records it (so a gap in the data never
   * reads as the game lacking it).
   */
  listWhenAbsent?: boolean;
  versionGroup: PokemonDetailVersionGroupScope;
}): PokemonDetailWhereToFindRow[] => {
  if (!availability.length && !listWhenAbsent) {
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
  const missingLabel = !availability.length
    ? "Not in this game"
    : baseRows.length
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
    /* "Sword", not "Pokémon Sword": the card names games, never anything else. */
    label: getGameShortName(game.name),
    missingLabel,
    places: getPlaces(
      encounters.filter((row) => {
        return (
          row.versionGroup.id === versionGroup.versionGroup.id &&
          (!row.game || row.game.id === game.id)
        );
      }),
      { game },
    ),
    ways: getDistinctWays(
      baseRows.filter((row) => doesPokemonAvailabilityMatchGame(row, game)),
    ),
  }));
  const expansionRows = versionGroup.expansions.flatMap((expansion) => {
    const ways = getDistinctWays(
      availability.filter((row) => getExpansionId(row) === expansion.id),
    );
    const places = getPlaces(
      encounters.filter((row) => row.versionGroup.id === expansion.id),
    );

    return ways.length || places.length
      ? [
          {
            cover: null,
            href: null,
            key: `expansion-${expansion.id}`,
            label: expansion.name,
            missingLabel,
            places,
            ways,
          },
        ]
      : [];
  });

  return [...gameRows, ...expansionRows];
};
