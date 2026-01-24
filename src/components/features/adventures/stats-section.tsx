import { QuickStat } from "@/components/shared/quick-stat";
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
      <StatsCard>
        <h2>All Playthroughs</h2>
        <QuickStat
          size="lg"
          icon={<Compass className="h-5 w-5" />}
          value={data.total_plays}
          variant="primary"
        />
      </StatsCard>

      <StatsCard>
        <h2>Active Playthroughs</h2>
        <QuickStat
          size="lg"
          icon={<Target className="h-5 w-5" />}
          value={data.active_plays}
          variant="yellow"
        />
      </StatsCard>

      <StatsCard>
        <h2>Finished Playthroughs</h2>
        <QuickStat
          size="lg"
          icon={<CircleCheck className="h-5 w-5" />}
          value={data.completed_plays}
          variant="green"
        />
      </StatsCard>

      <StatsCard>
        <h2>Species Caught</h2>
        <QuickStat
          size="lg"
          icon={<Notebook className="h-5 w-5" />}
          value={data.total_unique_species}
        />
      </StatsCard>
    </div>
  );
};
