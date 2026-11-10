import { MainlinePlannerRoute } from "@/modules/mainline/features/plans/planner/mainline-planner-route";

type PageProps = {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
};

export default async function NewPlanPage({ searchParams }: PageProps) {
  const { vg } = await searchParams;

  return (
    <MainlinePlannerRoute
      planId={null}
      versionGroupSlug={typeof vg === "string" ? vg : null}
    />
  );
}
