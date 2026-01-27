import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/components/ui/empty";
import { Plus } from "lucide-react";

interface PlayModalProps {
  game: GameWithFullData;
  open: boolean;
  setOpen: (open: boolean) => void;
}

export const PlayModal = ({ game, open, setOpen }: PlayModalProps) => {
  return (
    <Dialog open={open} onOpenChange={setOpen}>
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
