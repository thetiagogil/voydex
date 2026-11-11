import type { NewPlayDialogData } from "@/modules/mainline/features/plays/new/types";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";

/*
 * What New Play reads on the server: the cached game catalogue (game data,
 * which moves to pre-built files with the Codex). A failed read is
 * `catalogue: null`, which the dialog says, so it never takes Mainline
 * down. Everything of yours New Play shows is read on the device.
 */
export const getNewPlayDialogData = async (): Promise<NewPlayDialogData> => ({
  catalogue: await readGameCatalogue().catch(() => null),
});
