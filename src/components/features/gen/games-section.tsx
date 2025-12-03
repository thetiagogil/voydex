import { Header } from "@/components/shared/header";
import { GameCard } from "./game-card";

const GamesGrid = ({ games, genId }: { games: Game[]; genId: string }) => {
  return (
    <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
      {games.map((game: Game) => (
        <GameCard key={game.id} game={game} genId={genId} />
      ))}
    </div>
  );
};

export const GamesSection = ({
  games,
  genId,
}: {
  games: Game[];
  genId: string;
}) => {
  return (
    <div className="space-y-4">
      <Header title="Available Games" size="sm" />
      <GamesGrid games={games} genId={genId} />
    </div>
  );
};
