import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";

export type CollectionKind = "all" | "many" | "shiny" | "team";
export type CollectionSort = "dex" | "recent" | "used";

export type CollectionFilters = {
  kind: CollectionKind;
  query: string;
  sort: CollectionSort;
  /* A type slug, or "" for every type. */
  type: string;
};

export const defaultCollectionFilters: CollectionFilters = {
  kind: "all",
  query: "",
  sort: "dex",
  type: "",
};

export const collectionKindLabels: Record<CollectionKind, string> = {
  all: "All",
  many: "In several Plays",
  shiny: "Shiny",
  team: "On a team now",
};

export const collectionSortLabels: Record<CollectionSort, string> = {
  dex: "Pokédex number",
  recent: "Recently recorded",
  used: "Most used",
};

const kindMatchers: Record<
  CollectionKind,
  (entry: TrainerPokemonEntry) => boolean
> = {
  all: () => true,
  many: (entry) => entry.playIds.length > 1,
  shiny: (entry) => entry.shiny,
  team: (entry) => entry.onTeamNow,
};

export const countCollectionKinds = (entries: TrainerPokemonEntry[]) => {
  return Object.fromEntries(
    (Object.keys(kindMatchers) as CollectionKind[]).map((kind) => [
      kind,
      entries.filter(kindMatchers[kind]).length,
    ]),
  ) as Record<CollectionKind, number>;
};

const sorters: Record<
  CollectionSort,
  (left: TrainerPokemonEntry, right: TrainerPokemonEntry) => number
> = {
  dex: (left, right) =>
    (left.nationalNumber ?? Number.MAX_SAFE_INTEGER) -
      (right.nationalNumber ?? Number.MAX_SAFE_INTEGER) ||
    left.name.localeCompare(right.name),
  recent: (left, right) =>
    (right.lastUsedAt ?? "").localeCompare(left.lastUsedAt ?? "") ||
    sorters.dex(left, right),
  used: (left, right) =>
    right.playIds.length - left.playIds.length ||
    right.members.length - left.members.length ||
    sorters.dex(left, right),
};

const normalizeCollectionQuery = (value: string) =>
  value.trim().toLocaleLowerCase("en");

export const filterAndSortCollection = (
  entries: TrainerPokemonEntry[],
  filters: CollectionFilters,
) => {
  const query = normalizeCollectionQuery(filters.query);

  return entries
    .filter(kindMatchers[filters.kind])
    .filter(
      (entry) =>
        !filters.type || entry.types.some((type) => type.slug === filters.type),
    )
    .filter(
      (entry) =>
        !query ||
        normalizeCollectionQuery(entry.name).includes(query) ||
        entry.members.some((member) =>
          normalizeCollectionQuery(member.name).includes(query),
        ),
    )
    .toSorted(sorters[filters.sort]);
};

export const hasActiveCollectionFilters = (filters: CollectionFilters) =>
  filters.kind !== "all" ||
  Boolean(filters.type) ||
  Boolean(filters.query.trim());
