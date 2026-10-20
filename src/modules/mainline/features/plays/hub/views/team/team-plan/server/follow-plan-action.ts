"use server";

import { revalidatePath } from "next/cache";
import { z } from "zod";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { parseInput, uuidSchema } from "@/shared/utils/input-schemas";

export type FollowPlanActionResult = {
  message: string;
  status: "error" | "success";
};

const followPlanInputSchema = z.object({
  playId: uuidSchema("A valid Play and Plan are required."),
  planId: uuidSchema("A valid Play and Plan are required."),
  /* Only echoed back in the toast. */
  planName: z
    .string({ error: "A valid Play and Plan are required." })
    .trim()
    .max(200, { error: "A valid Play and Plan are required." }),
});

/* "Monotype, Level caps and Nuzlocke". */
const formatList = (names: string[]) =>
  names.length > 1
    ? `${names.slice(0, -1).join(", ")} and ${names.at(-1)}`
    : (names[0] ?? "");

/*
 * Makes this Play follow one of your Plans. A Play follows one Plan at most,
 * so an existing link moves to the new Plan. `link_mainline_team_plan_to_play`
 * does it in one step: it checks the Plan is yours and for the same game, and
 * copies the Plan's rules the Play lacks (a snapshot the Play can remove).
 */
export const followMainlinePlayPlanAction = async (input: {
  planId: string;
  planName: string;
  playId: string;
}): Promise<FollowPlanActionResult> => {
  try {
    const { planId, planName, playId } = parseInput(
      followPlanInputSchema,
      input,
    );

    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);

    if (!claimsResult?.data?.claims?.sub) {
      throw new Error("You must be logged in to follow a Plan.");
    }

    const linkResult = await supabase
      .schema("planning")
      .from("mainline_play_plan_links")
      .select("id, team_plan_id")
      .eq("play_id", playId)
      .maybeSingle();

    if (linkResult.error) {
      throw new Error("Unable to read which Plan this Play follows.");
    }

    if (linkResult.data?.team_plan_id === planId) {
      return { message: `Already following ${planName}`, status: "success" };
    }

    /* One function links the Plan (moving an existing link) and copies
     * the rules it has that the Play lacks. */
    const writeResult = await supabase
      .schema("planning")
      .rpc("link_mainline_team_plan_to_play", {
        p_play_id: playId,
        p_replace_existing: true,
        p_team_plan_id: planId,
      });

    if (writeResult.error) {
      throw new Error("That Plan can't be followed by this Play.");
    }

    const addedRuleIds = writeResult.data?.[0]?.result_added_rule_ids ?? [];
    const addedRules = addedRuleIds.length
      ? await supabase
          .schema("gameplay")
          .from("mainline_challenge_rules")
          .select("name")
          .in("id", addedRuleIds)
          .order("name", { ascending: true })
      : null;
    const addedNames = (addedRules?.data ?? []).map((rule) => rule.name);

    revalidatePath(appRoutes.mainlinePlay(playId), "layout");

    return {
      message: addedNames.length
        ? `Now following ${planName}. Added ${formatList(addedNames)} to this Play's rules`
        : `Now following ${planName}`,
      status: "success",
    };
  } catch (error) {
    return {
      message:
        error instanceof Error ? error.message : "Unable to follow that Plan.",
      status: "error",
    };
  }
};
