import { notifyLocalSave } from "@/platform/local-db/local-db-context";

import { savePlan } from "@/modules/mainline/features/plans/planner/client/save-plan-command";
import {
  parsePlanSaveInput,
  PlanSaveInputError,
} from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import { readLocalClaims } from "@/platform/local-db/local-claims";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";

export type SavePlanResult =
  | { created: boolean; planId: string; status: "success" }
  | { message: string; status: "error" };

/* Save Plan / Save changes in the Team Planner. */
export const savePlanAction = async (
  rawInput: unknown,
): Promise<SavePlanResult> => {
  try {
    const input = parsePlanSaveInput(rawInput);
    const supabase = await getLocalQueryClient();
    const claimsResult = await readLocalClaims(supabase);
    const userId = claimsResult?.data?.claims?.sub;

    if (!userId) {
      throw new PlanSaveInputError("Log in to save a Plan.");
    }

    const result = await savePlan({ input, supabase });

    notifyLocalSave();

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
