import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";
import { readTrainerDisplayName } from "@/modules/mainline/features/plays/shared/server/trainer-profile-reader";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-shelf-reader";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * What the game picker that starts a Play reads (New Play, Home with no
 * Plays): the cached game catalogue (every game's cover, first partners and
 * expansions) and the trainer name a new Play starts with.
 */
export const readNewPlayPickerData = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<NewPlayPickerData> => {
  const [catalogue, trainerName] = await Promise.all([
    readGameCatalogue(),
    readTrainerDisplayName(supabase, userId),
  ]);

  return { ...catalogue, trainerName };
};
