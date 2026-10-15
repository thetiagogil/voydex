import type {
  CollectibleProgressFilter,
  CollectibleSort,
  MainlinePlayCollectibleDetailRow,
  MainlinePlayCollectibleEntry,
  MainlinePlayCollectibleGroup,
  MainlinePlayCollectibleGroupRow,
  MainlinePlayProgressCollectiblesData,
} from "../types";

/*
 * What an area is for one collectible. Usually its location label (an island,
 * a region); when every entry shares one location, its places instead, so
 * the Isle of Armor's Diglett split into Fields of Honor, Soothing Wetlands
 * and the rest.
 */
export type CollectibleAreaLevel = "location" | "place";

/* An area: the entries that share an area label, as one section. */
export type CollectibleArea = {
  entries: MainlinePlayCollectibleEntry[];
  id: string;
  label: string;
};

export type CollectibleAreaSummary = CollectibleArea & {
  foundCount: number;
  isComplete: boolean;
};

const UNKNOWN_LOCATION_LABEL = "Location not recorded";

const compareText = (left: string, right: string) =>
  left.localeCompare(right, undefined, { sensitivity: "base" });

const toAnchorSlug = (label: string) =>
  label.toLocaleLowerCase().replaceAll(/[^\p{L}\p{N}]+/gu, "-");

/* A stable anchor for an area, so the Areas index can jump to it. */
const getCollectibleAreaId = (label: string) =>
  `collectible-area-${toAnchorSlug(label)}`;

const getLocationLabel = (entry: MainlinePlayCollectibleEntry) =>
  entry.locationLabel ?? UNKNOWN_LOCATION_LABEL;

export const getCollectibleAreaLevel = (
  entries: MainlinePlayCollectibleEntry[],
): CollectibleAreaLevel => {
  const locations = new Set(entries.map((entry) => entry.locationLabel));

  return locations.size === 1 &&
    !locations.has(null) &&
    entries.some((entry) => entry.subLocationLabel)
    ? "place"
    : "location";
};

/* A place-level entry with no place falls back to its location's name. */
const getAreaLabel = (
  entry: MainlinePlayCollectibleEntry,
  areaLevel: CollectibleAreaLevel,
) =>
  areaLevel === "place"
    ? (entry.subLocationLabel ?? getLocationLabel(entry))
    : getLocationLabel(entry);

export const buildMainlinePlayCollectiblesData = ({
  gameName,
  groupRows,
  rows,
}: {
  gameName: string;
  groupRows: MainlinePlayCollectibleGroupRow[];
  rows: MainlinePlayCollectibleDetailRow[];
}): MainlinePlayProgressCollectiblesData => {
  const groupRowById = new Map(groupRows.map((row) => [row.id, row]));
  const groupsById = new Map<number, MainlinePlayCollectibleGroup>();

  for (const row of rows) {
    if (
      !row.collectible_id ||
      !row.collectible_slug ||
      !row.collectible_name ||
      !row.collectible_entry_id ||
      !row.collectible_entry_name ||
      !row.collectible_entry_sort_order
    ) {
      continue;
    }

    const sourceGroup = groupRowById.get(row.collectible_id);
    const group =
      groupsById.get(row.collectible_id) ??
      ({
        entries: [],
        id: row.collectible_id,
        name: row.collectible_name,
        slug: row.collectible_slug,
        sortOrder: sourceGroup?.sort_order ?? row.collectible_id,
      } satisfies MainlinePlayCollectibleGroup);

    group.entries.push({
      description: row.description,
      id: row.collectible_entry_id,
      isCollected: row.is_collected === true,
      locationLabel: row.location_label,
      name: row.collectible_entry_name,
      sortOrder: row.collectible_entry_sort_order,
      subLocationLabel: row.sub_location_label,
    });
    groupsById.set(group.id, group);
  }

  const groups = [...groupsById.values()]
    .map((group) => ({
      ...group,
      entries: group.entries.sort(
        (left, right) => left.sortOrder - right.sortOrder,
      ),
    }))
    .sort((left, right) => left.sortOrder - right.sortOrder);

  return { gameName, groups };
};

