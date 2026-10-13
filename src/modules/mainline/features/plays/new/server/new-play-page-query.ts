import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { readNewPlayPickerData } from "@/modules/mainline/features/plays/shared/server/new-play-picker-query";
import { readStartIntent } from "@/modules/mainline/features/plays/shared/server/start-intent";
import type {
  NewPlayDialogData,
  NewPlayPageData,
} from "@/modules/mainline/features/plays/new/types";
import { resolveNewPlayInitialChoice } from "@/modules/mainline/features/plays/new/utils/new-play-initial-choice";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Everything New Play offers (every game, its first partners and expansions,
 * the trainer name) and the game picked before signing up, if any.
 */
export const readNewPlayDialogData = async (): Promise<NewPlayDialogData> => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);
  const [picker, intent] = await Promise.all([
    readNewPlayPickerData(supabase, userId),
    readStartIntent(supabase),
  ]);

  return { intent, picker };
};

/*
 * New Play's page, opened on the game in its address (`?game=`, as the
 * Codex's "Start a {Version} Play" links), else on the game picked before
 * signing up.
 */
export const getNewPlayPageData = async (
  gameSlug: string | null,
): Promise<NewPlayPageData> => {
  const { intent, picker } = await readNewPlayDialogData();

  return {
    ...picker,
    initial: resolveNewPlayInitialChoice(picker.games, gameSlug, intent),
  };
};
