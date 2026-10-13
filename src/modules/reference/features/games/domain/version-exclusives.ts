import type {
  AvailabilityMethod,
  PokemonAvailability,
} from "@/modules/reference/shared/database-types";

/*
 * Ways that need something from outside the game: an official event, a trade
 * from another game, or a transfer. A Pokémon you can only get these ways
 * isn't obtainable in the game itself.
 */
const outsideGameMethodSlugs = new Set([
  "event",
  "external_trade",
  "transfer_only",
]);

export const isInGameAvailabilityMethod = (
  method: Pick<AvailabilityMethod, "slug">,
) => !outsideGameMethodSlugs.has(method.slug);

export type VersionExclusiveAvailabilityRow = Pick<
  PokemonAvailability,
  "availability_method_id" | "form_id" | "game_id" | "species_id"
>;

export type VersionExclusive = {
  formId: number;
  speciesId: number;
};

/*
 * A version group's version exclusives: for each of its games, the Pokémon
 * forms obtainable in that game itself and in none of the others. A row
 * without a game counts for every game in the group. A group with one game
 * has none.
 */
export const getVersionExclusives = ({
  gameIds,
  inGameMethodIds,
  rows,
}: {
  /* The group's games. */
  gameIds: number[];
  /* The availability methods that count as obtainable in the game itself. */
  inGameMethodIds: ReadonlySet<number>;
  /* The group's resolved availability rows. */
  rows: VersionExclusiveAvailabilityRow[];
}): Map<number, VersionExclusive[]> => {
  const exclusivesByGameId = new Map<number, VersionExclusive[]>(
    gameIds.map((gameId) => [gameId, []]),
  );

  if (gameIds.length < 2) {
    return exclusivesByGameId;
  }

  const groupGameIds = new Set(gameIds);
  const gameIdsByFormKey = new Map<
    string,
    { exclusive: VersionExclusive; gameIds: Set<number> }
  >();

  for (const row of rows) {
    if (!inGameMethodIds.has(row.availability_method_id)) {
      continue;
    }

    if (row.game_id !== null && !groupGameIds.has(row.game_id)) {
      continue;
    }

    const key = `${row.species_id}:${row.form_id}`;
    const current = gameIdsByFormKey.get(key) ?? {
      exclusive: { formId: row.form_id, speciesId: row.species_id },
      gameIds: new Set<number>(),
    };

    for (const gameId of row.game_id === null ? gameIds : [row.game_id]) {
      current.gameIds.add(gameId);
    }

    gameIdsByFormKey.set(key, current);
  }

  for (const { exclusive, gameIds: availableIn } of gameIdsByFormKey.values()) {
    if (availableIn.size !== 1) {
      continue;
    }

    const [gameId] = availableIn;

    exclusivesByGameId.get(gameId)?.push(exclusive);
  }

  return exclusivesByGameId;
};
