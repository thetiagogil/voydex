import { Header } from "@/components/shared/header";
import { GameCreateNewPlayDialog } from "./game-create-new-play-dialog";
import { GamePlayCard } from "./game-play-card";

interface PlaysSectionProps {
  plays: GamePlaySummary[];
  game: GameWithFullData;
  genId: string;
}

export const PlaysSection = ({ plays, game, genId }: PlaysSectionProps) => {
  return (
    <div className="space-y-4">
      <Header
        title="Your Playthroughs"
        size="sm"
        actions={<GameCreateNewPlayDialog game={game} />}
      />
      <div className="grid gap-4 md:grid-cols-2">
        {plays.map((play) => (
          <GamePlayCard
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
