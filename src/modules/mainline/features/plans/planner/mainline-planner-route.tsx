"use client";

import { notFound, redirect } from "next/navigation";
import { useState } from "react";

import { appRoutes } from "@/config/routes";
import {
  getPlannerPageData,
  openPlannerPage,
} from "@/modules/mainline/features/plans/planner/client/planner-page-query";
import { MainlinePlannerPage } from "@/modules/mainline/features/plans/planner/mainline-planner-page";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";
import { getGameDataPercent } from "@/platform/local-db/game-data";
import { useGameDownload } from "@/platform/local-db/game-downloads";
import { useLocalRead } from "@/platform/local-db/local-db-context";
import { ProgressState } from "@/shared/components/progress-state";

/*
 * The Team Planner, read on the device: a saved Plan (by id) or a blank
 * one. Like every page, the page you came from stays until the Planner is
 * read (`useLocalPageData`). A game the device doesn't have yet is the one
 * wait that takes seconds, so then the Planner shows at once with the
 * game's download bar, which stays until the Planner is read, so nothing
 * flashes empty before the download starts or after it ends.
 */
export const MainlinePlannerRoute = (input: {
  planId: string | null;
  versionGroupSlug: string | null;
}) => {
  const key = `planner:${input.planId ?? "new"}:${input.versionGroupSlug ?? ""}`;
  const opening = useLocalPageData(key, () => openPlannerPage(input));
  const downloaded = useLocalRead(`${key}:${opening.status}`, async () =>
    opening.status === "download" ? getPlannerPageData(input) : null,
  );

  if (downloaded.status === "failed") throw downloaded.error;

  if (opening.status === "download" && downloaded.status !== "ready") {
    return <PlannerGameDownload gameName={opening.gameName} />;
  }

  const data =
    opening.status === "ready"
      ? opening.data
      : downloaded.status === "ready"
        ? downloaded.data
        : null;

  if (!data) notFound();

  /* An archived Plan stays in the archived list; it doesn't open. */
  if (data.plan?.statusSlug === "archived") {
    redirect(appRoutes.mainlinePlansArchived);
  }

  return <MainlinePlannerPage data={data} />;
};

/*
 * The game's download bar. It shows before the download starts and stays
 * full after it ends, while the Planner is read.
 */
const PlannerGameDownload = ({ gameName }: { gameName: string }) => {
  const download = useGameDownload();
  const [lastPercent, setLastPercent] = useState(0);
  const percent = download
    ? getGameDataPercent(download.progress)
    : lastPercent;

  if (percent !== lastPercent) setLastPercent(percent);

  return (
    <ProgressState
      title={`Downloading ${download?.name ?? gameName}`}
      detail="Once a game is on this device, it opens offline too."
      progress={{ label: "Game download", value: percent }}
    />
  );
};
