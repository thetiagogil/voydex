"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { safeParseInput, uuidSchema } from "@/shared/utils/input-schemas";

export type PlanArchiveResult =
  | { status: "success" }
  | { message: string; status: "error" };

/*
 * Archive a Plan, or restore it to active. One row's status: an archived
 * Plan stays readable and keeps the Plays that follow it, but can't be
 * changed until it's restored.
 */
export const setPlanArchivedAction = async (
  planId: unknown,
  archived: boolean,
): Promise<PlanArchiveResult> => {
  const parsed = safeParseInput(
    uuidSchema("That Plan couldn't be found."),
    planId,
  );

  if (!parsed.ok) {
    return { message: parsed.message, status: "error" };
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    return { message: "Log in to change a Plan.", status: "error" };
  }

  const failure = archived
    ? "Unable to archive the Plan right now. Try again."
    : "Unable to restore the Plan right now. Try again.";
  const statusResult = await supabase
    .schema("planning")
    .from("mainline_team_plan_statuses")
    .select("id")
    .eq("slug", archived ? "archived" : "active")
    .maybeSingle();

  if (statusResult.error || !statusResult.data) {
    return { message: failure, status: "error" };
  }

  const result = await supabase
    .schema("planning")
    .from("mainline_team_plans")
    .update({ status_id: statusResult.data.id })
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

  return { status: "success" };
};
