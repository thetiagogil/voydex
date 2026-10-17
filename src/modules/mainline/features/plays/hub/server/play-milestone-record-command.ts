import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Records a milestone in one tap (v3's Record) and says where it now stands
 * in its journey. The moment joins History without the team unless
 * `includeTeam` asks for it and the milestone keeps snapshots.
 */
export const recordPlayMilestone = async (
  supabase: ServerSupabaseClient,
  {
    decisionOptionId,
    includeTeam,
    milestoneId,
    playId,
  }: {
    decisionOptionId: number | null;
    includeTeam: boolean;
    milestoneId: number;
    playId: string;
  },
) => {
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
      p_include_team_snapshot: includeTeam && keepsSnapshot,
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
  const journey = journeyResult.error ? [] : (journeyResult.data ?? []);

  return {
    completedCount: journey.filter((row) => row.is_completed).length,
    keepsSnapshot,
    milestoneName: milestone.milestone_name ?? "Milestone",
    totalCount: journey.length,
  };
};

/*
 * "Add team" after a one-tap Record: saves the team you have now with the
 * milestone's moment in History. Returns the milestone's name.
 */
export const recordPlayMilestoneTeam = async (
  supabase: ServerSupabaseClient,
  { milestoneId, playId }: { milestoneId: number; playId: string },
) => {
  const milestoneResult = await supabase
    .schema("views")
    .from("mainline_play_milestone_detail")
    .select("completed_at, is_completed, milestone_name, snapshot_policy_slug")
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

  return milestone.milestone_name;
};

/*
 * Marks a milestone recorded a moment ago incomplete again, which also takes
 * its moment out of History. If something recorded since depends on it, the
 * database refuses and nothing changes.
 */
export const undoPlayMilestone = async (
  supabase: ServerSupabaseClient,
  { milestoneId, playId }: { milestoneId: number; playId: string },
) => {
  const result = await supabase
    .schema("gameplay")
    .rpc("mark_mainline_play_milestone_incomplete", {
      p_expected_affected_milestone_ids: [milestoneId],
      p_milestone_id: milestoneId,
      p_play_id: playId,
    });

  if (result.error) {
    throw new Error(
      "Couldn't undo: something recorded since depends on it. Change it from Story.",
    );
  }
};
