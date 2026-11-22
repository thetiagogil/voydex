import { StatsBoard } from "@/modules/mainline/features/stats/components/stats-board";
import type { StatsModel } from "@/modules/mainline/shared/data/stats-model";

type MainlineStatsPageProps = {
  stats: StatsModel;
};

/*
 * Statistics (v3 `statistics`): your Plays added up, shown rather than
 * told (see `StatsBoard`). The whole page shows for everyone, from no Play
 * at all: a section with nothing to show yet keeps its place and says what
 * fills it, and with no Play the card that starts your first one leads.
 * Every figure is read from what you recorded.
 */
export const MainlineStatsPage = ({ stats }: MainlineStatsPageProps) => (
  <StatsBoard stats={stats} />
);
