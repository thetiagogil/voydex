import { collectionPageRead } from "@/modules/mainline/features/collection/client/collection-page-query";
import { homePageRead } from "@/modules/mainline/features/home/client/home-page-query";
import { myPlansPageRead } from "@/modules/mainline/features/plans/my-plans/client/my-plans-query";
import { plannerPageRead } from "@/modules/mainline/features/plans/planner/client/planner-page-query";
import { playsPageRead } from "@/modules/mainline/features/plays/browse/client/plays-page-local-query";
import { statsPageRead } from "@/modules/mainline/features/stats/client/stats-page-query";
import type { LocalDb } from "@/platform/local-db/local-db";
import {
  preparePageReads,
  type PageReadPlan,
} from "@/platform/local-db/local-db-context";

/*
 * Mainline's public entry for getting its tabs ready (the device gate is a
 * global feature that can't import a module; its route passes this in).
 * The pages the bar leads to, in the order they are most likely opened:
 * each is read ahead and kept, so switching tabs never waits on the device.
 */
export const mainlineTabReads: readonly PageReadPlan<unknown>[] = [
  homePageRead(null),
  playsPageRead("active"),
  plannerPageRead({ planId: null, versionGroupSlug: null }),
  statsPageRead,
  myPlansPageRead,
  collectionPageRead,
];

export const prepareMainlineTabs = (db: LocalDb) =>
  preparePageReads(db, mainlineTabReads);
