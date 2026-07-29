import type { TrackingRow, ViewRow } from "@/shared/types/database-helpers";

export type MainlinePlayCollectibleEntry = {
  collectedAt: string | null;
  description: string | null;
  id: number;
  isCollected: boolean;
  locationLabel: string | null;
  name: string;
  slug: string;
  sortOrder: number;
  subLocationLabel: string | null;
};

export type MainlinePlayCollectibleGroup = {
  entries: MainlinePlayCollectibleEntry[];
  id: number;
  isIncludedInCompletion: boolean;
  isRequiredForCompletion: boolean;
  name: string;
  slug: string;
  sortOrder: number;
  totalCount: number;
  typeId: number;
  typeName: string;
  typeSlug: string;
};

export type MainlinePlayProgressCollectiblesData = {
  gameName: string;
  groups: MainlinePlayCollectibleGroup[];
};

export type MainlinePlayCollectibleDetailRow =
  ViewRow<"mainline_play_collectible_detail">;

export type MainlinePlayCollectibleGroupRow =
  TrackingRow<"mainline_collectibles">;

export type CollectibleProgressFilter = "all" | "collected" | "missing";
export type CollectibleSort = "canonical" | "location";
