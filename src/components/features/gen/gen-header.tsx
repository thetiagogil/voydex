import { Header } from "@/components/shared/header";
import { Icon } from "@/components/shared/icon";
import { QuickInfo } from "@/components/shared/quick-info";
import { StatCard } from "@/components/shared/stat-card";
import type { GenerationWithGames } from "@/types/gen";

interface GenHeaderProps {
  gen: GenerationWithGames;
}

export const GenHeader = ({ gen }: GenHeaderProps) => {
  const yearDisplay = `${gen.startYear} - Present`;

  return (
    <Header
      icon={
        <div className="bg-primary/10 border-primary/30 text-primary flex h-20 w-20 shrink-0 items-center justify-center rounded-xl border text-2xl font-bold">
          {gen.name.replace("Generation ", "")}
        </div>
      }
      title={gen.name}
      metadata={
        <div className="flex flex-wrap items-center gap-2">
          <QuickInfo
            icon={<Icon type="calendar" />}
            value={yearDisplay}
            title="Generation years"
          />
          <QuickInfo
            icon={<Icon type="game" />}
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
            variant="total"
          />
          <StatCard
            title={gen.userStats?.activePlays || 0}
            description="Active"
            variant="active"
          />
          <StatCard
            title={gen.userStats?.completedPlays || 0}
            description="Completed"
            variant="completed"
          />
        </div>
      }
    />
  );
};
