"use client";

import { PlayFormContent } from "@/features/play/forms/play-form-content";
import { useUpdatePlayDlcs } from "@/features/play/hooks/usePlayDlc";
import { toastPromise } from "@/lib/utils/toast-promise";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import { getPlaysRoute } from "@/shared/constants/routes";
import { useRouter } from "next/navigation";
import type { GameData } from "../../game/types";
import { PlayCreateFormValues } from "../forms/schemas";
import { useCreatePlay } from "../hooks/usePlay";

type PlayCreateModalProps = {
  game: GameData;
  open: boolean;
  setOpen: (open: boolean) => void;
};

export const PlayCreateModal = ({
  game,
  open,
  setOpen,
}: PlayCreateModalProps) => {
  const router = useRouter();
  const createPlay = useCreatePlay();
  const updatePlayDlcs = useUpdatePlayDlcs();

  const handleSubmit = async (data: PlayCreateFormValues) => {
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

    if (result?.id && data.dlc_version_group_ids?.length) {
      await updatePlayDlcs.mutateAsync({
        playId: result.id,
        versionGroupIds: data.dlc_version_group_ids,
      });
    }

    setOpen(false);

    if (result?.id) {
      router.push(getPlaysRoute(result.id));
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
          availableDlcs={game.availableDlcs}
          isPending={createPlay.isPending}
          onSubmit={handleSubmit}
          onCancel={handleClose}
        />
      </DialogContent>
    </Dialog>
  );
};
