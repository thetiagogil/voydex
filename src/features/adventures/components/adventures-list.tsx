import { PlayCard } from "@/shared/components/play-card";
import type { AdventuresPlayOverview } from "../types";

type AdventuresListProps = {
  plays: AdventuresPlayOverview[];
};

export const AdventuresList = ({ plays }: AdventuresListProps) => {
  return (
    <div className="flex flex-col gap-3">
      {plays.map((play) => (
        <PlayCard key={play.id} play={play} />
      ))}
    </div>
  );
};
