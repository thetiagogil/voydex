"use client";

import { useSearchParams } from "next/navigation";

import type { CodexVersionGroupSlots } from "@/modules/codex/codex-slots";
import { GameDetailPage } from "@/modules/codex/features/games/detail/game-detail-page";
import {
  CodexGameYourPlays,
  CodexGameYourPlaysLink,
} from "@/modules/mainline/public-codex";

/* Mainline's pieces about your Plays: the Your Plays icon and section. */
const mainlineSlots: CodexVersionGroupSlots = {
  headActions: (context) => (
    <CodexGameYourPlaysLink versionGroupSlug={context.versionGroupSlug} />
  ),
  yourPlays: (context) => (
    <CodexGameYourPlays
      gameShortName={context.gameShortName}
      gameSlug={context.gameSlug}
      versionGroupSlug={context.versionGroupSlug}
    />
  ),
};

/*
 * A version group's page with Mainline's pieces in its slots, the game
 * picked in its version switch read from the address (`?version=`).
 */
export const GameRoute = ({
  versionGroupSlug,
}: {
  versionGroupSlug: string;
}) => {
  const versionSlug = useSearchParams().get("version") ?? undefined;

  return (
    <GameDetailPage
      slots={mainlineSlots}
      versionGroupSlug={versionGroupSlug}
      versionSlug={versionSlug}
    />
  );
};
