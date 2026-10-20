"use server";

import { readPlanFollowers } from "@/modules/mainline/features/plans/planner/server/plan-followers-reader";
import type { PlanFollower } from "@/modules/mainline/features/plans/types";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { safeParseInput, uuidSchema } from "@/shared/utils/input-schemas";

export type PlanFollowersResult =
  | { followers: PlanFollower[]; status: "success" }
  | { message: string; status: "error" };

/* The Plays that follow a Plan, with their current teams, for See Plays. */
export const readPlanFollowersAction = async (
  planId: unknown,
): Promise<PlanFollowersResult> => {
  const parsed = safeParseInput(
    uuidSchema("That Plan couldn't be found."),
    planId,
  );

  if (!parsed.ok) {
    return { message: parsed.message, status: "error" };
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);

  if (!claimsResult?.data?.claims?.sub) {
    return { message: "Log in to see your Plans.", status: "error" };
  }

  try {
    return {
      followers: await readPlanFollowers(supabase, parsed.data),
      status: "success",
    };
  } catch {
    return {
      message: "Unable to load the Plays right now. Try again.",
      status: "error",
    };
  }
};
