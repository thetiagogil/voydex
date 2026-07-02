import type {
  MainlineDashboardSummary,
  MainlinePlaySummary,
  MainlineStatsSummary,
} from "@/modules/mainline/shared/types/mainline.types";

export type MainlineDashboardData = {
  recentPlays: MainlinePlaySummary[];
  statsSummary: MainlineStatsSummary | null;
  summary: MainlineDashboardSummary | null;
};
