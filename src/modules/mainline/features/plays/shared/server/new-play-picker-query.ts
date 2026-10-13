import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";
import { readSignedInTrainerDisplayName } from "@/modules/mainline/features/plays/shared/server/trainer-profile-reader";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-shelf-reader";

/*
 * What the game picker that starts a Play reads (Home with no Plays): the
 * cached game catalogue (every game's cover, first partners and expansions)
 * and the trainer name a new Play starts with, read once per request.
 */
export const readNewPlayPickerData = async (): Promise<NewPlayPickerData> => {
  const [catalogue, trainerName] = await Promise.all([
    readGameCatalogue(),
    readSignedInTrainerDisplayName(),
  ]);

  return { ...catalogue, trainerName };
};
