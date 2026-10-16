"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import {
  recordPlayMilestone,
  recordPlayMilestoneTeam,
  undoPlayMilestone,
} from "@/modules/mainline/features/plays/hub/server/play-milestone-record-command";
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
 * joins History without the team unless asked ("Record with your team");
 * where the milestone keeps snapshots the toast then offers "Add team"
 * (recordMainlinePlayMilestoneTeamAction). A choice milestone records its
 * decision when one is given.
 */
export const recordMainlinePlayMilestoneAction = async ({
  decisionOptionId = null,
  includeTeam = false,
  milestoneId,
  playId,
}: {
  decisionOptionId?: number | null;
  /* "Record with your team": saves the team you have now with the moment. */
  includeTeam?: boolean;
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
    const result = await recordPlayMilestone(supabase, {
      decisionOptionId,
      includeTeam,
      milestoneId,
      playId,
    });

    revalidatePlayMilestonePaths(playId);

    return { ...result, status: "success" };
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
    const milestoneName = await recordPlayMilestoneTeam(supabase, {
      milestoneId,
      playId,
    });

    revalidatePlayMilestonePaths(playId);

    return {
      message: `Team saved with ${milestoneName ?? "the milestone"}`,
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

    await undoPlayMilestone(supabase, { milestoneId, playId });
    revalidatePlayMilestonePaths(playId);

    return { message: "Undone", status: "success" };
  } catch (error) {
    return {
      message: error instanceof Error ? error.message : "Unable to undo that.",
      status: "error",
    };
  }
};
