import type { GenerationGame } from "../types";
import { GameCard } from "./game-card";

type GamesSectionProps = {
  games: GenerationGame[];
};

export const GamesSection = ({ games }: GamesSectionProps) => {
  return (
    <div className="space-y-4">
      <h2 className="text-2xl font-semibold">Games</h2>
      <div className="grid grid-cols-1 gap-10 sm:gap-4 md:grid-cols-3">
        {games.map((game) => (
          <GameCard key={game.id} game={game} />
        ))}
      </div>
    </div>
  );
};
