import { MainlinePlannerPage } from "@/modules/mainline/features/plans/planner/mainline-planner-page";
import { getPlannerPageData } from "@/modules/mainline/features/plans/planner/server/planner-page-query";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function NewPlanPage({ searchParams }: PageProps) {
  const { vg } = await searchParams;
  const data = await getPlannerPageData({
    planId: null,
    versionGroupSlug: typeof vg === "string" ? vg : null,
  });

  if (!data) {
    throw new Error("Unable to open the Team Planner.");
  }

  return <MainlinePlannerPage data={data} />;
}
