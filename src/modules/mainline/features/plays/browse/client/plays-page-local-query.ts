import {
  readLocalArchivedPlayCount,
  readLocalPlayLibrary,
} from "@/modules/mainline/features/plays/shared/client/play-library-local-reader";
import type {
  PlaysPageData,
  PlaysPageView,
} from "@/modules/mainline/features/plays/browse/types";
import type { LocalDb } from "@/platform/local-db/local-db";

/* The Plays page from the device: the library (with tags) or the archived ones. */
export const readLocalPlaysPageData = async (
  db: LocalDb,
  view: PlaysPageView,
): Promise<PlaysPageData> => {
  const [plays, archivedCount] = await Promise.all([
    readLocalPlayLibrary(db, {
      archived: view === "archived",
      withTags: view === "active",
    }),
    readLocalArchivedPlayCount(db),
  ]);

  return { archivedCount, plays, view };
};
