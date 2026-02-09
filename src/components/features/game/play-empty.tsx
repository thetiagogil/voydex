import { Icon } from "@/components/shared/icon";
import { Card, CardContent } from "@/components/ui/card";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/components/ui/empty";

interface PlayEmptyProps {
  game: GameWithFullData;
  open: boolean;
  setOpen: (open: boolean) => void;
}

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
