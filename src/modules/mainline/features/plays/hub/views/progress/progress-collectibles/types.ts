import type { TrackingRow, ViewRow } from "@/shared/types/database-helpers";

export type MainlinePlayCollectibleEntry = {
  description: string | null;
  id: number;
  isCollected: boolean;
  locationLabel: string | null;
  name: string;
  sortOrder: number;
  subLocationLabel: string | null;
};

export type MainlinePlayCollectibleGroup = {
  entries: MainlinePlayCollectibleEntry[];
  id: number;
  name: string;
  slug: string;
  sortOrder: number;
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
