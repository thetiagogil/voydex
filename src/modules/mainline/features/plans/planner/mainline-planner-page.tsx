import { PlannerArchivedView } from "@/modules/mainline/features/plans/planner/sections/planner-archived-view";
import { PlannerWorkspace } from "@/modules/mainline/features/plans/planner/sections/planner-workspace";
import type { PlannerPageData } from "@/modules/mainline/features/plans/types";

type MainlinePlannerPageProps = {
  data: PlannerPageData;
};

/*
 * The Team Planner's page: one workspace, keyed so a new Plan starts clean
 * and a saved one restarts on its freshly saved Pokémon. An archived Plan
 * opens read-only until it's restored.
 */
export const MainlinePlannerPage = ({ data }: MainlinePlannerPageProps) =>
  data.plan?.statusSlug === "archived" ? (
    <PlannerArchivedView data={data} plan={data.plan} />
  ) : (
    <PlannerWorkspace
      key={`${data.plan?.id ?? "new"}:${data.plan?.updatedAt ?? ""}:${data.context.versionGroup.slug}`}
      data={data}
    />
  );
