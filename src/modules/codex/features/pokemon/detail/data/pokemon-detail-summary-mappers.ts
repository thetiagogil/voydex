import { byId } from "@/modules/codex/shared/data/reference-data-utils";
import type {
  AvailabilityMethod,
  Game,
  Pokedex,
  PokedexEntry,
  PokemonDetailData,
  ResolvedPokemonAvailability,
  VersionGroup,
} from "@/modules/codex/shared/types";

type PokemonAvailabilitySummariesParams = {
  availabilityRows: ResolvedPokemonAvailability[];
  games: Game[];
  methods: AvailabilityMethod[];
  versionGroups: VersionGroup[];
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
