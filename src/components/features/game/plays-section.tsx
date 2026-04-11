import { Button } from "@/components/ui/button";
import type { GamePlaySummary, GameWithFullData } from "@/types/game";
import { PlayCard } from "../shared/play-card";

interface PlaysSectionProps {
  plays: GamePlaySummary[];
  game: GameWithFullData;
  generationId: string;
  open: boolean;
  setOpen: (open: boolean) => void;
}

export const PlaysSection = ({
  plays,
  game,
  generationId,
  setOpen,
}: PlaysSectionProps) => {
  return (
    <div className="space-y-4">
      <div className="flex justify-between">
        <h2 className="text-2xl font-semibold">Games</h2>
        <Button variant="ghost" onClick={() => setOpen(true)}>
          New Play
        </Button>
      </div>
      <div className="flex flex-col">
        {plays.map((play) => (
          <PlayCard
            key={play.id}
            play={play}
            generationId={generationId}
            gameSlug={game.slug}
          />
        ))}
      </div>
    </div>
  );
};
