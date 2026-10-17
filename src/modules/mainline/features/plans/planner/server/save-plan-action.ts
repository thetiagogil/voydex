"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { savePlan } from "@/modules/mainline/features/plans/planner/server/save-plan-command";
import {
  parsePlanSaveInput,
  PlanSaveInputError,
} from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type SavePlanResult =
  | { created: boolean; planId: string; status: "success" }
  | { message: string; status: "error" };

/* Save Plan / Save changes in the Team Planner. */
export const savePlanAction = async (
  rawInput: unknown,
): Promise<SavePlanResult> => {
  try {
    const input = parsePlanSaveInput(rawInput);
    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);
    const userId = claimsResult?.data?.claims?.sub;

    if (!userId) {
      throw new PlanSaveInputError("Log in to save a Plan.");
    }

    const result = await savePlan({ input, supabase, userId });

    revalidatePath(appRoutes.mainlinePlans);
    revalidatePath(appRoutes.mainlinePlan(result.planId));
    revalidatePath(appRoutes.mainline);

    return { ...result, status: "success" };
  } catch (error) {
    return {
      message:
        error instanceof PlanSaveInputError
          ? error.message
          : "Unable to save the Plan right now. Try again.",
      status: "error",
    };
  }
};
