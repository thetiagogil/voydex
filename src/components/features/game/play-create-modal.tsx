"use client";

import { PlayFormContent } from "@/components/forms/play-form-content";
import type { PlayCreateFormValues } from "@/components/forms/schemas/play-schemas";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { useCreatePlay } from "@/hooks/gameplay/usePlays";
import { toastPromise } from "@/lib/utils/toast-promise";
import { useRouter } from "next/navigation";

interface PlayCreateModalProps {
  game: GameWithFullData;
  open: boolean;
  setOpen: (open: boolean) => void;
}

export const PlayCreateModal = ({
  game,
  open,
  setOpen,
}: PlayCreateModalProps) => {
  const router = useRouter();
  const createPlay = useCreatePlay();

  const handleSubmit = async (data: PlayCreateFormValues) => {
    try {
      const result = await toastPromise(
        createPlay.mutateAsync({
          gameId: game.id,
          name: data.name?.trim() || `My ${game.name} Adventure`,
        }),
        {
          loading: "Creating playthrough...",
          success: "Playthrough created!",
          error: (err) => err?.message || "Failed to create playthrough",
        },
      );

      setOpen(false);

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
  };

  return (
    <Dialog open={open} onOpenChange={handleClose}>
      <DialogContent>
        <DialogHeader>
          <DialogTitle>Create New Playthrough</DialogTitle>
          <DialogDescription>
            Start a new adventure in {game.name}
          </DialogDescription>
        </DialogHeader>

        <PlayFormContent
          mode="create"
          game={game}
          isPending={createPlay.isPending}
          onSubmit={handleSubmit}
          onCancel={handleClose}
        />
      </DialogContent>
    </Dialog>
  );
};
