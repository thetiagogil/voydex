import { readSignedInTrainerDisplayName } from "@/modules/mainline/features/plays/shared/server/trainer-profile-query";
import { readSignedInStartIntent } from "@/modules/mainline/features/plays/shared/server/start-intent";
import type { NewPlayDialogData } from "@/modules/mainline/features/plays/new/types";
import { readChallengeRuleChoices } from "@/modules/mainline/shared/server/challenge-rule-choices-reader";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Everything the New Play dialog offers, read with the Mainline layout so it
 * opens complete: the cached game catalogue, the trainer name and the game
 * picked before signing up (both read once per request, shared with Home),
 * and the challenge rules a new Play can start with. The trainer's bits are
 * quiet extras (a failed read leaves them out); a failed catalogue read is
 * `games: null`, which the dialog says, so it never takes Mainline down.
 */
export const getNewPlayDialogData = async (): Promise<NewPlayDialogData> => {
  const [catalogue, trainerName, intent, rules] = await Promise.all([
    readGameCatalogue().catch(() => null),
    readSignedInTrainerDisplayName().catch(() => null),
    readSignedInStartIntent().catch(() => null),
    createServerSupabaseClient()
      .then(readChallengeRuleChoices)
      .catch(() => []),
  ]);

  return {
    intent,
    picker: catalogue ? { ...catalogue, trainerName } : null,
    rules,
  };
};
