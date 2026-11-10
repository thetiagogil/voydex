import { z } from "zod";

import { getPlannerPageData } from "@/modules/mainline/features/plans/planner/client/planner-page-query";
import type { PlannerPageData } from "@/modules/mainline/features/plans/types";
import { parseInput } from "@/shared/utils/input-schemas";

export type PlannerOpenActionResult =
  | { data: PlannerPageData; status: "success" }
  | { message: string; status: "error" };

const slugPattern = /^[a-z0-9]+(?:-[a-z0-9]+)*$/;

const plannerOpenInputSchema = z.object({
  versionGroupSlug: z.string().regex(slugPattern).max(80),
});

/*
 * A blank Team Planner for one game, read when a page opens it in place (the
 * Codex's "Plan a team") and again when you switch game there. It only
 * reads, as the signed-in trainer; saving goes through `savePlanAction`.
 */
export const openPlannerAction = async (input: {
  versionGroupSlug: string;
}): Promise<PlannerOpenActionResult> => {
  try {
    const { versionGroupSlug } = parseInput(plannerOpenInputSchema, input);
    const data = await getPlannerPageData({ planId: null, versionGroupSlug });

    return data
      ? { data, status: "success" }
      : { message: "Unable to open the Team Planner.", status: "error" };
  } catch (error) {
    return {
      message:
        error instanceof Error
          ? error.message
          : "Unable to open the Team Planner.",
      status: "error",
    };
  }
};
