"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { readPlanStatusSlug } from "@/modules/mainline/features/plans/server/plan-status-reader";
import { untitledPlanName } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { safeParseInput, uuidSchema } from "@/shared/utils/input-schemas";

export type PlanRenameResult =
  | { name: string; status: "success" }
  | { message: string; status: "error" };

/* As long as a name the Planner's title takes. */
const nameMaxLength = 200;

/*
 * Rename a Plan, from My Plans or the Planner: its name only, so a followed
 * Plan needs no unlocking. An empty name reads as "Untitled Plan"; an
 * archived Plan is restored first.
 */
export const renamePlanAction = async (
  planId: unknown,
  name: unknown,
): Promise<PlanRenameResult> => {
  const parsed = safeParseInput(
    uuidSchema("That Plan couldn't be found."),
    planId,
  );

  if (!parsed.ok) {
    return { message: parsed.message, status: "error" };
  }

  if (typeof name !== "string") {
    return { message: "The Plan name must be text.", status: "error" };
  }

  const trimmed = name.trim() || untitledPlanName;

  if (trimmed.length > nameMaxLength) {
    return {
      message: `The Plan name can be at most ${nameMaxLength} characters.`,
      status: "error",
    };
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    return { message: "Log in to rename a Plan.", status: "error" };
  }

  const failure = "Unable to rename the Plan right now. Try again.";
  const statusSlug = await readPlanStatusSlug(supabase, parsed.data).catch(
    () => undefined,
  );

  if (statusSlug === undefined) {
    return { message: failure, status: "error" };
  }

  if (statusSlug === "archived") {
    return { message: "Restore this Plan to rename it.", status: "error" };
  }

  const result = await supabase
    .schema("planning")
    .from("mainline_team_plans")
    .update({ name: trimmed })
    .eq("id", parsed.data)
    .eq("user_id", userId)
    .select("id");

  if (result.error) {
    return { message: failure, status: "error" };
  }

  if (!result.data.length) {
    return { message: "That Plan couldn't be found.", status: "error" };
  }

  revalidatePath(appRoutes.mainlinePlans);
  revalidatePath(appRoutes.mainlinePlan(parsed.data));

  return { name: trimmed, status: "success" };
};
