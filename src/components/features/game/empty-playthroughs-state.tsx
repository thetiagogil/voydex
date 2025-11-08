import { CreatePlaythroughDialog } from "@/components/features/game/create-playthrough-dialog";
import { Button } from "@/components/ui/button";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/components/ui/empty";
import { type GameInfo } from "@/lib/mock-data/types";
import { Play, Plus } from "lucide-react";

interface EmptyPlaythroughsStateProps {
  game: GameInfo;
}

export const EmptyPlaythroughsState = ({
  game,
}: EmptyPlaythroughsStateProps) => {
  return (
    <Empty className="border">
      <EmptyHeader>
        <EmptyMedia variant="icon">
          <Play />
        </EmptyMedia>
        <EmptyTitle>No playthroughs yet</EmptyTitle>
        <EmptyDescription>
          Start your first adventure in {game.name}!
        </EmptyDescription>
      </EmptyHeader>
      <CreatePlaythroughDialog
        game={game}
        trigger={
          <Button>
            <Plus className="mr-2 h-4 w-4" />
            Create Playthrough
          </Button>
        }
      />
    </Empty>
  );
};
