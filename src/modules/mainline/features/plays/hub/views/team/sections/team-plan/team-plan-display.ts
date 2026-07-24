import type {
  MainlinePlayTeamPlanFollowingState,
  MainlinePlayTeamPlanStatus,
  MainlinePlayTeamPlanSummary,
} from "@/modules/mainline/features/plays/hub/types";

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

export const getTeamPlanStatusLabel = (status: MainlinePlayTeamPlanStatus) => {
  switch (status) {
    case "exact-match":
      return "Exact match";
    case "build-differs":
      return "Build differs";
    case "alternate-form":
      return "Alternate form";
    case "earlier-evolution":
      return "In progress";
    case "later-evolution":
      return "Evolved beyond plan";
    case "branched-evolution":
      return "Branched evolution";
    case "retired":
      return "Previously used · retired";
    case "replaced":
      return "Previously used · replaced";
    case "not-found":
      return "Not found";
    case "exact":
      return "Exact identity";
  }
};

export const getTeamPlanStatusDescription = (
  status: MainlinePlayTeamPlanStatus,
) => {
  switch (status) {
    case "exact-match":
      return "Species, form, and every specified build field match the Plan.";
    case "build-differs":
      return "Species and form match, but at least one specified build field differs.";
    case "alternate-form":
      return "The Play uses the planned species in a different form.";
    case "earlier-evolution":
      return "The matched Pokémon is earlier in the planned evolution path.";
    case "later-evolution":
      return "The matched Pokémon evolved beyond the species recorded in the Plan.";
    case "branched-evolution":
      return "The matched Pokémon belongs to the same family on another branch.";
    case "retired":
      return "This planned family was used earlier in the Play, then retired.";
    case "replaced":
      return "This planned family was used earlier in the Play, then replaced.";
    case "not-found":
      return "No existing Play Pokémon belongs to this planned family.";
    case "exact":
      return "Species and form match.";
  }
};

export const getTeamPlanTargetProgressLabel = (
  plan: MainlinePlayTeamPlanSummary,
) => `${plan.foundCount} of ${plan.targetCount} planned Pokémon found`;

export const getTeamPlanActiveTargetSummary = (
  plan: MainlinePlayTeamPlanSummary,
) =>
  plan.exactMatchCount
    ? `${plan.exactMatchCount} exact ${plan.exactMatchCount === 1 ? "match" : "matches"}`
    : null;

export const getTeamPlanChangeSummary = (plan: MainlinePlayTeamPlanSummary) =>
  plan.offPlanCount
    ? `${plan.offPlanCount} Play ${plan.offPlanCount === 1 ? "member was" : "members were"} not included in this Plan`
    : null;
