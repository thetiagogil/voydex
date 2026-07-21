import type {
  MainlinePlayTeamPlanFollowingState,
  MainlinePlayTeamPlanSummary,
} from "@/modules/mainline/features/plays/hub/types";

const pluralize = (
  count: number,
  singular: string,
  plural = `${singular}s`,
) => {
  return `${count} ${count === 1 ? singular : plural}`;
};

const joinSummaryParts = (parts: string[]) => {
  if (parts.length < 2) {
    return parts[0] ?? null;
  }

  if (parts.length === 2) {
    return `${parts[0]} and ${parts[1]}`;
  }

  return `${parts.slice(0, -1).join(", ")}, and ${parts.at(-1)}`;
};

export const getTeamPlanFollowingLabel = (
  state: MainlinePlayTeamPlanFollowingState,
) => {
  switch (state) {
    case "following":
      return "Following the plan";
    case "following-with-changes":
      return "Following with changes";
    case "not-following":
      return "Not following the plan";
    case "not-started":
      return "Plan not started";
  }
};

export const getTeamPlanTargetProgressLabel = (
  plan: MainlinePlayTeamPlanSummary,
) => {
  if (!plan.primaryTargetCount) {
    return "No primary targets yet";
  }

  const targetLabel = plan.primaryTargetCount === 1 ? "target" : "targets";

  return `${plan.reachedCount} of ${plan.primaryTargetCount} ${targetLabel} reached`;
};

export const getTeamPlanActiveTargetSummary = (
  plan: MainlinePlayTeamPlanSummary,
) => {
  const parts: string[] = [];

  if (plan.inProgressCount) {
    parts.push(pluralize(plan.inProgressCount, "in progress", "in progress"));
  }

  if (plan.notUsedCount) {
    parts.push(pluralize(plan.notUsedCount, "not used yet", "not used yet"));
  }

  return joinSummaryParts(parts);
};

export const getTeamPlanChangeSummary = (plan: MainlinePlayTeamPlanSummary) => {
  const parts: string[] = [];

  if (plan.primarySkippedCount) {
    parts.push(
      pluralize(plan.primarySkippedCount, "target skipped", "targets skipped"),
    );
  }

  if (plan.offPlanCount) {
    parts.push(
      pluralize(plan.offPlanCount, "off-plan member", "off-plan members"),
    );
  }

  if (plan.alternateSkippedCount) {
    parts.push(
      pluralize(
        plan.alternateSkippedCount,
        "alternate skipped",
        "alternates skipped",
      ),
    );
  }

  return joinSummaryParts(parts);
};
