import type { MainlinePlayCollectibleDetail } from "@/modules/mainline/shared/types/mainline.types";
import { groupCollectiblesByCollectible } from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { formatPokemonDisplayText } from "@/shared/domain/pokemon/display-text";

export type CollectibleGroup = {
  collectedCount: number;
  entries: MainlinePlayCollectibleDetail[];
  id: number;
  includedCount: number;
  name: string;
  totalCount: number;
  typeName: string;
};

export const collectibleSortItems = [
  { label: "Number", value: "number" },
  { label: "Location", value: "location" },
] as const;

export const collectibleStatusFilters = [
  { label: "All", value: "all" },
  { label: "Missing", value: "missing" },
  { label: "Collected", value: "collected" },
] as const;

export type CollectibleStatusFilter =
  (typeof collectibleStatusFilters)[number]["value"];

export const buildCollectibleGroups = (
  entries: MainlinePlayCollectibleDetail[],
): CollectibleGroup[] => {
  return groupCollectiblesByCollectible(entries).map((group) => {
    const firstEntry = group[0];

    return {
      collectedCount: group.filter((entry) => entry.is_collected).length,
      entries: group,
      id: firstEntry?.collectible_id ?? 0,
      includedCount: group.filter((entry) => entry.is_included_in_completion)
        .length,
      name: formatPokemonDisplayText(
        firstEntry?.collectible_name ?? "Collectible",
      ),
      totalCount: group.length,
      typeName: formatPokemonDisplayText(
        firstEntry?.collectible_type_name ?? "Collectible",
      ),
    };
  });
};

export const getGroupPercent = (group: CollectibleGroup) => {
  if (!group.totalCount) {
    return 0;
  }

  return Math.round((group.collectedCount / group.totalCount) * 100);
};

export const getEntryNumber = (entry: MainlinePlayCollectibleDetail) => {
  return (
    entry.collectible_entry_sort_order ?? entry.collectible_entry_id ?? "-"
  );
};

export const getSortableEntryNumber = (
  entry: MainlinePlayCollectibleDetail,
) => {
  return (
    entry.collectible_entry_sort_order ??
    entry.collectible_entry_id ??
    Number.MAX_SAFE_INTEGER
  );
};

export const getEntryLocation = (entry: MainlinePlayCollectibleDetail) => {
  return formatPokemonDisplayText(
    entry.sub_location_label ?? entry.location_label ?? "-",
  );
};

export const isCollectibleStatusFilter = (
  value: string,
): value is CollectibleStatusFilter => {
  return collectibleStatusFilters.some((filter) => filter.value === value);
};
