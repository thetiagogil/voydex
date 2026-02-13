"use client";

import { PlayFormContent } from "@/components/forms/play-form-content";
import type { PlayEditFormValues } from "@/components/forms/schemas/play-schemas";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { usePlayStatuses, useUpdatePlay } from "@/hooks/gameplay/usePlays";
import { toastPromise } from "@/lib/utils/toast-promise";
import type { GameWithFullData } from "@/types/game";
import type { Play } from "@/types/play";
import { useMemo } from "react";

interface PlayEditModalProps {
  play: Play;
  open: boolean;
  setOpen: (open: boolean) => void;
}

export const PlayEditModal = ({ play, open, setOpen }: PlayEditModalProps) => {
  const updatePlay = useUpdatePlay();
  const { data: statuses = [] } = usePlayStatuses();

  const initialValues: PlayEditFormValues = useMemo(
    () => ({
      name: play.name || "",
      notes: play.notes || "",
      status_slug: play.status,
    }),
    [play],
  );

  const handleSubmit = async (data: PlayEditFormValues) => {
    const selectedStatus = statuses.find((s) => s.slug === data.status_slug);

    try {
      await toastPromise(
        updatePlay.mutateAsync({
          playId: play.id,
          updates: {
            name: data.name?.trim() || undefined,
            notes: data.notes?.trim() || undefined,
            status_id: selectedStatus?.id,
          },
        }),
        {
          loading: "Updating playthrough...",
          success: "Playthrough updated!",
          error: (err) => err?.message || "Failed to update playthrough",
        },
      );

      setOpen(false);
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
          <DialogTitle>Edit Playthrough</DialogTitle>
          <DialogDescription>Update your playthrough details</DialogDescription>
        </DialogHeader>

        <PlayFormContent
          mode="edit"
          game={play.game as GameWithFullData}
          statuses={statuses}
          initialValues={initialValues}
          isPending={updatePlay.isPending}
          onSubmit={handleSubmit}
          onCancel={handleClose}
        />
      </DialogContent>
    </Dialog>
  );
};
