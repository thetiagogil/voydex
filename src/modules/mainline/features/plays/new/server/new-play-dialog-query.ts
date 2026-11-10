import { readSignedInStartIntent } from "@/modules/mainline/features/plays/shared/server/start-intent";
import type { NewPlayDialogData } from "@/modules/mainline/features/plays/new/types";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";

/*
 * What New Play reads on the server: the cached game catalogue (game data,
 * which moves to pre-built files with the Codex) and the game picked before
 * signing up (kept on the account). A failed catalogue read is
 * `catalogue: null`, which the dialog says, so it never takes Mainline
 * down. Everything of yours New Play shows is read on the device.
 */
export const getNewPlayDialogData = async (): Promise<NewPlayDialogData> => {
  const [catalogue, intent] = await Promise.all([
    readGameCatalogue().catch(() => null),
    readSignedInStartIntent().catch(() => null),
  ]);

  return { catalogue, intent };
};
