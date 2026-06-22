import type {
  GameplayRow,
  ReferenceRow,
  ViewRow,
} from "@/shared/types/database-helpers";

export type MainlinePlayCollectibleDetail =
  ViewRow<"mainline_play_collectible_detail">;
export type MainlinePlayCompletionSummary =
  ViewRow<"mainline_play_completion_summary">;
export type MainlineDashboardSummary = ViewRow<"mainline_dashboard_summary">;
export type MainlinePlayMilestoneCategorySummary =
  ViewRow<"mainline_play_milestone_category_summary">;
export type MainlinePlayMilestoneDetail =
  ViewRow<"mainline_play_milestone_detail">;
export type MainlinePlayOverview = ViewRow<"mainline_play_overview">;
export type MainlinePlayPokedexDetail = ViewRow<"mainline_play_pokedex_detail">;
export type MainlinePlayStatus = GameplayRow<"mainline_play_statuses">;
export type MainlinePlaySummary = ViewRow<"mainline_play_summary">;
export type MainlinePlayTeamDetail = ViewRow<"mainline_play_team_detail">;
export type MainlinePlayTimelineDetail =
  ViewRow<"mainline_play_timeline_detail">;
export type MainlineStatsSummary = ViewRow<"mainline_stats_summary">;
export type MainlineTeamPlanDetail = ViewRow<"mainline_team_plan_detail">;
export type MainlineTeamPlanSummary = ViewRow<"mainline_team_plan_summary">;
export type ProductFamily = ReferenceRow<"product_families">;
