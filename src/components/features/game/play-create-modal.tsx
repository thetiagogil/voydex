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
import {
  useAvailableDlcs,
  useUpdatePlayDlcs,
} from "@/hooks/gameplay/usePlayDlc";
import { useCreatePlay } from "@/hooks/gameplay/usePlays";
import { toastPromise } from "@/lib/utils/toast-promise";
import type { GameWithFullData } from "@/types/game";
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
  const updatePlayDlcs = useUpdatePlayDlcs();
  const { data: availableDlcs } = useAvailableDlcs(game.versionGroupId);

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

      // Set DLCs if any selected
      if (result?.id && data.dlc_version_group_ids?.length) {
        await updatePlayDlcs.mutateAsync({
          playId: result.id,
          versionGroupIds: data.dlc_version_group_ids,
        });
      }

      setOpen(false);

      // Navigate to the new play page
      if (result?.id) {
        router.push(
          `/dashboard/generation/${game.generation?.id}/game/${game.slug}/play/${result.id}`,
        );
      }
    } catch (error) {
      console.log(error);
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
          availableDlcs={availableDlcs}
          isPending={createPlay.isPending}
          onSubmit={handleSubmit}
          onCancel={handleClose}
        />
      </DialogContent>
    </Dialog>
  );
};
