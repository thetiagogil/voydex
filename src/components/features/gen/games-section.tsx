import type { GameWithPlayStats } from "@/types/gen";
import { GameCard } from "./game-card";

interface GamesSectionProps {
  games: GameWithPlayStats[];
  genId: string;
}

export const GamesSection = ({ games, genId }: GamesSectionProps) => {
  return (
    <div className="space-y-4">
      <h2 className="text-2xl font-semibold">Games</h2>
      <div className="grid grid-cols-1 gap-10 sm:gap-6 md:grid-cols-3">
        {games.map((game) => (
          <GameCard key={game.id} game={game} genId={genId} />
        ))}
      </div>
    </div>
  );
};
