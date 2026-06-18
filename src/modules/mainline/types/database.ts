import type { Database } from "@/types/database.types";

export type PublicTableName = keyof Database["public"]["Tables"];
export type ReferenceTableName = keyof Database["reference"]["Tables"];
export type TrackingTableName = keyof Database["tracking"]["Tables"];
export type GameplayTableName = keyof Database["gameplay"]["Tables"];
export type PlanningTableName = keyof Database["planning"]["Tables"];
export type ViewName = keyof Database["views"]["Views"];

export type PublicRow<TTable extends PublicTableName> =
  Database["public"]["Tables"][TTable]["Row"];

export type ReferenceRow<TTable extends ReferenceTableName> =
  Database["reference"]["Tables"][TTable]["Row"];

export type TrackingRow<TTable extends TrackingTableName> =
  Database["tracking"]["Tables"][TTable]["Row"];

export type GameplayRow<TTable extends GameplayTableName> =
  Database["gameplay"]["Tables"][TTable]["Row"];

export type PlanningRow<TTable extends PlanningTableName> =
  Database["planning"]["Tables"][TTable]["Row"];

export type ViewRow<TView extends ViewName> =
  Database["views"]["Views"][TView]["Row"];
