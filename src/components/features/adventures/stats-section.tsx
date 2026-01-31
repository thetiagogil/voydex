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
    total_unique_species: 0,
    last_activity: null,
  };

  return (
    <div className="grid grid-cols-2 gap-4 lg:grid-cols-4">
      <StatsCard
        icon={<Icon name="total" size={20} />}
        value={data.total_plays}
        label="Total Playthroughs"
        variant="primary"
      />

      <StatsCard
        icon={<Icon name="active" size={20} />}
        value={data.active_plays}
        variant="orange"
        label="Active Playthroughs"
      />

      <StatsCard
        icon={<Icon name="completed" size={20} />}
        value={data.completed_plays}
        variant="green"
        label="Completed Playthroughs"
      />

      <StatsCard
        icon={<Icon name="pokemonCaught" size={20} />}
        value={data.total_unique_species}
        label="Unique Pokémon Caught"
      />
    </div>
  );
};
