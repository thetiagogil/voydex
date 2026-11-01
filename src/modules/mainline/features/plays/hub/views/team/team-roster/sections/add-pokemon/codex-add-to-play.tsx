"use client";

import { useState, useTransition } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import {
  PlayPickerMenu,
  type PlayPickerMenuItem,
} from "@/modules/mainline/features/plays/shared/components/play-picker-menu";
import type { MainlinePlayAddPokemonData } from "@/modules/mainline/features/plays/hub/types";

import { loadMainlinePlayAddPokemonContextAction } from "../../server/add-pokemon-context-action";
import { AddPokemonSheet } from "./add-pokemon-sheet";

/* One opening of the sheet; a new pick is a new opening, read afresh. */
type Opening = {
  data: MainlinePlayAddPokemonData;
  id: number;
  isOpen: boolean;
  playId: string;
};

type CodexAddToPlayProps = {
  /* The shown form of the species; null for its default form. */
  formSlug: string | null;
  /* The Plays this species can join. */
  plays: PlayPickerMenuItem[];
  speciesSlug: string;
};

/*
 * The Codex entry's "Add to a Play" (Mainline's piece, injected through the
 * Codex's slots): pick a Play and Add Pokémon opens over the entry on this
 * species and form. Adding keeps you on the entry, and its toast offers the
 * Play's Roster; cancelling leaves nothing changed.
 */
export const CodexAddToPlay = ({
  formSlug,
  plays,
  speciesSlug,
}: CodexAddToPlayProps) => {
  const [opening, setOpening] = useState<Opening | null>(null);
  const [isOpening, startOpening] = useTransition();

  const open = (play: PlayPickerMenuItem) =>
    startOpening(async () => {
      const result = await loadMainlinePlayAddPokemonContextAction({
        playId: play.id,
      });

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      setOpening((current) => ({
        data: result.data,
        id: (current?.id ?? 0) + 1,
        isOpen: true,
        playId: play.id,
      }));
    });

  return (
    <>
      <PlayPickerMenu
        heading="Add to"
        triggerLabel="Add to a Play"
        items={plays}
        newPlay={{ label: "Start a new Play" }}
        onPick={open}
        pending={isOpening}
      />
      {opening ? (
        <AddPokemonSheet
          key={opening.id}
          mechanics={opening.data.mechanics}
          onOpenChange={(isOpen) =>
            setOpening((current) => current && { ...current, isOpen })
          }
          open={opening.isOpen}
          playId={opening.playId}
          preset={{ formSlug, speciesSlug }}
          reserveCount={opening.data.reserveCount}
          rosterHref={appRoutes.mainlinePlayTeam(opening.playId)}
          ruleChecks={opening.data.ruleChecks}
          teamCount={opening.data.teamCount}
        />
      ) : null}
    </>
  );
};
