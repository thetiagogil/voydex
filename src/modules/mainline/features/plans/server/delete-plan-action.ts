"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { safeParseInput, uuidSchema } from "@/shared/utils/input-schemas";

export type DeletePlanResult =
  | { status: "success" }
  | { message: string; status: "error" };

/*
 * Delete a Plan from My Plans. One row: its Pokémon, moves, expansions, tags
 * and the links of the Plays following it go with it (they cascade), so
 * those Plays stop comparing against it.
 */
export const deletePlanAction = async (
  planId: unknown,
): Promise<DeletePlanResult> => {
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
    return { message: "Log in to delete a Plan.", status: "error" };
  }

  const result = await supabase
    .schema("planning")
    .from("mainline_team_plans")
    .delete()
    .eq("id", parsed.data)
    .eq("user_id", userId)
    .select("id");

  if (result.error) {
    return {
      message: "Unable to delete the Plan right now. Try again.",
      status: "error",
    };
  }

  if (!result.data.length) {
    return { message: "That Plan couldn't be found.", status: "error" };
  }

  revalidatePath(appRoutes.mainlinePlans);
  revalidatePath(appRoutes.mainline);

  return { status: "success" };
};
