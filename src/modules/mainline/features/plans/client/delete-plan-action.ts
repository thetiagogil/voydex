import { notifyLocalSave } from "@/platform/local-db/local-db-context";

import { readLocalClaims } from "@/platform/local-db/local-claims";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";
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

  const supabase = await getLocalQueryClient();
  const claimsResult = await readLocalClaims(supabase);
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

  notifyLocalSave();

  return { status: "success" };
};
