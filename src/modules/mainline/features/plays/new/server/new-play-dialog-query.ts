import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { readTrainerDisplayName } from "@/modules/mainline/features/plays/shared/server/trainer-profile-reader";
import { readStartIntent } from "@/modules/mainline/features/plays/shared/server/start-intent";
import type { NewPlayDialogData } from "@/modules/mainline/features/plays/new/types";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-shelf-reader";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Everything the New Play dialog offers, read with the Mainline layout so it
 * opens complete: the cached game catalogue, the trainer name and the game
 * picked before signing up. The trainer's bits are quiet extras (a failed
 * read leaves them out); a failed catalogue read is `games: null`, which the
 * dialog says, so it never takes Mainline down.
 */
export const getNewPlayDialogData = async (): Promise<NewPlayDialogData> => {
  const supabase = await createServerSupabaseClient();
  const [catalogue, trainerName, intent] = await Promise.all([
    readGameCatalogue().catch(() => null),
    getSignedInTrainerId(supabase)
      .then((userId) => readTrainerDisplayName(supabase, userId))
      .catch(() => null),
    readStartIntent(supabase).catch(() => null),
  ]);

  return {
    intent,
    picker: catalogue ? { ...catalogue, trainerName } : null,
  };
};
