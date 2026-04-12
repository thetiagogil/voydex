import { PlayCard } from "@/shared/components/play-card";
import { Button } from "@/shared/components/ui/button";
import type { GameData, GamePlay } from "../types";

type PlaysSectionProps = {
  plays: GamePlay[];
  game: GameData;
  generationId: string;
  open: boolean;
  setOpen: (open: boolean) => void;
};

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
        <Button variant="outline" onClick={() => setOpen(true)}>
          New Play
        </Button>
      </div>

      <div className="flex flex-col gap-4">
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
