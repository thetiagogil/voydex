"use client";

import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { getPlannerPageData } from "@/modules/mainline/features/plans/planner/client/planner-page-query";
import { MainlinePlannerPage } from "@/modules/mainline/features/plans/planner/mainline-planner-page";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";
import { getGameDataPercent } from "@/platform/local-db/game-data";
import { useGameDownload } from "@/platform/local-db/game-downloads";
import { ProgressState } from "@/shared/components/progress-state";

/*
 * The Team Planner, read on the device: a saved Plan (by id) or a blank
 * one. A game the device doesn't have yet downloads first, with its bar.
 */
export const MainlinePlannerRoute = ({
  planId,
  versionGroupSlug,
}: {
  planId: string | null;
  versionGroupSlug: string | null;
}) => {
  const download = useGameDownload();
  const data = useLocalPageData(
    `planner:${planId ?? "new"}:${versionGroupSlug ?? ""}`,
    async () => {
      const planner = await getPlannerPageData({ planId, versionGroupSlug });

      if (!planner && !planId) {
        throw new Error("Unable to open the Team Planner.");
      }

      return planner;
    },
  );

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
