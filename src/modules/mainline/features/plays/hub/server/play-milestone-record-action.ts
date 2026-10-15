"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

export type PlayMilestoneRecordResult =
  | {
      /* Where the milestone now stands in its journey, for the toast. */
      completedCount: number;
      /* Whether the milestone can keep a team snapshot, for "Add team". */
      keepsSnapshot: boolean;
      milestoneName: string;
      status: "success";
      totalCount: number;
    }
  | { message: string; status: "error" };

export type PlayMilestoneUndoResult = {
  message: string;
  status: "error" | "success";
};

/*
 * The generated types don't include this function yet (its migration is
 * local), so the cast stays scoped to this one call, as Story's action does.
 */
type MilestoneIncompletionRpc = {
  rpc: (
    functionName: "mark_mainline_play_milestone_incomplete",
    args: {
      p_expected_affected_milestone_ids: number[];
      p_milestone_id: number;
      p_play_id: string;
    },
  ) => PromiseLike<{ error: { message: string } | null }>;
};

const revalidatePlayMilestonePaths = (playId: string) => {
  revalidatePath(appRoutes.mainlinePlay(playId));
  revalidatePath(appRoutes.mainlinePlayProgressStory(playId));
  revalidatePath(appRoutes.mainlinePlayHistory(playId));
  revalidatePath(appRoutes.mainlinePlayTeamAnalysis(playId));
};

const assertPositiveInteger = (value: number, label: string) => {
  if (!Number.isInteger(value) || value <= 0) {
    throw new Error(`${label} must be a positive integer.`);
  }
};

const getAuthenticatedClient = async () => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);

  if (!claimsResult?.data?.claims?.sub) {
    throw new Error("You must be logged in to record Story progress.");
  }

  return supabase;
};

/*
 * Records a milestone in one tap (v3's Record): no form, and the moment
 * joins History without the team; where the milestone keeps snapshots the
 * toast offers "Add team" (recordMainlinePlayMilestoneTeamAction). A choice
 * milestone records its decision when one is given.
 */
export const recordMainlinePlayMilestoneAction = async ({
  decisionOptionId = null,
  milestoneId,
  playId,
}: {
  decisionOptionId?: number | null;
  milestoneId: number;
  playId: string;
}): Promise<PlayMilestoneRecordResult> => {
  try {
    if (!isUuid(playId)) {
      throw new Error("A valid Play is required.");
    }

    assertPositiveInteger(milestoneId, "Milestone");

    if (decisionOptionId !== null) {
      assertPositiveInteger(decisionOptionId, "Decision");
    }

    const supabase = await getAuthenticatedClient();
    const milestoneResult = await supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select(
        "is_completed, milestone_name, snapshot_policy_slug, version_group_id",
      )
      .eq("play_id", playId)
      .eq("milestone_id", milestoneId)
      .maybeSingle();

    if (milestoneResult.error || !milestoneResult.data) {
      throw new Error("This milestone isn't part of the Play.");
    }

    const milestone = milestoneResult.data;

    if (milestone.is_completed) {
      throw new Error(`${milestone.milestone_name} is already recorded.`);
    }

    const keepsSnapshot = milestone.snapshot_policy_slug !== "none";
    const mutationResult = await supabase
      .schema("gameplay")
      .rpc("complete_mainline_play_milestone", {
        p_completed_at: new Date().toISOString(),
        p_create_event: true,
        p_decision_option_id: decisionOptionId ?? undefined,
        p_include_team_snapshot: false,
        p_milestone_id: milestoneId,
        p_play_id: playId,
        p_replace_decision: decisionOptionId !== null,
      });

    if (mutationResult.error) {
      /* The database's own words stay on the server. */
      throw new Error(
        `Unable to record ${milestone.milestone_name ?? "that milestone"}. Try again.`,
      );
    }

    const journeyResult = await supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select("is_completed")
      .eq("play_id", playId)
      .eq("version_group_id", milestone.version_group_id ?? -1);

    revalidatePlayMilestonePaths(playId);

    const journey = journeyResult.error ? [] : (journeyResult.data ?? []);

    return {
      completedCount: journey.filter((row) => row.is_completed).length,
      keepsSnapshot,
      milestoneName: milestone.milestone_name ?? "Milestone",
      status: "success",
      totalCount: journey.length,
    };
  } catch (error) {
    return {
      message:
        error instanceof Error ? error.message : "Unable to record that.",
      status: "error",
    };
  }
};

/*
 * "Add team" after a one-tap Record: saves the team you have now with the
 * milestone's moment in History, as Story's "Record team snapshot" does.
 */
export const recordMainlinePlayMilestoneTeamAction = async ({
  milestoneId,
  playId,
}: {
  milestoneId: number;
  playId: string;
}): Promise<PlayMilestoneUndoResult> => {
  try {
    if (!isUuid(playId)) {
      throw new Error("A valid Play is required.");
    }

    assertPositiveInteger(milestoneId, "Milestone");

    const supabase = await getAuthenticatedClient();
    const milestoneResult = await supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select(
        "completed_at, is_completed, milestone_name, snapshot_policy_slug",
      )
      .eq("play_id", playId)
      .eq("milestone_id", milestoneId)
      .maybeSingle();

    if (milestoneResult.error || !milestoneResult.data) {
      throw new Error("This milestone isn't part of the Play.");
    }

    const milestone = milestoneResult.data;

    if (!milestone.is_completed || milestone.snapshot_policy_slug === "none") {
      throw new Error("This milestone can't keep a team yet.");
    }

    const mutationResult = await supabase
      .schema("gameplay")
      .rpc("complete_mainline_play_milestone", {
        p_completed_at: milestone.completed_at ?? new Date().toISOString(),
        p_create_event: true,
        p_include_team_snapshot: true,
        p_milestone_id: milestoneId,
        p_play_id: playId,
        p_replace_decision: false,
        p_replace_progress_notes: false,
      });

    if (mutationResult.error) {
      throw new Error("Unable to save your team with it. Try again.");
    }

    revalidatePlayMilestonePaths(playId);

    return {
      message: `Team saved with ${milestone.milestone_name ?? "the milestone"}`,
      status: "success",
    };
  } catch (error) {
    return {
      message:
        error instanceof Error ? error.message : "Unable to save your team.",
      status: "error",
    };
  }
};

/*
 * Undo for a milestone recorded a moment ago: marks it incomplete again,
 * which also takes its moment out of History. If something recorded since
 * depends on it, the database refuses and nothing changes.
 */
export const undoMainlinePlayMilestoneAction = async ({
  milestoneId,
  playId,
}: {
  milestoneId: number;
  playId: string;
}): Promise<PlayMilestoneUndoResult> => {
  try {
    if (!isUuid(playId)) {
      throw new Error("A valid Play is required.");
    }

    assertPositiveInteger(milestoneId, "Milestone");

    const supabase = await getAuthenticatedClient();
    const gameplaySchema = supabase.schema(
      "gameplay",
    ) as unknown as MilestoneIncompletionRpc;
    const result = await gameplaySchema.rpc(
      "mark_mainline_play_milestone_incomplete",
      {
        p_expected_affected_milestone_ids: [milestoneId],
        p_milestone_id: milestoneId,
        p_play_id: playId,
      },
    );

    if (result.error) {
      throw new Error(
        "Couldn't undo: something recorded since depends on it. Change it from Story.",
      );
    }

    revalidatePlayMilestonePaths(playId);

    return { message: "Undone", status: "success" };
  } catch (error) {
    return {
      message: error instanceof Error ? error.message : "Unable to undo that.",
      status: "error",
    };
  }
};
