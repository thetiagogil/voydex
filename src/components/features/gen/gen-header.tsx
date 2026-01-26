import { Header } from "@/components/shared/header";
import { StatBadge } from "@/components/shared/stat-badge";
import { StatCard } from "@/components/shared/stat-card";
import { Calendar, Gamepad2 } from "lucide-react";

interface GenHeaderProps {
  gen: GenerationWithGames;
}

export const GenHeader = ({ gen }: GenHeaderProps) => {
  const yearRange = gen.end_year
    ? `${gen.start_year} - ${gen.end_year}`
    : `${gen.start_year} - Present`;

  return (
    <Header
      icon={
        <div className="bg-primary/10 border-primary/30 text-primary flex h-20 w-20 shrink-0 items-center justify-center rounded-xl border text-2xl font-bold">
          {gen.name.replace("Generation ", "")}
        </div>
      }
      title={gen.name}
      metadata={
        <div className="flex flex-wrap items-center gap-2 text-sm">
          <StatBadge
            icon={<Calendar className="h-4 w-4" />}
            value={yearRange}
            title="Generation years"
          />
          <StatBadge
            icon={<Gamepad2 className="h-4 w-4" />}
            value={gen.staticStats.gameCount}
            title="Total games"
          />
        </div>
      }
      info={
        <div className="flex flex-wrap gap-3">
          <StatCard
            title={gen.userStats?.totalPlays || 0}
            description="Plays"
            variant="primary"
          />
          <StatCard
            title={gen.userStats?.activePlays || 0}
            description="Active"
            variant="orange"
          />
          <StatCard
            title={gen.userStats?.completedPlays || 0}
            description="Completed"
            variant="green"
          />
        </div>
      }
    />
  );
};
