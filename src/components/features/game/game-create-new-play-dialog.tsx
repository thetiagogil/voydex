import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/components/ui/empty";
import { type GameInfo } from "@/lib/mock-data/types";
import { Plus } from "lucide-react";

interface GameCreateNewPlayDialogProps {
  game: GameInfo;
}

export const GameCreateNewPlayDialog = ({
  game,
}: GameCreateNewPlayDialogProps) => {
  return (
    <Dialog>
      <DialogTrigger asChild>
        <Button variant="outline-secondary">
          <Plus className="mr-2 h-4 w-4" />
          New Playthrough
        </Button>
      </DialogTrigger>
      <DialogContent>
        <DialogHeader>
          <DialogTitle>Create New Playthrough</DialogTitle>
        </DialogHeader>
        <div className="p-4">
          <Empty>
            <EmptyHeader>
              <EmptyMedia variant="icon">
                <Plus />
              </EmptyMedia>
              <EmptyTitle>Create New Adventure</EmptyTitle>
              <EmptyDescription>
                Start a new playthrough of {game.name} with customizable
                challenge settings
              </EmptyDescription>
            </EmptyHeader>
          </Empty>
        </div>
      </DialogContent>
    </Dialog>
  );
};
