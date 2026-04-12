import { Header } from "@/shared/components/header";
import { Icon } from "@/shared/components/icon";
import { QuickInfo } from "@/shared/components/quick-info";
import { StatCard } from "@/shared/components/stat-card";
import type { GenerationData } from "../types";

type GenerationHeaderProps = {
  generation: GenerationData;
};

export const GenerationHeader = ({ generation }: GenerationHeaderProps) => {
  return (
    <Header
      icon={
        <div className="bg-primary/10 border-primary/30 text-primary flex h-20 w-20 shrink-0 items-center justify-center rounded-xl border text-2xl font-bold">
          {generation.name.replace("Generation ", "")}
        </div>
      }
      title={generation.name}
      metadata={
        <div className="flex flex-wrap items-center gap-2 text-sm">
          <QuickInfo
            icon={<Icon type="game" />}
            value={generation.gameCount}
            title="Total games"
            variant="primary"
          />
          <span>•</span>
          <QuickInfo
            icon={<Icon type="calendar" />}
            value={generation.startYear}
            title="Generation years"
          />
        </div>
      }
      info={
        <div className="flex flex-wrap gap-3">
          <StatCard
            title={generation.userStats?.totalPlays || 0}
            description="Plays"
            variant="total"
          />
          <StatCard
            title={generation.userStats?.activePlays || 0}
            description="Active"
            variant="active"
          />
          <StatCard
            title={generation.userStats?.completedPlays || 0}
            description="Completed"
            variant="completed"
          />
        </div>
      }
    />
  );
};
