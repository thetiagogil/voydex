import { PlannerWorkspace } from "@/modules/mainline/features/plans/planner/sections/planner-workspace";
import type { PlannerPageData } from "@/modules/mainline/features/plans/types";

type MainlinePlannerPageProps = {
  data: PlannerPageData;
};

/*
 * The Team Planner's page: one workspace, keyed so a new Plan starts clean
 * and a saved one restarts on its freshly saved Pokémon. An archived Plan
 * never opens here: its route sends it back to the archived list.
 */
export const MainlinePlannerPage = ({ data }: MainlinePlannerPageProps) => (
  <PlannerWorkspace
    key={`${data.plan?.id ?? "new"}:${data.plan?.updatedAt ?? ""}:${data.context.versionGroup.slug}`}
    data={data}
  />
);
