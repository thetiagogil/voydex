import { collectionPageRead } from "@/modules/mainline/features/collection/client/collection-page-query";
import { homePageRead } from "@/modules/mainline/features/home/client/home-page-query";
import { myPlansPageRead } from "@/modules/mainline/features/plans/my-plans/client/my-plans-query";
import { plannerPageRead } from "@/modules/mainline/features/plans/planner/client/planner-page-query";
import { playsPageRead } from "@/modules/mainline/features/plays/browse/client/plays-page-local-query";
import { playPageReads } from "@/modules/mainline/features/plays/hub/client/play-page-reads";
import { statsPageRead } from "@/modules/mainline/features/stats/client/stats-page-query";
import type { LocalDb } from "@/platform/local-db/local-db";
import {
  preparePageReads,
  type PageReadPlan,
} from "@/platform/local-db/local-db-context";
import { preparePageRead } from "@/platform/local-db/page-reads";

/*
 * Mainline's public entry for getting its pages ready (the device gate is a
 * global feature that can't import a module; its route passes this in).
 * The pages the bar leads to, in the order they are most likely opened:
 * each is read ahead and kept, so switching tabs never waits on the device.
 */
const homeRead = homePageRead(null);

const otherTabReads: readonly PageReadPlan<unknown>[] = [
  playsPageRead("active"),
  plannerPageRead({ planId: null, versionGroupSlug: null }),
  statsPageRead,
  myPlansPageRead,
  collectionPageRead,
];

/*
 * Gets Home and the other tabs ready, then, without holding up the start
 * screen, the Plays on Home's shelf (their head and Overview), so opening a
 * Play from Home or the Plays list doesn't wait either.
 */
export const prepareMainlineTabs = async (db: LocalDb) => {
  const home = await preparePageRead(
    db,
    homeRead.key,
    homeRead.read,
    homeRead.keep,
  );

  await preparePageReads(db, otherTabReads);

  if (home?.data.kind !== "plays") return;

  const shelf = home.data.bands.flatMap(({ play }) => {
    const reads = playPageReads(play.id);

    return [reads.shell, reads.overview];
  });

  void preparePageReads(db, shelf);
};
