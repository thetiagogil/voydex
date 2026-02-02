"use client";

import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Spinner } from "@/components/ui/spinner";
import { useCreatePlay } from "@/hooks/gameplay/usePlays";
import { toastPromise } from "@/lib/utils/toast-promise";
import { useRouter } from "next/navigation";
import { useState } from "react";

interface PlayModalProps {
  game: GameWithFullData;
  open: boolean;
  setOpen: (open: boolean) => void;
}

export const PlayModal = ({ game, open, setOpen }: PlayModalProps) => {
  const router = useRouter();
  const createPlay = useCreatePlay();
  const [name, setName] = useState("");

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    try {
      const result = await toastPromise(
        createPlay.mutateAsync({
          gameId: game.id,
          name: name.trim() || undefined,
        }),
        {
          loading: "Creating playthrough...",
          success: "Playthrough created!",
          error: (err) => err?.message || "Failed to create playthrough",
        },
      );

      setOpen(false);
      setName("");

      // Navigate to the new play page
      if (result?.id) {
        router.push(
          `/adventures/gen/${game.generation?.id}/game/${game.slug}/play/${result.id}`,
        );
      }
    } catch (error) {
      // Error is handled by toastPromise
    }
  };

  const handleClose = () => {
    setOpen(false);
    setName("");
  };

  return (
    <Dialog open={open} onOpenChange={handleClose}>
      <DialogContent>
        <form onSubmit={handleSubmit}>
          <DialogHeader>
            <DialogTitle>Create New Playthrough</DialogTitle>
            <DialogDescription>
              Start a new adventure in {game.name}
            </DialogDescription>
          </DialogHeader>

          <div className="space-y-4 py-4">
            <div className="space-y-2">
              <Label htmlFor="playName">Playthrough Name (optional)</Label>
              <Input
                id="playName"
                placeholder={`My ${game.name} Adventure`}
                value={name}
                onChange={(e) => setName(e.target.value)}
                disabled={createPlay.isPending}
              />
              <p className="text-muted-foreground text-xs">
                Give your playthrough a memorable name, or leave blank for
                default
              </p>
            </div>

            {/* Game info preview */}
            <div className="bg-muted/50 rounded-lg p-3">
              <p className="text-sm font-medium">{game.name}</p>
              <p className="text-muted-foreground text-xs">
                {game.generation?.name} • {game.region?.name}
              </p>
            </div>
          </div>

          <DialogFooter>
            <Button
              type="button"
              variant="outline-secondary"
              onClick={handleClose}
              disabled={createPlay.isPending}
            >
              Cancel
            </Button>
            <Button type="submit" disabled={createPlay.isPending}>
              {createPlay.isPending ? (
                <>
                  <Spinner className="mr-2" />
                  Creating...
                </>
              ) : (
                "Create Playthrough"
              )}
            </Button>
          </DialogFooter>
        </form>
      </DialogContent>
    </Dialog>
  );
};
