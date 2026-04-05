import { Icon } from "@/components/shared/icon";
import type { DashboardStats } from "@/types/dashboard";
import { StatsCard } from "./stats-card";

interface StatsSectionProps {
  stats: DashboardStats | null;
}

export const StatsSection = ({ stats }: StatsSectionProps) => {
  const data = stats ?? {
    total_plays: 0,
    active_plays: 0,
    completed_plays: 0,
    last_activity: null,
  };

  return (
    <div className="grid grid-cols-2 gap-4 lg:grid-cols-3">
      <StatsCard
        icon={<Icon type="total" size={20} />}
        value={data.total_plays}
        label="Total Playthroughs"
        variant="total"
      />

      <StatsCard
        icon={<Icon type="active" size={20} />}
        value={data.active_plays}
        variant="active"
        label="Active Playthroughs"
      />

      <StatsCard
        icon={<Icon type="completed" size={20} />}
        value={data.completed_plays}
        variant="completed"
        label="Completed Playthroughs"
      />
    </div>
  );
};