export const getCollectibleEntryState = (
  entry: MainlinePlayCollectibleEntry,
  stateByEntryId: ReadonlyMap<number, boolean>,
) => stateByEntryId.get(entry.id) ?? entry.isCollected;

export const getCollectibleGroupCounts = ({
  group,
  stateByEntryId,
}: {
  group: MainlinePlayCollectibleGroup;
  stateByEntryId: ReadonlyMap<number, boolean>;
}) => {
  const collectedCount = group.entries.filter((entry) =>
    getCollectibleEntryState(entry, stateByEntryId),
  ).length;
  const totalCount = group.entries.length;

  return {
    collectedCount,
    percentage:
      totalCount > 0 ? Math.round((collectedCount / totalCount) * 100) : 0,
    remainingCount: Math.max(totalCount - collectedCount, 0),
    totalCount,
  };
};

export const filterCollectibleEntries = ({
  entries,
  progressFilter,
  query,
  stateByEntryId,
}: {
  entries: MainlinePlayCollectibleEntry[];
  progressFilter: CollectibleProgressFilter;
  query: string;
  stateByEntryId: ReadonlyMap<number, boolean>;
}) => {
  const normalizedQuery = query.trim().toLocaleLowerCase();

  return entries.filter((entry) => {
    const isCollected = getCollectibleEntryState(entry, stateByEntryId);
    const matchesProgress =
      progressFilter === "all" ||
      (progressFilter === "collected" && isCollected) ||
      (progressFilter === "missing" && !isCollected);
    const matchesQuery =
      !normalizedQuery ||
      [
        entry.name,
        entry.locationLabel,
        entry.subLocationLabel,
        entry.description,
      ].some((value) => value?.toLocaleLowerCase().includes(normalizedQuery));

    return matchesProgress && matchesQuery;
  });
};

const groupBy = <TKey>(
  entries: MainlinePlayCollectibleEntry[],
  getKey: (entry: MainlinePlayCollectibleEntry) => TKey,
) => {
  const groups = new Map<TKey, MainlinePlayCollectibleEntry[]>();

  for (const entry of entries) {
    const key = getKey(entry);
    const groupEntries = groups.get(key) ?? [];
    groupEntries.push(entry);
    groups.set(key, groupEntries);
  }

  return [...groups.entries()];
};

/*
 * Areas follow the chosen order: the game's numbering (each area where its
 * first entry falls) or areas and places from A to Z.
 */
export const groupCollectibleEntriesByArea = ({
  areaLevel,
  entries,
  sort,
}: {
  areaLevel: CollectibleAreaLevel;
  entries: MainlinePlayCollectibleEntry[];
  sort: CollectibleSort;
}): CollectibleArea[] => {
  const orderedEntries =
    sort === "location"
      ? [...entries].sort((left, right) => {
          const locationComparison = compareText(
            getLocationLabel(left),
            getLocationLabel(right),
          );

          if (locationComparison !== 0) {
            return locationComparison;
          }

          const subLocationComparison = compareText(
            left.subLocationLabel ?? "",
            right.subLocationLabel ?? "",
          );

          return subLocationComparison || left.sortOrder - right.sortOrder;
        })
      : entries;

  return groupBy(orderedEntries, (entry) => getAreaLabel(entry, areaLevel)).map(
    ([label, areaEntries]) => ({
      entries: areaEntries,
      id: getCollectibleAreaId(label),
      label,
    }),
  );
};

/* Every area of a collectible, found or not, with what has been found. */
export const getCollectibleAreaSummaries = ({
  areaLevel,
  entries,
  sort,
  stateByEntryId,
}: {
  areaLevel: CollectibleAreaLevel;
  entries: MainlinePlayCollectibleEntry[];
  sort: CollectibleSort;
  stateByEntryId: ReadonlyMap<number, boolean>;
}): CollectibleAreaSummary[] =>
  groupCollectibleEntriesByArea({ areaLevel, entries, sort }).map((area) => {
    const foundCount = area.entries.filter((entry) =>
      getCollectibleEntryState(entry, stateByEntryId),
    ).length;

    return {
      ...area,
      foundCount,
      isComplete: foundCount === area.entries.length,
    };
  });
