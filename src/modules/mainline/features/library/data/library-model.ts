import type {
  LibraryPlay,
  LibraryTab,
  LibraryUsage,
} from "@/modules/mainline/features/library/types";

/*
 * The links, gathered: a function from a rule's or tag's id to the Plays
 * that use it, by name, and how many. A link to a Play you can't read is
 * left out.
 */
export const gatherLibraryUsage = (
  links: { itemId: string; playId: string }[],
  plays: LibraryPlay[],
) => {
  const playById = new Map(plays.map((play) => [play.id, play]));
  const byItem = new Map<string, LibraryPlay[]>();

  for (const link of links) {
    const play = playById.get(link.playId);

    if (play)
      byItem.set(link.itemId, [...(byItem.get(link.itemId) ?? []), play]);
  }

  return (id: string): LibraryUsage => {
    const used = (byItem.get(id) ?? []).toSorted((left, right) =>
      left.name.localeCompare(right.name),
    );

    return { playCount: used.length, plays: used };
  };
};

const plural = (count: number, noun: string) =>
  `${count} ${noun}${count === 1 ? "" : "s"}`;

/* Where it's used, as the card says: "In 2 Plays", "Not used yet". */
export const getLibraryUsageLabel = ({
  playCount,
}: Pick<LibraryUsage, "playCount">) =>
  playCount ? `In ${plural(playCount, "Play")}` : "Not used yet";

/*
 * What deleting takes with it, for the confirm: "It leaves 2 Plays." or
 * nothing when it isn't used.
 */
export const getLibraryDeleteNote = ({
  playCount,
}: Pick<LibraryUsage, "playCount">) =>
  playCount ? `It leaves ${plural(playCount, "Play")}.` : null;

/* The tab a link asks for; Rules when it names none or one we don't have. */
export const parseLibraryTab = (value: unknown): LibraryTab =>
  value === "tags" ? "tags" : "rules";

export type LibrarySort = "name" | "used";

/* Who made a rule: Voydex, you, or "" for both. */
export type LibraryMaker = "" | "voydex" | "yours";

export type LibraryFilters = {
  /* A rule kind's slug, or "" for every kind; tags ignore it. */
  kind: string;
  /* Tags are all yours, so they ignore it. */
  maker: LibraryMaker;
  query: string;
  sort: LibrarySort;
};

export const defaultLibraryFilters: LibraryFilters = {
  kind: "",
  maker: "",
  query: "",
  sort: "name",
};

export const libraryMakerLabels: Record<LibraryMaker, string> = {
  "": "Voydex's and yours",
  voydex: "Voydex's",
  yours: "Yours",
};

/* Filters that leave tags alone: tags have no kind and are all yours. */
export const toTagFilters = (filters: LibraryFilters): LibraryFilters => ({
  ...filters,
  kind: "",
  maker: "",
});

export const librarySortLabels: Record<LibrarySort, string> = {
  name: "Name",
  used: "Most used",
};

/* Whether a filter narrows the list (the order alone doesn't). */
export const hasActiveLibraryFilters = (filters: LibraryFilters) =>
  filters.query.trim() !== "" || filters.kind !== "" || filters.maker !== "";

/* How many of the bar's filters (not the search) narrow the list. */
export const countActiveLibraryFilters = (filters: LibraryFilters) =>
  Number(filters.kind !== "") + Number(filters.maker !== "");

/* Searching ignores case and accents, so "pokemon" finds "Pokémon". */
const toSearchText = (text: string) =>
  text
    .normalize("NFD")
    .replace(/\p{Diacritic}/gu, "")
    .toLowerCase()
    .trim();

const byUse = (
  left: Pick<LibraryUsage, "playCount">,
  right: Pick<LibraryUsage, "playCount">,
) => right.playCount - left.playCount;

/*
 * The rules or tags the bar leaves: the search matches a name (and a
 * rule's kind), the kind and who made it narrow rules, and the order is by
 * name or by how many Plays use each.
 */
export const filterAndSortLibrary = <
  TItem extends Pick<LibraryUsage, "playCount"> & {
    isBuiltIn?: boolean;
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
    .filter(
      (item) =>
        !filters.maker ||
        (filters.maker === "voydex") === Boolean(item.isBuiltIn),
    )
    .toSorted(
      (left, right) =>
        (filters.sort === "used" ? byUse(left, right) : 0) ||
        left.name.localeCompare(right.name),
    );
};
