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
import {
  currentPageReadRevision,
  preparePageRead,
} from "@/platform/local-db/page-reads";

/*
 * Mainline's public entry for getting its pages ready (the device gate is a
 * global feature that can't import a module; its route passes this in).
 * The pages the bar leads to, in the order they are most likely opened:
 * each is read ahead and kept, so switching tabs rarely waits on the device.
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
 * The other tabs, then the Play Home's Continue row opens (its head and
 * Overview), so opening any of them rarely waits.
 */
const prepareBehindHome = async (
  db: LocalDb,
  journeyPlayId: string | null,
  homeRevision: number,
) => {
  await preparePageReads(db, otherTabReads);

  /* The data changed since Home read: the next round reads its Play anew. */
  if (!journeyPlayId || currentPageReadRevision() !== homeRevision) return;

  const reads = playPageReads(journeyPlayId);

  await preparePageReads(db, [reads.shell, reads.overview]);
};

/*
 * Gets Home ready, the page the app opens on, and settles then, so the
 * start screen gives way to it: the other tabs get ready behind it. A tab
 * opened before its turn reads its own page then, ahead of the ones still
 * to come.
 */
export const prepareMainlineTabs = async (db: LocalDb) => {
  const at = currentPageReadRevision();
  const home = await preparePageRead(db, homeRead.key, homeRead.read);

  void prepareBehindHome(db, home?.data.journey?.play_id ?? null, at);
};
