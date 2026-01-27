import { Header } from "@/components/shared/header";
import { QuickInfo } from "@/components/shared/quick-info";
import { StatCard } from "@/components/shared/stat-card";
import { Calendar, MapPin } from "lucide-react";
import Image from "next/image";

interface GameHeaderProps {
  game: GameWithFullData;
}

export const GameHeader = ({ game }: GameHeaderProps) => {
  const totalPlays = game.plays?.length || 0;
  const activePlays =
    game.plays?.filter((play) => play.status === "active").length || 0;
  const completedPlays =
    game.plays?.filter((play) => play.status === "completed").length || 0;
  return (
    <Header
      icon={
        <div className="bg-muted border-border rounded-lg border p-1">
          <Image
            src={game.cover_url!}
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
            icon={<MapPin className="h-3 w-3" />}
            value={game.region.name}
            title="Region"
          />
          <QuickInfo
            icon={<Calendar className="h-3 w-3" />}
            value={game.release_year}
            title="Release Year"
          />
        </div>
      }
      info={
        <div className="flex flex-wrap gap-3">
          <StatCard title={totalPlays} description="Plays" variant="primary" />
          <StatCard title={activePlays} description="Active" variant="orange" />
          <StatCard
            title={completedPlays}
            description="Completed"
            variant="green"
          />
        </div>
      }
    />
  );
};
