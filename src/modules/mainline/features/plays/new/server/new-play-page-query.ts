import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { readNewPlayPickerData } from "@/modules/mainline/features/plays/shared/server/new-play-picker-query";
import { readStartIntent } from "@/modules/mainline/features/plays/shared/server/start-intent";
import type { NewPlayPageData } from "@/modules/mainline/features/plays/new/types";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * New Play, opened on the game in its address (`?game=`, as the Codex's
 * "Start a {Version} Play" links), else on the game picked before signing up.
 */
export const getNewPlayPageData = async (
  gameSlug: string | null,
): Promise<NewPlayPageData> => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);
  const [picker, intent] = await Promise.all([
    readNewPlayPickerData(supabase, userId),
    gameSlug ? null : readStartIntent(supabase),
  ]);
  const knownGame = (slug: string | null | undefined) =>
    slug && picker.games.some((game) => game.slug === slug) ? slug : null;
  const initialGameSlug = knownGame(gameSlug) ?? knownGame(intent?.gameSlug);

  return {
    ...picker,
    initial: {
      gameSlug: initialGameSlug,
      partnerSpeciesSlug:
        initialGameSlug && initialGameSlug === intent?.gameSlug
          ? (intent.partnerSpeciesSlug ?? null)
          : null,
    },
  };
};
