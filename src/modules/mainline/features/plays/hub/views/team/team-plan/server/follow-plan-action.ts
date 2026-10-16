"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

export type FollowPlanActionResult = {
  message: string;
  status: "error" | "success";
};

/*
 * Makes this Play follow one of your Plans. A Play follows one Plan at most:
 * an existing link is pointed at the new Plan in one update, and a Play with
 * none is linked through `link_mainline_team_plan_to_play`. Either way the
 * database checks that the Plan is yours and for the same game.
 */
export const followMainlinePlayPlanAction = async ({
  planId,
  planName,
  playId,
}: {
  planId: string;
  planName: string;
  playId: string;
}): Promise<FollowPlanActionResult> => {
  try {
    if (!isUuid(playId) || !isUuid(planId)) {
      throw new Error("A valid Play and Plan are required.");
    }

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

    const writeResult = linkResult.data
      ? await supabase
          .schema("planning")
          .from("mainline_play_plan_links")
          .update({ team_plan_id: planId })
          .eq("id", linkResult.data.id)
      : await supabase
          .schema("planning")
          .rpc("link_mainline_team_plan_to_play", {
            p_play_id: playId,
            p_team_plan_id: planId,
          });

    if (writeResult.error) {
      throw new Error("That Plan can't be followed by this Play.");
    }

    revalidatePath(appRoutes.mainlinePlay(playId));
    revalidatePath(appRoutes.mainlinePlayTeamPlan(playId));

    return { message: `Now following ${planName}`, status: "success" };
  } catch (error) {
    return {
      message:
        error instanceof Error ? error.message : "Unable to follow that Plan.",
      status: "error",
    };
  }
};
