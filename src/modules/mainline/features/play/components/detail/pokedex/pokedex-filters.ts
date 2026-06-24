import type { MainlinePlayPokedexEntry } from "@/modules/mainline/features/play/types";
import { getPokedexDisplayName } from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";

export type PokedexFilter =
  | "all"
  | "caught"
  | "missing"
  | "optional"
  | "required"
  | "seen";

export type PokedexViewMode = "grid" | "list";

export const pokedexFilters: Array<{
  label: string;
  value: PokedexFilter;
}> = [
  { label: "All", value: "all" },
  { label: "Missing", value: "missing" },
  { label: "Seen", value: "seen" },
  { label: "Caught", value: "caught" },
  { label: "Required", value: "required" },
  { label: "Optional", value: "optional" },
];

export const pokedexSortItems = [
  { label: "Dex number", value: "dex-number" },
  { label: "Name", value: "name" },
] as const;

export type PokedexSort = (typeof pokedexSortItems)[number]["value"];

export const isRequiredPokedexEntry = (entry: MainlinePlayPokedexEntry) => {
  return Boolean(entry.is_source_required_for_completion);
};

export const isPokedexFilter = (value: string): value is PokedexFilter => {
  return pokedexFilters.some((filter) => filter.value === value);
};

export const filterPokedexEntries = (
  entries: MainlinePlayPokedexEntry[],
  filter: PokedexFilter,
  search: string,
) => {
  const normalizedSearch = search.trim().toLowerCase();

  return entries.filter((entry) => {
    const name = getPokedexDisplayName(entry).toLowerCase();
    const dexNumber = String(entry.pokedex_number ?? "");
    const nationalNumber = String(entry.national_number ?? "");
    const matchesSearch =
      !normalizedSearch ||
      name.includes(normalizedSearch) ||
      dexNumber.includes(normalizedSearch) ||
      nationalNumber.includes(normalizedSearch);

    if (!matchesSearch) {
      return false;
    }

    if (filter === "caught") {
      return Boolean(entry.is_caught);
    }

    if (filter === "missing") {
      return !entry.is_caught;
    }

    if (filter === "seen") {
      return Boolean(entry.is_seen) && !entry.is_caught;
    }

    if (filter === "required") {
      return isRequiredPokedexEntry(entry);
    }

    if (filter === "optional") {
      return !isRequiredPokedexEntry(entry);
    }

    return true;
  });
};

export const getSortableDexNumber = (entry: MainlinePlayPokedexEntry) => {
  return (
    entry.pokedex_number ?? entry.national_number ?? Number.MAX_SAFE_INTEGER
  );
};

export const sortPokedexEntries = (
  entries: MainlinePlayPokedexEntry[],
  sort: PokedexSort,
) => {
  return [...entries].sort((a, b) => {
    if (sort === "name") {
      return getPokedexDisplayName(a).localeCompare(getPokedexDisplayName(b));
    }

    return getSortableDexNumber(a) - getSortableDexNumber(b);
  });
};
