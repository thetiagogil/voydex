import { buildMainlinePlayTeamPreview } from "@/modules/mainline/features/plays/hub/views/overview/data/play-overview-mappers";
import { buildMainlinePlayTeamPlanSummary } from "@/modules/mainline/features/plays/hub/views/team/data/team-plan-mapper";
import type {
  MainlineChallengeRule,
  MainlinePlayGameContextRows,
  MainlinePlayMilestoneRows,
  MainlinePlayOverviewData,
  MainlinePlayOverview,
  MainlinePlayRuleRows,
  MainlinePlayShellData,
  MainlinePlayTeamData,
  MainlinePlayTeamRows,
  MainlinePlayTeamPlanRow,
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/hub/types";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";

export const buildMainlinePlayRules = (
  rows: MainlinePlayRuleRows,
): MainlineChallengeRule[] => {
  const ruleById = new Map(rows.rules.map((rule) => [rule.id, rule]));

  return rows.links
    .map((link) => ruleById.get(link.challenge_rule_id))
    .filter((rule): rule is MainlineChallengeRule => Boolean(rule));
};

export const buildMainlinePlayShellData = (params: {
  gameContext: MainlinePlayGameContextRows;
  play: MainlinePlaySummary;
  ruleRows: MainlinePlayRuleRows;
}): MainlinePlayShellData => {
  return {
    coverImageUrl: params.gameContext.game
      ? getGameCoverImageUrl(params.gameContext.game)
      : null,
    game: params.gameContext.game,
    play: params.play,
    region: params.gameContext.region,
    rules: buildMainlinePlayRules(params.ruleRows),
  };
};

export const buildMainlinePlayOverviewData = (params: {
  milestones: MainlinePlayMilestoneRows;
  overview: MainlinePlayOverview | null;
  play: MainlinePlaySummary;
  teamRows: MainlinePlayTeamRows;
  timelinePreview: MainlinePlayTimelineEvent[];
}): MainlinePlayOverviewData => {
  const roster = buildMainlinePlayTeamPreview(params.teamRows);

  return {
    lastCompletedMilestone: params.milestones.lastCompletedMilestone,
    nextMilestone: params.milestones.nextMilestone,
    overview: params.overview,
    play: params.play,
    teamPreview: roster.filter(
      (member) => member.roster_state_slug === "active",
    ),
    timelinePreview: params.timelinePreview,
  };
};

export const buildMainlinePlayTeamData = (params: {
  play: MainlinePlaySummary;
  teamPlanRows: MainlinePlayTeamPlanRow[];
  teamRows: MainlinePlayTeamRows;
  teamTimelinePreview: MainlinePlayTimelineEvent[];
}): MainlinePlayTeamData => {
  const roster = buildMainlinePlayTeamPreview(params.teamRows);

  return {
    play: params.play,
    roster,
    teamPlan: buildMainlinePlayTeamPlanSummary(
      params.teamPlanRows,
      roster,
      params.teamRows.evolutionEdges ?? [],
    ),
    teamTimelinePreview: params.teamTimelinePreview,
  };
};
