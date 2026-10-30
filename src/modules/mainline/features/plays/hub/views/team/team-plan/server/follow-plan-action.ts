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

/*
 * Makes this Play follow one of your Plans. A Play follows one Plan at most,
 * so an existing link moves to the new Plan; `link_mainline_team_plan_to_play`
 * does it in one step and checks the Plan is yours and for the same version
 * group (a Plan is for either game).
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

    revalidatePath(appRoutes.mainlinePlay(playId), "layout");

    return { message: `Now following ${planName}`, status: "success" };
  } catch (error) {
    return {
      message:
        error instanceof Error ? error.message : "Unable to follow that Plan.",
      status: "error",
    };
  }
};
