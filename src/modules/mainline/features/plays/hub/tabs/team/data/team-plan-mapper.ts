import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamPlanFollowingState,
  MainlinePlayTeamPlanRow,
  MainlinePlayTeamPlanSummary,
} from "@/modules/mainline/features/plays/hub/types";

const getFollowingState = (params: {
  hasCurrentRoster: boolean;
  hasFollowingEvidence: boolean;
  hasPlanChanges: boolean;
}): MainlinePlayTeamPlanFollowingState => {
  if (!params.hasFollowingEvidence) {
    return params.hasCurrentRoster ? "not-following" : "not-started";
  }

  return params.hasPlanChanges ? "following-with-changes" : "following";
};

export const buildMainlinePlayTeamPlanSummary = (
  rows: MainlinePlayTeamPlanRow[],
  roster: MainlinePlayTeamMember[],
): MainlinePlayTeamPlanSummary | null => {
  const plan = rows[0];

  if (!plan?.team_plan_id || !plan.team_plan_name) {
    return null;
  }

  const primaryTargets = rows.filter((row) => row.member_group === "primary");
  const reachedCount = primaryTargets.filter(
    (row) => row.member_link_status_slug === "reached",
  ).length;
  const inProgressCount = primaryTargets.filter(
    (row) => row.member_link_status_slug === "linked",
  ).length;
  const notUsedCount = primaryTargets.filter(
    (row) => row.member_link_status_slug === "pending",
  ).length;
  const primarySkippedCount = primaryTargets.filter(
    (row) => row.member_link_status_slug === "skipped",
  ).length;
  const alternateSkippedCount = rows.filter(
    (row) =>
      row.member_group === "alternate" &&
      row.member_link_status_slug === "skipped",
  ).length;
  const relatedMemberIds = new Set(
    rows
      .map((row) => row.play_pokemon_id)
      .filter((memberId): memberId is string => Boolean(memberId)),
  );
  const offPlanCount = roster.filter((member) => {
    return member.play_pokemon_id
      ? !relatedMemberIds.has(member.play_pokemon_id)
      : false;
  }).length;
  const hasFollowingEvidence = reachedCount + inProgressCount > 0;

  return {
    alternateSkippedCount,
    followingState: getFollowingState({
      hasCurrentRoster: roster.length > 0,
      hasFollowingEvidence,
      hasPlanChanges: primarySkippedCount > 0 || offPlanCount > 0,
    }),
    inProgressCount,
    notUsedCount,
    offPlanCount,
    planId: plan.team_plan_id,
    planName: plan.team_plan_name,
    primarySkippedCount,
    primaryTargetCount: primaryTargets.length,
    reachedCount,
  };
};
