import type { FavouritePokemon } from "@/modules/mainline/features/collection/data/favourite-pokemon-model";
import {
  findSpeciesGeneration,
  type SpeciesGeneration,
} from "@/modules/reference/features/pokemon/data/species-generations";

export type FavouriteKind = "all" | "owned" | "waiting";
export type FavouriteSort = "dex" | "recent" | "used";

export type FavouriteFilters = {
  /* A generation's id, or "" for every generation. */
  generation: string;
  kind: FavouriteKind;
  query: string;
  sort: FavouriteSort;
  /* A type slug, or "" for every type. */
  type: string;
};

/* Newest heart first: Favourites is the list you keep adding to. */
export const defaultFavouriteFilters: FavouriteFilters = {
  generation: "",
  kind: "all",
  query: "",
  sort: "recent",
  type: "",
};

export const favouriteKindLabels: Record<FavouriteKind, string> = {
  all: "All",
  owned: "On your teams",
  waiting: "Not yet",
};

export const favouriteSortLabels: Record<FavouriteSort, string> = {
  dex: "Pokédex number",
  recent: "Newest heart",
  used: "Most used",
};

const kindMatchers: Record<
  FavouriteKind,
  (favourite: FavouritePokemon) => boolean
> = {
  all: () => true,
  owned: (favourite) => favourite.owned !== null,
  waiting: (favourite) => favourite.owned === null,
};

export const countFavouriteKinds = (favourites: FavouritePokemon[]) =>
  Object.fromEntries(
    (Object.keys(kindMatchers) as FavouriteKind[]).map((kind) => [
      kind,
      favourites.filter(kindMatchers[kind]).length,
    ]),
  ) as Record<FavouriteKind, number>;

/* How many filters are set beyond search and sort (the toolbar's count). */
export const countActiveFavouriteFilters = (filters: FavouriteFilters) =>
  (filters.kind === "all" ? 0 : 1) +
  (filters.generation ? 1 : 0) +
  (filters.type ? 1 : 0);

export const hasActiveFavouriteFilters = (filters: FavouriteFilters) =>
  countActiveFavouriteFilters(filters) > 0 || Boolean(filters.query.trim());

const sorters: Record<
  FavouriteSort,
  (left: FavouritePokemon, right: FavouritePokemon) => number
> = {
  dex: (left, right) =>
    (left.nationalNumber ?? Number.MAX_SAFE_INTEGER) -
      (right.nationalNumber ?? Number.MAX_SAFE_INTEGER) ||
    left.formId - right.formId,
  recent: (left, right) =>
    right.favouritedAt.localeCompare(left.favouritedAt) ||
    sorters.dex(left, right),
  /* As the Pokémon view's Most used; the ones not used yet go last. */
  used: (left, right) =>
    (right.owned?.playIds.length ?? 0) - (left.owned?.playIds.length ?? 0) ||
    (right.owned?.members.length ?? 0) - (left.owned?.members.length ?? 0) ||
    sorters.dex(left, right),
};

const normalizeQuery = (value: string) => value.trim().toLocaleLowerCase("en");

export const filterAndSortFavourites = (
  favourites: FavouritePokemon[],
  filters: FavouriteFilters,
  generations: SpeciesGeneration[] = [],
) => {
  const query = normalizeQuery(filters.query);
  const generationId = filters.generation ? Number(filters.generation) : null;

  return favourites
    .filter(kindMatchers[filters.kind])
    .filter(
      (favourite) =>
        generationId === null ||
        findSpeciesGeneration(generations, favourite.nationalNumber)?.id ===
          generationId,
    )
    .filter(
      (favourite) =>
        !filters.type ||
        favourite.types.some((type) => type.slug === filters.type),
    )
    .filter(
      (favourite) => !query || normalizeQuery(favourite.name).includes(query),
    )
    .toSorted(sorters[filters.sort]);
};
