import { Card, CardContent } from "@/components/ui/card";
import {
  Empty,
  EmptyContent,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/components/ui/empty";
import { type GameInfo } from "@/lib/mock-data/types";
import { Play } from "lucide-react";
import { GameCreateNewPlayDialog } from "./game-create-new-play-dialog";

interface GameEmptyPlayProps {
  game: GameInfo;
}

export const GameEmptyPlay = ({ game }: GameEmptyPlayProps) => {
  return (
    <Card className="bg-background border-dashed">
      <CardContent>
        <Empty>
          <EmptyHeader>
            <EmptyMedia variant="icon">
              <Play />
            </EmptyMedia>
            <EmptyTitle>No playthroughs yet</EmptyTitle>
            <EmptyDescription>
              Start your first adventure in {game.name}!
            </EmptyDescription>
          </EmptyHeader>
          <EmptyContent>
            <GameCreateNewPlayDialog game={game} />
          </EmptyContent>
        </Empty>
      </CardContent>
    </Card>
  );
};
