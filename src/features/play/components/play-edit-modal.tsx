"use client";

import { GameData } from "@/features/game/types";
import { PlayFormContent } from "@/features/play/forms/play-form-content";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";

import { useUpdatePlayDlcs } from "@/features/play/hooks/usePlayDlc";
import { toastPromise } from "@/lib/utils/toast-promise";
import { useMemo } from "react";
import { PlayEditFormValues } from "../forms/schemas";
import { useUpdatePlay } from "../hooks/usePlay";
import { Play } from "../types";

const arraysEqual = (left: number[], right: number[]) => {
  if (left.length !== right.length) return false;

  const sortedLeft = [...left].sort((a, b) => a - b);
  const sortedRight = [...right].sort((a, b) => a - b);

  return sortedLeft.every((value, index) => value === sortedRight[index]);
};

type PlayEditModalProps = {
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

  const initialValues: PlayEditFormValues = useMemo(
    () => ({
      name: play.name || "",
      notes: play.notes || "",
      status_slug: play.status.slug,
      include_pokedex: play.includePokedex,
      include_other_pokedex: play.includeOtherPokedex,
      include_mythical_pokemon: play.includeMythicalPokemon,
      dlc_version_group_ids: play.selectedDlcs ?? [],
    }),
    [play],
  );

  const handleSubmit = async (data: PlayEditFormValues) => {
    try {
      const trimmedName = data.name?.trim() || undefined;
      const trimmedNotes = data.notes?.trim() || undefined;
      const nextDlcs = data.dlc_version_group_ids ?? [];
      const currentDlcs = play.selectedDlcs ?? [];

      const changedUpdates = {
        ...(trimmedName !== (play.name || undefined)
          ? { name: trimmedName }
          : {}),
        ...(trimmedNotes !== (play.notes || undefined)
          ? { notes: trimmedNotes }
          : {}),
        ...(data.status_slug !== play.status.slug
          ? { status_slug: data.status_slug }
          : {}),
        ...(data.include_pokedex !== play.includePokedex
          ? { include_pokedex: data.include_pokedex }
          : {}),
        ...(data.include_other_pokedex !== play.includeOtherPokedex
          ? { include_other_pokedex: data.include_other_pokedex }
          : {}),
        ...(data.include_mythical_pokemon !== play.includeMythicalPokemon
          ? { include_mythical_pokemon: data.include_mythical_pokemon }
          : {}),
      };

      const dlcsChanged = !arraysEqual(nextDlcs, currentDlcs);
      const hasPlayChanges = Object.keys(changedUpdates).length > 0;

      if (!hasPlayChanges && !dlcsChanged) {
        setOpen(false);
        return;
      }

      await toastPromise(
        (async () => {
          if (hasPlayChanges) {
            await updatePlay.mutateAsync({
              playId: play.id,
              updates: changedUpdates,
            });
          }

          const availableDlcs = play.game.availableDlcs;
          if (dlcsChanged && availableDlcs && availableDlcs.length > 0) {
            await updatePlayDlcs.mutateAsync({
              playId: play.id,
              versionGroupIds: nextDlcs,
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
          game={play.game as GameData}
          availableDlcs={play.game.availableDlcs}
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
