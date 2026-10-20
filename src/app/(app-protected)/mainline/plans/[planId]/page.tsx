import { notFound, redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { MainlinePlannerPage } from "@/modules/mainline/features/plans/planner/mainline-planner-page";
import { getPlannerPageData } from "@/modules/mainline/features/plans/planner/server/planner-page-query";

type PageProps = {
  params: Promise<{ planId: string }>;
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function PlanPage({ params, searchParams }: PageProps) {
  const [{ planId }, { vg }] = await Promise.all([params, searchParams]);
  const data = await getPlannerPageData({
    planId,
    versionGroupSlug: typeof vg === "string" ? vg : null,
  });

  if (!data) {
    notFound();
  }

  /* An archived Plan stays in the archived list; it doesn't open. */
  if (data.plan?.statusSlug === "archived") {
    redirect(appRoutes.mainlinePlansArchived);
  }

  return <MainlinePlannerPage data={data} />;
}
