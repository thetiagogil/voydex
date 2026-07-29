import { buildMainlinePlayTeamPreview } from "@/modules/mainline/features/plays/hub/data/team-member-mappers";
import { buildMainlinePlayOverviewTeamPreview } from "@/modules/mainline/features/plays/hub/views/overview/data/team-preview-mapper";
import { buildMainlinePlayTeamPlanSummary } from "@/modules/mainline/features/plays/hub/views/team/data/team-plan-mapper";
import type {
  MainlineChallengeRule,
  MainlinePlayGameContextRows,
  MainlinePlayMilestoneRows,
  MainlinePlayOverviewData,
  MainlinePlayOverview,
  MainlinePlayRuleRows,
  MainlinePlayShellData,
  MainlinePlayTeamRosterData,
  MainlinePlayTeamPlanData,
  MainlinePlayTeamPlanPreview,
  MainlinePlayTeamPlanRows,
  MainlinePlayTeamPreviewRows,
  MainlinePlayTeamRows,
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/hub/types";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";

export const buildMainlinePlayRules = (
  rows: MainlinePlayRuleRows,
): MainlineChallengeRule[] => {
  const ruleById = new Map(rows.rules.map((rule) => [rule.id, rule]));

  return rows.links
    .map((link) => ruleById.get(link.challenge_rule_id))
    .filter((rule): rule is MainlineChallengeRule => Boolean(rule));
};

export const buildMainlinePlayShellData = (params: {
  collectiblesAvailable: boolean;
  gameContext: MainlinePlayGameContextRows;
  play: MainlinePlaySummary;
  ruleRows: MainlinePlayRuleRows;
}): MainlinePlayShellData => {
  return {
    collectiblesAvailable: params.collectiblesAvailable,
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
  teamPreviewRows: MainlinePlayTeamPreviewRows;
  timelinePreview: MainlinePlayTimelineEvent[];
}): MainlinePlayOverviewData => {
  return {
    lastCompletedMilestone: params.milestones.lastCompletedMilestone,
    nextMilestone: params.milestones.nextMilestone,
    overview: params.overview,
    play: params.play,
    teamPreview: buildMainlinePlayOverviewTeamPreview(params.teamPreviewRows),
    timelinePreview: params.timelinePreview,
  };
};

type MainlinePlayTeamContextParams = {
  play: MainlinePlaySummary;
  teamPlanRows: MainlinePlayTeamPlanRows;
  teamRows: MainlinePlayTeamRows;
};

const buildMainlinePlayTeamContext = (
  params: MainlinePlayTeamContextParams,
) => {
  const roster = buildMainlinePlayTeamPreview(params.teamRows);
  const mechanics = resolveGameMechanics({
    gameId: params.play.game_id,
    generationId: params.play.generation_id,
    versionGroupId: params.play.version_group_id,
  });
  const teamPlan = buildMainlinePlayTeamPlanSummary(
    params.teamPlanRows.rows,
    roster,
    params.teamRows.evolutionEdges ?? [],
    {
      attributes: params.teamPlanRows.attributes,
      mechanics,
      types: params.teamPlanRows.types,
    },
  );

  return { mechanics, roster, teamPlan };
};

const buildTeamPlanPreview = (
  plan: NonNullable<
    ReturnType<typeof buildMainlinePlayTeamContext>["teamPlan"]
  >,
): MainlinePlayTeamPlanPreview => {
  return {
    exactMatchCount: plan.exactMatchCount,
    foundCount: plan.foundCount,
    followingState: plan.followingState,
    offPlanCount: plan.offPlanCount,
    planName: plan.planName,
    targetCount: plan.targetCount,
  };
};

export const buildMainlinePlayTeamRosterData = (
  params: MainlinePlayTeamContextParams & {
    teamTimelinePreview: MainlinePlayTimelineEvent[];
  },
): MainlinePlayTeamRosterData => {
  const { mechanics, roster, teamPlan } = buildMainlinePlayTeamContext(params);

  return {
    mechanics,
    play: params.play,
    roster,
    teamPlan: teamPlan ? buildTeamPlanPreview(teamPlan) : null,
    teamTimelinePreview: params.teamTimelinePreview,
  };
};

export const buildMainlinePlayTeamPlanData = (
  params: MainlinePlayTeamContextParams,
): MainlinePlayTeamPlanData => {
  const { teamPlan } = buildMainlinePlayTeamContext(params);

  return { teamPlan };
};
