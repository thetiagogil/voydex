import { Icon } from "@/shared/components/icon";
import { Card, CardContent } from "@/shared/components/ui/card";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/shared/components/ui/empty";
import type { GameData } from "../types";

type PlayEmptyProps = {
  game: GameData;
  open: boolean;
  setOpen: (open: boolean) => void;
};

export const PlayEmpty = ({ game, setOpen }: PlayEmptyProps) => {
  return (
    <Card
      onClick={() => setOpen(true)}
      className="bg-background cursor-pointer border-dashed"
    >
      <CardContent>
        <Empty>
          <EmptyHeader>
            <EmptyMedia variant="icon">
              <Icon type="play" />
            </EmptyMedia>
            <EmptyTitle>No playthroughs yet</EmptyTitle>
            <EmptyDescription>
              Click here to start your first adventure in {game.name}!
            </EmptyDescription>
          </EmptyHeader>
        </Empty>
      </CardContent>
    </Card>
  );
};
