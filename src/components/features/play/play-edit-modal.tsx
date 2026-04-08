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
import {
  useAvailableDlcs,
  usePlayDlcs,
  useUpdatePlayDlcs,
} from "@/hooks/gameplay/usePlayDlc";
import { usePlayStatuses, useUpdatePlay } from "@/hooks/gameplay/usePlays";
import { toastPromise } from "@/lib/utils/toast-promise";
import type { GameWithFullData } from "@/types/game";
import type { Play } from "@/types/play";
import { useMemo } from "react";

interface PlayEditModalProps {
  play: Play;
  completion?: number;
  open: boolean;
  setOpen: (open: boolean) => void;
}

export const PlayEditModal = ({
  play,
  completion = 0,
  open,
  setOpen,
}: PlayEditModalProps) => {
  const updatePlay = useUpdatePlay();
  const updatePlayDlcs = useUpdatePlayDlcs();
  const { data: statuses = [] } = usePlayStatuses();
  const { data: availableDlcs } = useAvailableDlcs(play.game.versionGroupId);
  const { data: enabledDlcIds } = usePlayDlcs(play.id);

  const initialValues: PlayEditFormValues = useMemo(
    () => ({
      name: play.name || "",
      notes: play.notes || "",
      status_slug: play.status.slug,
      include_pokedex: play.includePokedex,
      include_other_pokedex: play.includeOtherPokedex,
      include_mythical_pokemon: play.includeMythicalPokemon,
      dlc_version_group_ids: enabledDlcIds ?? [],
    }),
    [play, enabledDlcIds],
  );

  const handleSubmit = async (data: PlayEditFormValues) => {
    const selectedStatus = statuses.find((s) => s.slug === data.status_slug);

    try {
      await toastPromise(
        (async () => {
          await updatePlay.mutateAsync({
            playId: play.id,
            updates: {
              name: data.name?.trim() || undefined,
              notes: data.notes?.trim() || undefined,
              status_id: selectedStatus?.id,
              include_pokedex: data.include_pokedex,
              include_other_pokedex: data.include_other_pokedex,
              include_mythical_pokemon: data.include_mythical_pokemon,
            },
          });

          // Update DLCs if available
          if (availableDlcs && availableDlcs.length > 0) {
            await updatePlayDlcs.mutateAsync({
              playId: play.id,
              versionGroupIds: data.dlc_version_group_ids ?? [],
            });
          }
        })(),
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
          availableDlcs={availableDlcs}
          completion={completion}
          initialValues={initialValues}
          isPending={updatePlay.isPending || updatePlayDlcs.isPending}
          onSubmit={handleSubmit}
          onCancel={handleClose}
        />
      </DialogContent>
    </Dialog>
  );
};
