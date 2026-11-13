"use client";

import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { plannerPageRead } from "@/modules/mainline/features/plans/planner/client/planner-page-query";
import { MainlinePlannerPage } from "@/modules/mainline/features/plans/planner/mainline-planner-page";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";

/*
 * The Team Planner: a saved Plan (by id) or a blank one. The game's
 * Pokémon come from its pre-built file and the Plan from the device
 * (`useLocalPageData`), with no download to wait on.
 */
export const MainlinePlannerRoute = (input: {
  planId: string | null;
  versionGroupSlug: string | null;
}) => {
  const { key, read } = plannerPageRead(input);
  const data = useLocalPageData(key, read);

  /* An archived Plan stays in the archived list; it doesn't open. */
  if (data.plan?.statusSlug === "archived") {
    redirect(appRoutes.mainlinePlansArchived);
  }

  return <MainlinePlannerPage data={data} />;
};
