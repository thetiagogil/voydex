import { PlayCard } from "@/shared/components/play-card";
import { Button } from "@/shared/components/ui/button";
import type { GamePlay } from "../types";

type PlaysSectionProps = {
  plays: GamePlay[];
  open: boolean;
  setOpen: (open: boolean) => void;
};

export const PlaysSection = ({ plays, setOpen }: PlaysSectionProps) => {
  return (
    <div className="space-y-4">
      <div className="flex justify-between">
        <h2 className="text-2xl font-semibold">Plays</h2>
        <Button variant="outline" onClick={() => setOpen(true)}>
          New Play
        </Button>
      </div>

      <div className="flex flex-col gap-4">
        {plays.map((play) => (
          <PlayCard key={play.id} play={play} />
        ))}
      </div>
    </div>
  );
};
