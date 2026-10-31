"use client";

import { useState, useTransition } from "react";

import { PlayTeamList } from "@/modules/mainline/shared/components/play-team-list";
import type {
  PlayTeam,
  PlayTeamsResult,
} from "@/modules/mainline/shared/types";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { Spinner } from "@/shared/components/ui/spinner";

type PlayTeamsDialogState = {
  error: string | null;
  isLoading: boolean;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  plays: PlayTeam[] | null;
};

/*
 * Opens the Plays dialog and reads its Plays as it opens, each time, so a
 * team changed since shows as it is now.
 */
export const usePlayTeamsDialog = (load: () => Promise<PlayTeamsResult>) => {
  const [open, setOpen] = useState(false);
  const [plays, setPlays] = useState<PlayTeam[] | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [isLoading, startLoading] = useTransition();

  const show = () => {
    setError(null);
    setPlays(null);
    setOpen(true);
    startLoading(async () => {
      const result = await load();

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      setPlays(result.plays);
    });
  };

  const dialog: PlayTeamsDialogState = {
    error,
    isLoading,
    onOpenChange: setOpen,
    open,
    plays,
  };

  return { dialog, show };
};

/*
 * Plays as a dialog, each with its team, that open the Play: the Plays that
 * follow a Plan, or the earlier Plays that used a Pokémon. The title and
 * description say which.
 */
export const PlayTeamsDialog = ({
  description,
  dialog,
  empty,
  title,
}: {
  description: string;
  dialog: PlayTeamsDialogState;
  /* What it says when there are none. */
  empty: string;
  title: string;
}) => (
  <OverlayDialog
    open={dialog.open}
    onOpenChange={dialog.onOpenChange}
    size="lg"
    title={title}
    description={description}
  >
    {dialog.isLoading ? (
      <p
        role="status"
        className="text-ink-2 text-14 flex items-center gap-2 font-semibold"
      >
        <Spinner />
        Loading the Plays
      </p>
    ) : dialog.error ? (
      <p role="alert" className="text-danger text-13 font-bold">
        {dialog.error}
      </p>
    ) : dialog.plays?.length ? (
      <PlayTeamList plays={dialog.plays} />
    ) : (
      <p className="text-ink-2 text-14">{empty}</p>
    )}
  </OverlayDialog>
);
