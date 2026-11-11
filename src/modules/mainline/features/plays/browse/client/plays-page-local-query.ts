import {
  readMainlineArchivedPlayCount,
  readMainlinePlayLibrary,
} from "@/modules/mainline/features/plays/shared/client/play-library-reader";
import type {
  PlaysPageData,
  PlaysPageView,
} from "@/modules/mainline/features/plays/browse/types";
import { localUserId } from "@/platform/local-db/device-schema";
import type { LocalQueryClient } from "@/platform/local-db/local-db-context";

/* The Plays page from the device: the library (with tags) or the archived ones. */
export const readLocalPlaysPageData = async (
  client: LocalQueryClient,
  view: PlaysPageView,
): Promise<PlaysPageData> => {
  const [plays, archivedCount] = await Promise.all([
    readMainlinePlayLibrary(client, localUserId, {
      archived: view === "archived",
      withTags: view === "active",
    }),
    readMainlineArchivedPlayCount(client, localUserId),
  ]);

  return { archivedCount, plays, view };
};
