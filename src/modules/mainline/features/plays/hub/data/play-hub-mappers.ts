import { buildMainlinePlayTeamPreview } from "@/modules/mainline/features/plays/hub/data/team-member-mappers";
import { buildMainlinePlayOverviewTeamPreview } from "@/modules/mainline/features/plays/hub/views/overview/data/team-preview-mapper";
import { buildMainlinePlayTeamPlanSummary } from "@/modules/mainline/features/plays/hub/views/team/data/team-plan-mapper";
import type {
  MainlineChallengeRule,
  MainlinePlayFollowablePlan,
  MainlinePlayGameContextRows,
  MainlinePlayOverviewData,
  MainlinePlayOverview,
  MainlinePlayRuleRows,
  MainlinePlayShellData,
  MainlinePlayTeamRosterData,
  MainlinePlayTeamPlanData,
  MainlinePlayTeamPlanRows,
  MainlinePlayTeamPreviewRows,
  MainlinePlayTeamRows,
} from "@/modules/mainline/features/plays/hub/types";
import type {
  MainlinePlaySummary,
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/shared/types";
import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import { buildMainlinePlayBadgeCase } from "@/modules/mainline/features/plays/hub/views/overview/data/badge-case-mapper";
import {
  getOverviewMilestoneSummary,
  type MainlinePlayOverviewMilestoneRows,
} from "@/modules/mainline/features/plays/hub/views/overview/data/overview-milestones-mapper";
import {
  buildOverviewPartnerChoice,
  findOverviewPartnerMilestone,
  getOverviewPartnerFormIds,
  isOverviewFreshPlay,
  type OverviewPartnerFormRows,
} from "@/modules/mainline/features/plays/hub/views/overview/data/partner-choice-mapper";
import { orderPlayMilestones } from "@/modules/mainline/features/plays/shared/data/play-milestones";

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
  tags: string[];
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
    tags: params.tags,
  };
};

const getOverviewTeamCount = (overview: MainlinePlayOverview | null) =>
  (overview?.active_team_count ?? 0) + (overview?.reserve_team_count ?? 0);

/*
 * The partner options to read for a brand-new Play's hero, or none once the
 * Play is under way.
 */
export const getMainlinePlayOverviewPartnerFormIds = (params: {
  milestoneRows: MainlinePlayOverviewMilestoneRows;
  overview: MainlinePlayOverview | null;
  play: MainlinePlaySummary;
}): number[] => {
  const orderedMilestones = orderPlayMilestones(params.milestoneRows);
  const partnerMilestone = findOverviewPartnerMilestone(
    orderedMilestones,
    params.play.version_group_id,
  );

  return partnerMilestone &&
    isOverviewFreshPlay({
      orderedMilestones,
      partnerMilestone,
      teamCount: getOverviewTeamCount(params.overview),
    })
    ? getOverviewPartnerFormIds(partnerMilestone)
    : [];
};

export const buildMainlinePlayOverviewData = (params: {
  milestoneRows: MainlinePlayOverviewMilestoneRows;
  overview: MainlinePlayOverview | null;
  /* Read only for a brand-new Play (see getMainlinePlayOverviewPartnerFormIds). */
  partnerRows: OverviewPartnerFormRows | null;
  play: MainlinePlaySummary;
  teamPreviewRows: MainlinePlayTeamPreviewRows;
  timelinePreview: MainlinePlayTimelineEvent[];
}): MainlinePlayOverviewData => {
  const orderedMilestones = orderPlayMilestones(params.milestoneRows);
  const badgeRows = {
    milestones: orderedMilestones,
    types: params.milestoneRows.types,
  };
  const partnerMilestone = params.partnerRows
    ? findOverviewPartnerMilestone(
        orderedMilestones,
        params.play.version_group_id,
      )
    : null;
  const partner =
    partnerMilestone && params.partnerRows
      ? buildOverviewPartnerChoice({
          formRows: params.partnerRows,
          milestone: partnerMilestone,
          orderedMilestones,
        })
      : null;

  return {
    badgeCase: buildMainlinePlayBadgeCase(badgeRows),
    freshPlay: partner ? { partner } : null,
    nextDecisionMilestone: null,
    ...getOverviewMilestoneSummary(orderedMilestones),
    overview: params.overview,
    play: params.play,
    teamPreview: buildMainlinePlayOverviewTeamPreview(params.teamPreviewRows),
    timelinePreview: params.timelinePreview,
  };
};

type MainlinePlayTeamContextParams = {
  play: MainlinePlaySummary;
  teamRows: MainlinePlayTeamRows;
};

const resolvePlayMechanics = (play: MainlinePlaySummary) =>
  resolveGameMechanics({
    gameId: play.game_id,
    generationId: play.generation_id,
    versionGroupId: play.version_group_id,
  });

/* The Roster: the team and reserve, and what this game records. */
export const buildMainlinePlayTeamRosterData = (
  params: MainlinePlayTeamContextParams,
): MainlinePlayTeamRosterData => {
  return {
    mechanics: resolvePlayMechanics(params.play),
    play: params.play,
    roster: buildMainlinePlayTeamPreview(params.teamRows),
  };
};

export const buildMainlinePlayTeamPlanData = (
  params: MainlinePlayTeamContextParams & {
    followablePlans?: MainlinePlayFollowablePlan[];
    teamPlanRows: MainlinePlayTeamPlanRows;
  },
): MainlinePlayTeamPlanData => {
  const roster = buildMainlinePlayTeamPreview(params.teamRows);

  return {
    followablePlans: params.followablePlans ?? [],
    versionGroupSlug: params.play.version_group_slug ?? null,
    teamPlan: buildMainlinePlayTeamPlanSummary(
      params.teamPlanRows.rows,
      roster,
      params.teamRows.evolutionEdges ?? [],
      {
        attributes: params.teamPlanRows.attributes,
        mechanics: resolvePlayMechanics(params.play),
        types: params.teamPlanRows.types,
      },
    ),
  };
};
