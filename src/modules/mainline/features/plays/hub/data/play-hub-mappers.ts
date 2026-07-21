import { buildMainlinePlayTeamPreview } from "@/modules/mainline/features/plays/hub/tabs/overview/data/play-overview-mappers";
import { buildMainlinePlayTeamPlanSummary } from "@/modules/mainline/features/plays/hub/tabs/team/data/team-plan-mapper";
import type {
  MainlineChallengeRule,
  MainlinePlayGameContextRows,
  MainlinePlayHubData,
  MainlinePlayMilestoneRows,
  MainlinePlayOverview,
  MainlinePlayRuleRows,
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

export const buildMainlinePlayHubData = (params: {
  gameContext: MainlinePlayGameContextRows;
  milestones: MainlinePlayMilestoneRows;
  overview: MainlinePlayOverview | null;
  play: MainlinePlaySummary;
  ruleRows: MainlinePlayRuleRows;
  teamRows: MainlinePlayTeamRows;
  teamPlanRows: MainlinePlayTeamPlanRow[];
  teamTimelinePreview: MainlinePlayTimelineEvent[];
  timelinePreview: MainlinePlayTimelineEvent[];
}): MainlinePlayHubData => {
  const roster = buildMainlinePlayTeamPreview(params.teamRows);

  return {
    coverImageUrl: params.gameContext.game
      ? getGameCoverImageUrl(params.gameContext.game)
      : null,
    game: params.gameContext.game,
    lastCompletedMilestone: params.milestones.lastCompletedMilestone,
    nextMilestone: params.milestones.nextMilestone,
    overview: params.overview,
    play: params.play,
    region: params.gameContext.region,
    roster,
    rules: buildMainlinePlayRules(params.ruleRows),
    teamPreview: roster.filter(
      (member) => member.roster_state_slug === "active",
    ),
    teamPlan: buildMainlinePlayTeamPlanSummary(params.teamPlanRows, roster),
    teamTimelinePreview: params.teamTimelinePreview,
    timelinePreview: params.timelinePreview,
  };
};
