import { Button } from "@/components/ui/button";
import { PlayCard } from "./play-card";

interface PlaysSectionProps {
  plays: GamePlaySummary[];
  game: GameWithFullData;
  genId: string;
  open: boolean;
  setOpen: (open: boolean) => void;
}

export const PlaysSection = ({
  plays,
  game,
  genId,
  setOpen,
}: PlaysSectionProps) => {
  return (
    <div className="space-y-4">
      <div className="flex justify-between">
        <h2 className="text-2xl font-semibold">Games</h2>
        <Button variant="outline-secondary" onClick={() => setOpen(true)}>
          New Play
        </Button>
      </div>
      <div className="grid grid-cols-1 gap-10 lg:grid-cols-2 lg:gap-6">
        {plays.map((play) => (
          <PlayCard
            key={play.id}
            play={play}
            genId={genId}
            gameSlug={game.slug}
          />
        ))}
      </div>
    </div>
  );
};
