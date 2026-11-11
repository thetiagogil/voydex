"use client";

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

type GameRouteProps = {
  versionGroupSlug: string;
  versionSlug?: string;
};

/* A version group's page with Mainline's pieces in its slots. */
export const GameRoute = (props: GameRouteProps) => (
  <GameDetailPage {...props} slots={mainlineSlots} />
);
