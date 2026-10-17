import type { Database } from "@/shared/types/database.types";

export type ReferenceTableName = keyof Database["reference"]["Tables"];
export type TrackingTableName = keyof Database["tracking"]["Tables"];
export type GameplayTableName = keyof Database["gameplay"]["Tables"];
export type ViewName = keyof Database["views"]["Views"];

export type ReferenceRow<TTable extends ReferenceTableName> =
  Database["reference"]["Tables"][TTable]["Row"];

export type TrackingRow<TTable extends TrackingTableName> =
  Database["tracking"]["Tables"][TTable]["Row"];

export type GameplayRow<TTable extends GameplayTableName> =
  Database["gameplay"]["Tables"][TTable]["Row"];

export type ViewRow<TView extends ViewName> =
  Database["views"]["Views"][TView]["Row"];
