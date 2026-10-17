import { readSignedInTrainerDisplayName } from "@/modules/mainline/features/plays/shared/server/trainer-profile-query";
import { readSignedInStartIntent } from "@/modules/mainline/features/plays/shared/server/start-intent";
import type { NewPlayDialogData } from "@/modules/mainline/features/plays/new/types";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";

/*
 * Everything the New Play dialog offers, read with the Mainline layout so it
 * opens complete: the cached game catalogue, the trainer name and the game
 * picked before signing up (both read once per request, shared with Home).
 * The trainer's bits are quiet extras (a failed read leaves them out); a
 * failed catalogue read is `games: null`, which the dialog says, so it never
 * takes Mainline down.
 */
export const getNewPlayDialogData = async (): Promise<NewPlayDialogData> => {
  const [catalogue, trainerName, intent] = await Promise.all([
    readGameCatalogue().catch(() => null),
    readSignedInTrainerDisplayName().catch(() => null),
    readSignedInStartIntent().catch(() => null),
  ]);

  return {
    intent,
    picker: catalogue ? { ...catalogue, trainerName } : null,
  };
};
