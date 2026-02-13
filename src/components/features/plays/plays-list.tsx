import { PlayCard } from "@/components/features/shared/play-card";
import type { GamePlaySummary } from "@/types/game";

interface PlaysListProps {
  plays: GamePlaySummary[];
}

export const PlaysList = ({ plays }: PlaysListProps) => {
  return (
    <div className="flex flex-col gap-3">
      {plays.map((play) => (
        <PlayCard
          key={play.id}
          play={play}
          genId={play.game.generation.id.toString()}
          gameSlug={play.game.slug}
        />
      ))}
    </div>
  );
};
