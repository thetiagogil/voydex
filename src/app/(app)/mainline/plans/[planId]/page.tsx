import { MainlinePlannerRoute } from "@/modules/mainline/features/plans/planner/mainline-planner-route";

type PageProps = {
  params: Promise<{ planId: string }>;
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function PlanPage({ params, searchParams }: PageProps) {
  const [{ planId }, { vg }] = await Promise.all([params, searchParams]);

  return (
    <MainlinePlannerRoute
      planId={planId}
      versionGroupSlug={typeof vg === "string" ? vg : null}
    />
  );
}
