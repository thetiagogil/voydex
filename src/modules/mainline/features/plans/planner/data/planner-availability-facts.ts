import type { PlannerAvailabilityRow } from "@/modules/mainline/features/plans/planner/server/planner-pool-reader";
import type { PlannerPokemonFacts } from "@/modules/mainline/features/plans/types";
import { getVersionExclusives } from "@/modules/reference/features/games/domain/version-exclusives";

/*
 * What the catalogue says about getting each species in this version group:
 * in the base game, only in an expansion, only as one game's exclusive, only
 * from an event, or only from outside the game. A species with no rows at
 * all gets no facts: unknown is never read as unavailable.
 */
export const buildPlannerAvailabilityFacts = ({
  availability,
  baseVersionGroupId,
  eventMethodIds,
  expansionIds,
  gameIds,
  inGameMethodIds,
}: {
  availability: PlannerAvailabilityRow[];
  baseVersionGroupId: number;
  eventMethodIds: ReadonlySet<number>;
  expansionIds: number[];
  gameIds: number[];
  inGameMethodIds: ReadonlySet<number>;
}) => {
  type SpeciesRows = {
    base: boolean;
    event: boolean;
    expansion: number | null;
    outside: boolean;
  };
  const bySpecies = new Map<number, SpeciesRows>();
  const baseRows = availability.filter(
    (row) => row.target_version_group_id === baseVersionGroupId,
  );

  for (const row of availability) {
    if (row.species_id === null || row.availability_method_id === null)
      continue;

    const entry = bySpecies.get(row.species_id) ?? {
      base: false,
      event: false,
      expansion: null,
      outside: false,
    };
    const inGame = inGameMethodIds.has(row.availability_method_id);

    if (inGame && row.target_version_group_id === baseVersionGroupId) {
      entry.base = true;
    } else if (
      inGame &&
      row.source_version_group_id !== null &&
      expansionIds.includes(row.source_version_group_id)
    ) {
      entry.expansion ??= row.source_version_group_id;
    } else if (eventMethodIds.has(row.availability_method_id)) {
      entry.event = true;
    } else if (!inGame) {
      entry.outside = true;
    }

    bySpecies.set(row.species_id, entry);
  }

  const exclusives = getVersionExclusives({
    gameIds,
    inGameMethodIds,
    rows: baseRows.flatMap((row) =>
      row.species_id !== null &&
      row.form_id !== null &&
      row.availability_method_id !== null
        ? [
            {
              availability_method_id: row.availability_method_id,
              form_id: row.form_id,
              game_id: row.game_id,
              species_id: row.species_id,
            },
          ]
        : [],
    ),
  });
  const exclusiveGamesBySpecies = new Map<number, number[]>();

  for (const [gameId, list] of exclusives) {
    for (const exclusive of list) {
      const games = exclusiveGamesBySpecies.get(exclusive.speciesId) ?? [];

      if (!games.includes(gameId)) games.push(gameId);
      exclusiveGamesBySpecies.set(exclusive.speciesId, games);
    }
  }

  return (speciesId: number): Omit<PlannerPokemonFacts, "tradeEvolution"> => {
    const rows = bySpecies.get(speciesId);
    const exclusiveTo = exclusiveGamesBySpecies.get(speciesId) ?? [];

    return {
      eventOnly: Boolean(rows && !rows.base && !rows.expansion && rows.event),
      exclusiveToGameIds: exclusiveTo.length === 1 ? exclusiveTo : [],
      expansionVersionGroupId: rows && !rows.base ? rows.expansion : null,
      outsideGameOnly: Boolean(
        rows && !rows.base && !rows.expansion && !rows.event && rows.outside,
      ),
    };
  };
};
