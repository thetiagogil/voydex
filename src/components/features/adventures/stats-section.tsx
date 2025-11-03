import { type AdventureStats } from "@/lib/mock-data/adventures";
import { Award, Target, Trophy } from "lucide-react";
import { StatsCard } from "./stats-card";

interface StatsSectionProps {
  stats: AdventureStats;
}

export const StatsSection = ({ stats }: StatsSectionProps) => {
  return (
    <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
      <StatsCard
        icon={<Target className="h-5 w-5" />}
        value={stats.activePlaythroughs}
        label="Active Adventures"
        description={`Out of ${stats.totalPlaythroughs} total adventures`}
      />
      <StatsCard
        icon={<Trophy className="h-5 w-5" />}
        value={stats.totalBadges}
        label="Badges Earned"
        description="Across all adventures"
      />
      <StatsCard
        icon={<Award className="h-5 w-5" />}
        value={stats.totalPokemonCaught}
        label="Pokémon Caught"
        description="Across all adventures"
      />
    </div>
  );
};
