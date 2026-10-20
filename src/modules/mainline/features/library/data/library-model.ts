import type {
  LibraryTab,
  LibraryUsage,
} from "@/modules/mainline/features/library/types";

/* The links' ids, counted: a function from a rule's or tag's id to its usage. */
export const countLibraryUsage = (playIds: string[]) => {
  const plays = playIds.reduce(
    (counts, id) => counts.set(id, (counts.get(id) ?? 0) + 1),
    new Map<string, number>(),
  );

  return (id: string): LibraryUsage => ({ playCount: plays.get(id) ?? 0 });
};

const plural = (count: number, noun: string) =>
  `${count} ${noun}${count === 1 ? "" : "s"}`;

/* Where it's used, as the card says: "In 2 Plays", "Not used yet". */
export const getLibraryUsageLabel = ({ playCount }: LibraryUsage) =>
  playCount ? `In ${plural(playCount, "Play")}` : "Not used yet";

/*
 * What deleting takes with it, for the confirm: "It leaves 2 Plays." or
 * nothing when it isn't used.
 */
export const getLibraryDeleteNote = ({ playCount }: LibraryUsage) =>
  playCount ? `It leaves ${plural(playCount, "Play")}.` : null;

/* The tab a link asks for; Rules when it names none or one we don't have. */
export const parseLibraryTab = (value: unknown): LibraryTab =>
  value === "tags" ? "tags" : "rules";

export type LibrarySort = "name" | "used";

export type LibraryFilters = {
  /* A rule kind's slug, or "" for every kind; tags ignore it. */
  kind: string;
  query: string;
  sort: LibrarySort;
};

export const defaultLibraryFilters: LibraryFilters = {
  kind: "",
  query: "",
  sort: "name",
};

export const librarySortLabels: Record<LibrarySort, string> = {
  name: "Name",
  used: "Most used",
};

/* Whether a filter narrows the list (the order alone doesn't). */
export const hasActiveLibraryFilters = (filters: LibraryFilters) =>
  filters.query.trim() !== "" || filters.kind !== "";

/* Searching ignores case and accents, so "pokemon" finds "Pokémon". */
const toSearchText = (text: string) =>
  text
    .normalize("NFD")
    .replace(/\p{Diacritic}/gu, "")
    .toLowerCase()
    .trim();

const byUse = (left: LibraryUsage, right: LibraryUsage) =>
  right.playCount - left.playCount;

/*
 * The rules or tags the bar leaves: the search matches a name (and a
 * rule's kind), the kind narrows rules, and the order is by name or by how
 * many Plays use each.
 */
export const filterAndSortLibrary = <
  TItem extends LibraryUsage & {
    kind?: { slug: string; name: string };
    name: string;
  },
>(
  items: TItem[],
  filters: LibraryFilters,
) => {
  const query = toSearchText(filters.query);

  return items
    .filter(
      (item) =>
        !query ||
        toSearchText(`${item.name} ${item.kind?.name ?? ""}`).includes(query),
    )
    .filter((item) => !filters.kind || item.kind?.slug === filters.kind)
    .toSorted(
      (left, right) =>
        (filters.sort === "used" ? byUse(left, right) : 0) ||
        left.name.localeCompare(right.name),
    );
};
