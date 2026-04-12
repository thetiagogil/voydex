import { Header } from "@/shared/components/header";
import { Icon } from "@/shared/components/icon";
import { QuickInfo } from "@/shared/components/quick-info";
import { StatCard } from "@/shared/components/stat-card";
import Image from "next/image";
import type { GameData } from "../types";

type GameHeaderProps = {
  game: GameData;
};

export const GameHeader = ({ game }: GameHeaderProps) => {
  return (
    <Header
      icon={
        <div className="bg-muted border-border rounded-lg border p-1">
          <Image
            src={game.coverUrl!}
            alt={game.name}
            height={72}
            width={72}
            className="rounded-lg"
          />
        </div>
      }
      title={game.name}
      metadata={
        <div className="flex flex-wrap items-center gap-2">
          <QuickInfo
            icon={<Icon type="region" />}
            value={game.region.name}
            title="Region"
          />
          <QuickInfo
            icon={<Icon type="calendar" />}
            value={game.releaseYear}
            title="Release Year"
          />
        </div>
      }
      info={
        <div className="flex flex-wrap gap-3">
          <StatCard
            title={game.userStats.totalPlays}
            description="Plays"
            variant="total"
          />
          <StatCard
            title={game.userStats.activePlays}
            description="Active"
            variant="active"
          />
          <StatCard
            title={game.userStats.completedPlays}
            description="Completed"
            variant="completed"
          />
        </div>
      }
    />
  );
};
