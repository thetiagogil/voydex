import { Icon } from "@/components/shared/icon";
import type { DashboardStats } from "../types";
import { StatCard } from "./stat-card";

type StatsSectionProps = {
  stats: DashboardStats | null;
};

export const StatsSection = ({ stats }: StatsSectionProps) => {
  const data = stats ?? {
    total_plays: 0,
    active_plays: 0,
    completed_plays: 0,
  };

  return (
    <div className="grid grid-cols-3 gap-4">
      <StatCard
        icon={<Icon type="total" size={20} />}
        value={data.total_plays}
        label="Total playthroughs"
        variant="total"
      />

      <StatCard
        icon={<Icon type="active" size={20} />}
        value={data.active_plays}
        variant="active"
        label="Active playthroughs"
      />

      <StatCard
        icon={<Icon type="completed" size={20} />}
        value={data.completed_plays}
        variant="completed"
        label="Completed playthroughs"
      />
    </div>
  );
};
