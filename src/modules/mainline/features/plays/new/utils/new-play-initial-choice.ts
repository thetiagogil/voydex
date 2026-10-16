import type { StartIntent } from "@/config/start-intent";
import type { NewPlayInitialChoice } from "@/modules/mainline/features/plays/new/types";
import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";

/*
 * Where New Play opens: on the game asked for (a trigger's preset, or
 * `?new=<game>` on Mainline's address) with the partner asked for alongside
 * it (`&partner=`), else on the game picked before signing up, with that
 * pick's partner. A game the picker doesn't know (such as `?new=1`) opens
 * nothing; the wizard checks the partner against the game's own first
 * partners.
 */
export const resolveNewPlayInitialChoice = (
  games: NewPlayPickerData["games"],
  requested: {
    gameSlug: string | null;
    partnerSpeciesSlug?: string | null;
  },
  intent: StartIntent | null,
): NewPlayInitialChoice => {
  const knownGame = (slug: string | null | undefined) =>
    slug && games.some((game) => game.slug === slug) ? slug : null;
  const requestedGameSlug = knownGame(requested.gameSlug);
  const initialGameSlug = requestedGameSlug ?? knownGame(intent?.gameSlug);
  const requestedPartner = requestedGameSlug
    ? (requested.partnerSpeciesSlug ?? null)
    : null;

  return {
    gameSlug: initialGameSlug,
    partnerSpeciesSlug:
      requestedPartner ??
      (initialGameSlug && initialGameSlug === intent?.gameSlug
        ? (intent.partnerSpeciesSlug ?? null)
        : null),
  };
};
