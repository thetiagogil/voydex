import { Card, CardContent } from "@/components/ui/card";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/components/ui/empty";
import { Play } from "lucide-react";

interface PlayEmptyProps {
  game: GameWithFullData;
  open: boolean;
  setOpen: (open: boolean) => void;
}

export const PlayEmpty = ({ game, setOpen }: PlayEmptyProps) => {
  return (
    <Card onClick={() => setOpen(true)} className="bg-background border-dashed">
      <CardContent>
        <Empty>
          <EmptyHeader>
            <EmptyMedia variant="icon">
              <Play />
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
