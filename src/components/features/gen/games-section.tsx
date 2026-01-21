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
    <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
      {games.map((game) => (
        <GameCard key={game.id} game={game} genId={genId} />
      ))}
    </div>
  );
};

export const GamesSection = ({ games, genId }: GamesSectionProps) => {
  // Group games by type

  return (
    <div className="space-y-4">
      <h2 className="text-xl font-semibold">Main Games</h2>
      <GamesGrid games={games} genId={genId} />
    </div>
  );
};
