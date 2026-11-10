import type { NewPlayInitialChoice } from "@/modules/mainline/features/plays/new/types";
import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";

/*
 * Where New Play opens: on the game asked for (a trigger's preset, or
 * `?new=<game>` on Mainline's address) with the partner asked for alongside
 * it (`&partner=`). A game the picker doesn't know (such as `?new=1`) opens
 * nothing, and drops its partner; the wizard checks the partner against the
 * game's own first partners.
 */
export const resolveNewPlayInitialChoice = (
  games: NewPlayPickerData["games"],
  requested: {
    gameSlug: string | null;
    partnerSpeciesSlug?: string | null;
  },
): NewPlayInitialChoice => {
  const gameSlug =
    requested.gameSlug && games.some((game) => game.slug === requested.gameSlug)
      ? requested.gameSlug
      : null;

  return {
    gameSlug,
    partnerSpeciesSlug: gameSlug
      ? (requested.partnerSpeciesSlug ?? null)
      : null,
  };
};
