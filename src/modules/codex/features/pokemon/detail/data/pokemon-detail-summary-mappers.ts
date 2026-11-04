import { byId } from "@/modules/reference/reference-data";
import type {
  AvailabilityMethod,
  EncounterWay,
  Game,
  Location,
  LocationVersionGroup,
  Pokedex,
  PokedexEntry,
  PokemonDetailData,
  PokemonEncounter,
  ResolvedPokemonAvailability,
  VersionGroup,
} from "@/modules/reference/types";

type PokemonAvailabilitySummariesParams = {
  availabilityRows: ResolvedPokemonAvailability[];
  games: Game[];
  methods: AvailabilityMethod[];
  versionGroups: VersionGroup[];
};

type PokemonEncounterSummariesParams = {
  encounterRows: PokemonEncounter[];
  games: Game[];
  locationPlacements: LocationVersionGroup[];
  locations: Location[];
  versionGroups: VersionGroup[];
  ways: EncounterWay[];
};

type PokemonPokedexSummariesParams = {
  entries: PokedexEntry[];
  pokedexes: Pokedex[];
};

export const buildPokemonAvailabilitySummaries = ({
  availabilityRows,
  games,
  methods,
  versionGroups,
}: PokemonAvailabilitySummariesParams): PokemonDetailData["availability"] => {
  const gameById = byId(games);
  const methodById = byId(methods);
  const versionGroupById = byId(versionGroups);

  return availabilityRows.map((availabilityRow) => ({
    availability: availabilityRow,
    game: availabilityRow.game_id
      ? (gameById.get(availabilityRow.game_id) ?? null)
      : null,
    method: availabilityRow.availability_method_id
      ? (methodById.get(availabilityRow.availability_method_id) ?? null)
      : null,
    sourceVersionGroup: availabilityRow.source_version_group_id
      ? (versionGroupById.get(availabilityRow.source_version_group_id) ?? null)
      : null,
    targetVersionGroup: availabilityRow.target_version_group_id
      ? (versionGroupById.get(availabilityRow.target_version_group_id) ?? null)
      : null,
  }));
};

/*
 * Where the species is met, in story order: a row whose place, group, way or
 * game is unknown is dropped rather than shown half-read (an unknown game
 * would otherwise read as every version).
 */
export const buildPokemonEncounterSummaries = ({
  encounterRows,
  games,
  locationPlacements,
  locations,
  versionGroups,
  ways,
}: PokemonEncounterSummariesParams): PokemonDetailData["encounters"] => {
  const gameById = byId(games);
  const locationById = byId(locations);
  const versionGroupById = byId(versionGroups);
  const wayById = byId(ways);
  const storyOrderByPlacement = new Map(
    locationPlacements.map((placement) => [
      `${placement.location_id}:${placement.version_group_id}`,
      placement.sort_order,
    ]),
  );

  return encounterRows
    .flatMap((encounter) => {
      const location = locationById.get(encounter.location_id);
      const versionGroup = versionGroupById.get(encounter.version_group_id);
      const way = wayById.get(encounter.encounter_way_id);
      const storyOrder = storyOrderByPlacement.get(
        `${encounter.location_id}:${encounter.version_group_id}`,
      );

      const game = encounter.game_id
        ? (gameById.get(encounter.game_id) ?? null)
        : null;

      if (
        !location ||
        !versionGroup ||
        !way ||
        storyOrder === undefined ||
        (encounter.game_id !== null && !game)
      ) {
        return [];
      }

      return [
        {
          encounter,
          game,
          location,
          storyOrder,
          versionGroup,
          way,
        },
      ];
    })
    .sort((first, second) => {
      return (
        first.versionGroup.sort_order - second.versionGroup.sort_order ||
        first.storyOrder - second.storyOrder ||
        first.way.sort_order - second.way.sort_order ||
        first.encounter.id - second.encounter.id
      );
    });
};

export const buildPokemonPokedexSummaries = ({
  entries,
  pokedexes,
}: PokemonPokedexSummariesParams): PokemonDetailData["pokedexEntries"] => {
  const pokedexById = byId(pokedexes);

  return entries.map((entry) => ({
    entry,
    pokedex: pokedexById.get(entry.pokedex_id) ?? null,
  }));
};
