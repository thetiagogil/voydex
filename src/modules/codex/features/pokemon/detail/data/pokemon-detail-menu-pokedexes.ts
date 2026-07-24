import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import type {
  Pokedex,
  PokedexEntry,
  PokemonDetailMenuGroup,
  VersionGroup,
} from "@/modules/reference/types";

const getVersionGroupSortOrderById = (versionGroups: VersionGroup[]) => {
  return new Map(
    versionGroups.map((versionGroup) => {
      return [versionGroup.id, versionGroup.sort_order];
    }),
  );
};

const comparePokedexes = (
  firstPokedex: Pokedex,
  secondPokedex: Pokedex,
  versionGroupSortOrderById: Map<number, number>,
) => {
  const firstVersionGroupSortOrder =
    versionGroupSortOrderById.get(firstPokedex.version_group_id) ??
    Number.MAX_SAFE_INTEGER;
  const secondVersionGroupSortOrder =
    versionGroupSortOrderById.get(secondPokedex.version_group_id) ??
    Number.MAX_SAFE_INTEGER;

  return (
    firstVersionGroupSortOrder - secondVersionGroupSortOrder ||
    firstPokedex.sort_order - secondPokedex.sort_order ||
    firstPokedex.name.localeCompare(secondPokedex.name)
  );
};

const comparePokedexEntries = (
  firstEntry: PokedexEntry,
  secondEntry: PokedexEntry,
) => {
  return (
    firstEntry.pokedex_number - secondEntry.pokedex_number ||
    firstEntry.species_id - secondEntry.species_id
  );
};

export const getPokedexGroup = (pokedex: Pokedex): PokemonDetailMenuGroup => {
  return {
    key: `pokedex:${pokedex.id}`,
    kind: pokedex.pokedex_kind,
    name: formatPokedexName(pokedex.name),
  };
};

export const getOtherAvailablePokemonGroup = (): PokemonDetailMenuGroup => {
  return {
    key: "other-available",
    kind: "availability",
    name: "Other available PokÃ©mon",
  };
};

export const getPrimaryMenuPokedexes = ({
  pokedexes,
  versionGroups,
}: {
  pokedexes: Pokedex[];
  versionGroups: VersionGroup[];
}) => {
  const versionGroupSortOrderById = getVersionGroupSortOrderById(versionGroups);
  const sortPokedexes = (items: Pokedex[]) => {
    return items.sort((firstPokedex, secondPokedex) => {
      return comparePokedexes(
        firstPokedex,
        secondPokedex,
        versionGroupSortOrderById,
      );
    });
  };
  const completionRelevantLocalPokedexes = pokedexes.filter((pokedex) => {
    return (
      pokedex.is_completion_relevant && pokedex.pokedex_kind !== "national"
    );
  });

  if (completionRelevantLocalPokedexes.length) {
    return sortPokedexes(completionRelevantLocalPokedexes);
  }

  return sortPokedexes(
    pokedexes.filter((pokedex) => {
      return pokedex.pokedex_kind !== "national";
    }),
  );
};

export const getNationalMenuPokedex = ({
  pokedexes,
  versionGroups,
}: {
  pokedexes: Pokedex[];
  versionGroups: VersionGroup[];
}) => {
  const versionGroupSortOrderById = getVersionGroupSortOrderById(versionGroups);

  return (
    pokedexes
      .filter((pokedex) => {
        return pokedex.pokedex_kind === "national";
      })
      .sort((firstPokedex, secondPokedex) => {
        return comparePokedexes(
          firstPokedex,
          secondPokedex,
          versionGroupSortOrderById,
        );
      })[0] ?? null
  );
};

export const getPokedexEntriesByPokedexId = (entries: PokedexEntry[]) => {
  const entriesByPokedexId = new Map<number, PokedexEntry[]>();

  for (const entry of entries) {
    const currentEntries = entriesByPokedexId.get(entry.pokedex_id) ?? [];

    currentEntries.push(entry);
    entriesByPokedexId.set(entry.pokedex_id, currentEntries);
  }

  for (const [pokedexId, pokedexEntries] of entriesByPokedexId) {
    entriesByPokedexId.set(
      pokedexId,
      pokedexEntries.sort(comparePokedexEntries),
    );
  }

  return entriesByPokedexId;
};
