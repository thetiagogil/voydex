import { PlayCard } from "@/shared/components/play-card";
import type { PlaySummary } from "../types";

interface PlaysListProps {
  plays: PlaySummary[];
}

export const PlaysList = ({ plays }: PlaysListProps) => {
  return (
    <div className="flex flex-col gap-3">
      {plays.map((play) => (
        <PlayCard
          key={play.id}
          play={play}
          generationId={play.game.generation.id.toString()}
          gameSlug={play.game.slug}
        />
      ))}
    </div>
  );
};
