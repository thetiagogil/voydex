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

interface CreatePlaythroughDialogProps {
  game: GameInfo;
  trigger?: React.ReactNode;
}

export function CreatePlaythroughDialog({
  game,
  trigger,
}: CreatePlaythroughDialogProps) {
  return (
    <Dialog>
      <DialogTrigger asChild>
        {trigger || (
          <Button>
            <Plus className="h-4 w-4 mr-2" />
            New Playthrough
          </Button>
        )}
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
}
