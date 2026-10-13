import type { StartIntent } from "@/config/start-intent";
import type { NewPlayInitialChoice } from "@/modules/mainline/features/plays/new/types";
import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";

/*
 * Where New Play opens: on the game asked for (`?game=` on the page, a
 * trigger's preset in the dialog), else on the game picked before signing
 * up, with that pick's partner. A game the picker doesn't know opens nothing.
 */
export const resolveNewPlayInitialChoice = (
  games: NewPlayPickerData["games"],
  gameSlug: string | null,
  intent: StartIntent | null,
): NewPlayInitialChoice => {
  const knownGame = (slug: string | null | undefined) =>
    slug && games.some((game) => game.slug === slug) ? slug : null;
  const initialGameSlug = knownGame(gameSlug) ?? knownGame(intent?.gameSlug);

  return {
    gameSlug: initialGameSlug,
    partnerSpeciesSlug:
      initialGameSlug && initialGameSlug === intent?.gameSlug
        ? (intent.partnerSpeciesSlug ?? null)
        : null,
  };
};
