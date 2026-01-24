import { GameCard } from "./game-card";

interface GamesSectionProps {
  games: GameWithPlayStats[];
  genId: string;
}

const GamesGrid = ({
  games,
  genId,
}: {
  games: GameWithPlayStats[];
  genId: string;
}) => {
  return (
    <div className="flex flex-wrap justify-center gap-10 sm:justify-start sm:gap-6">
      {games.map((game) => (
        <GameCard key={game.id} game={game} genId={genId} />
      ))}
    </div>
  );
};

export const GamesSection = ({ games, genId }: GamesSectionProps) => {
  return (
    <div className="space-y-6">
      <h2 className="text-xl font-semibold">Games</h2>
      <GamesGrid games={games} genId={genId} />
    </div>
  );
};
