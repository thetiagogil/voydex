import type {
  CollectibleProgressFilter,
  CollectibleSort,
  MainlinePlayCollectibleDetailRow,
  MainlinePlayCollectibleEntry,
  MainlinePlayCollectibleGroup,
  MainlinePlayCollectibleGroupRow,
  MainlinePlayProgressCollectiblesData,
} from "../types";

export type CollectibleLocationSection = {
  entries: MainlinePlayCollectibleEntry[];
  id: string;
  label: string;
};

const UNKNOWN_LOCATION_LABEL = "Location not recorded";

const compareText = (left: string, right: string) =>
  left.localeCompare(right, undefined, { sensitivity: "base" });

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
      !row.collectible_type_id ||
      !row.collectible_type_slug ||
      !row.collectible_type_name ||
      !row.collectible_entry_id ||
      !row.collectible_entry_slug ||
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
        isIncludedInCompletion: row.is_included_in_completion === true,
        isRequiredForCompletion: row.is_required_for_completion === true,
        name: row.collectible_name,
        slug: row.collectible_slug,
        sortOrder: sourceGroup?.sort_order ?? row.collectible_id,
        totalCount: sourceGroup?.total_count ?? 0,
        typeId: row.collectible_type_id,
        typeName: row.collectible_type_name,
        typeSlug: row.collectible_type_slug,
      } satisfies MainlinePlayCollectibleGroup);

    group.entries.push({
      collectedAt: row.collected_at,
      description: row.description,
      id: row.collectible_entry_id,
      isCollected: row.is_collected === true,
      locationLabel: row.location_label,
      name: row.collectible_entry_name,
      slug: row.collectible_entry_slug,
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
      totalCount: Math.max(group.totalCount, group.entries.length),
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
  location,
  progressFilter,
  query,
  stateByEntryId,
}: {
  entries: MainlinePlayCollectibleEntry[];
  location: string;
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
    const matchesLocation =
      location === "all" ||
      (entry.locationLabel ?? UNKNOWN_LOCATION_LABEL) === location;
    const matchesQuery =
      !normalizedQuery ||
      [
        entry.name,
        entry.locationLabel,
        entry.subLocationLabel,
        entry.description,
      ].some((value) => value?.toLocaleLowerCase().includes(normalizedQuery));

    return matchesProgress && matchesLocation && matchesQuery;
  });
};

export const groupCollectibleEntriesByLocation = ({
  entries,
  sort,
}: {
  entries: MainlinePlayCollectibleEntry[];
  sort: CollectibleSort;
}): CollectibleLocationSection[] => {
  const orderedEntries =
    sort === "location"
      ? [...entries].sort((left, right) => {
          const locationComparison = compareText(
            left.locationLabel ?? UNKNOWN_LOCATION_LABEL,
            right.locationLabel ?? UNKNOWN_LOCATION_LABEL,
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
  const sections = new Map<string, MainlinePlayCollectibleEntry[]>();

  for (const entry of orderedEntries) {
    const label = entry.locationLabel ?? UNKNOWN_LOCATION_LABEL;
    const sectionEntries = sections.get(label) ?? [];
    sectionEntries.push(entry);
    sections.set(label, sectionEntries);
  }

  return [...sections.entries()].map(([label, sectionEntries], index) => ({
    entries: sectionEntries,
    id: `${index}:${label}`,
    label,
  }));
};

export const getCollectibleLocationOptions = (
  entries: MainlinePlayCollectibleEntry[],
) => [
  { label: "All locations", value: "all" },
  ...[
    ...new Set(
      entries.map((entry) => entry.locationLabel ?? UNKNOWN_LOCATION_LABEL),
    ),
  ]
    .sort(compareText)
    .map((location) => ({ label: location, value: location })),
];
