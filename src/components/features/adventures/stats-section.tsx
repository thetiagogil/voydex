import type { DashboardStats } from "@/types/dashboard";
import { CircleCheck, Compass, Notebook, Target } from "lucide-react";
import { StatsCard } from "./stats-card";

interface StatsSectionProps {
  stats: DashboardStats | null;
}

export const StatsSection = ({ stats }: StatsSectionProps) => {
  const data = stats ?? {
    total_plays: 0,
    active_plays: 0,
    completed_plays: 0,
    total_unique_species: 0,
    last_activity: null,
  };

  return (
    <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
      <StatsCard
        icon={<Compass className="h-5 w-5" />}
        value={data.total_plays}
        label="Total Playthroughs"
        variant="primary"
      />

      <StatsCard
        icon={<Target className="h-5 w-5" />}
        value={data.active_plays}
        variant="orange"
        label="Active Playthroughs"
      />

      <StatsCard
        icon={<CircleCheck className="h-5 w-5" />}
        value={data.completed_plays}
        variant="green"
        label="Completed Playthroughs"
      />

      <StatsCard
        icon={<Notebook className="h-5 w-5" />}
        value={data.total_unique_species}
        label="Unique Pokémon Caught"
      />
    </div>
  );
};
