"use client";

import { notFound, redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { getPlannerPageData } from "@/modules/mainline/features/plans/planner/client/planner-page-query";
import { MainlinePlannerPage } from "@/modules/mainline/features/plans/planner/mainline-planner-page";
import { getGameDataPercent } from "@/platform/local-db/game-data";
import { useGameDownload } from "@/platform/local-db/game-downloads";
import { useLocalRead } from "@/platform/local-db/local-db-context";
import { ProgressState } from "@/shared/components/progress-state";

/*
 * The Team Planner, read on the device: a saved Plan (by id) or a blank
 * one. A game the device doesn't have yet downloads first, with its bar,
 * so unlike other pages it shows at once rather than waiting on its read
 * (`useLocalPageData`) behind the page you came from.
 */
export const MainlinePlannerRoute = ({
  planId,
  versionGroupSlug,
}: {
  planId: string | null;
  versionGroupSlug: string | null;
}) => {
  const download = useGameDownload();
  const read = useLocalRead(
    `planner:${planId ?? "new"}:${versionGroupSlug ?? ""}`,
    async () => {
      const planner = await getPlannerPageData({ planId, versionGroupSlug });

      if (!planner && !planId) {
        throw new Error("Unable to open the Team Planner.");
      }

      return planner;
    },
  );

  if (read.status === "failed") throw read.error;

  if (read.status === "ready" && read.data === null) notFound();

  const data = read.status === "ready" ? read.data : null;

  if (!data) {
    return download ? (
      <ProgressState
        title={`Downloading ${download.name}`}
        detail="Once a game is on this device, it opens offline too."
        progress={{
          label: "Game download",
          value: getGameDataPercent(download.progress),
        }}
      />
    ) : null;
  }

  /* An archived Plan stays in the archived list; it doesn't open. */
  if (data.plan?.statusSlug === "archived") {
    redirect(appRoutes.mainlinePlansArchived);
  }

  return <MainlinePlannerPage data={data} />;
};
