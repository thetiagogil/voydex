import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";
import { readSignedInTrainerNames } from "@/modules/mainline/features/plays/shared/server/trainer-profile-query";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";

/*
 * What the game picker that starts a Play reads (Home with no Plays): the
 * cached game catalogue (every game's cover, first partners and expansions)
 * and the trainer name a new Play starts with, read once per request.
 */
export const readNewPlayPickerData = async (): Promise<NewPlayPickerData> => {
  const [catalogue, names] = await Promise.all([
    readGameCatalogue(),
    readSignedInTrainerNames(),
  ]);

  return { ...catalogue, trainerName: names.trainerName };
};
