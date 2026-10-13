import { buildMainlinePlayTeamPreview } from "@/modules/mainline/features/plays/hub/data/team-member-mappers";
import { buildMainlinePlayOverviewTeamPreview } from "@/modules/mainline/features/plays/hub/views/overview/data/team-preview-mapper";
import { buildMainlinePlayTeamPlanSummary } from "@/modules/mainline/features/plays/hub/views/team/data/team-plan-mapper";
import type {
  MainlineChallengeRule,
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
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/hub/types";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import {
  buildMainlinePlayBadgeCase,
  getBadgeTypeByMilestoneId,
} from "@/modules/mainline/features/plays/hub/views/overview/data/badge-case-mapper";
import {
  getOverviewMilestoneSummary,
  type MainlinePlayOverviewMilestoneRows,
} from "@/modules/mainline/features/plays/hub/views/overview/data/overview-milestones-mapper";
import { orderPlayMilestones } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import type { PlayTeamSnapshotMember } from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";

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

export const buildMainlinePlayOverviewData = (params: {
  /* The team saved with the last milestone recorded, if any. */
  lastRecordedTeam: PlayTeamSnapshotMember[];
  milestoneRows: MainlinePlayOverviewMilestoneRows;
  overview: MainlinePlayOverview | null;
  play: MainlinePlaySummary;
  teamPreviewRows: MainlinePlayTeamPreviewRows;
  timelinePreview: MainlinePlayTimelineEvent[];
}): MainlinePlayOverviewData => {
  const orderedMilestones = orderPlayMilestones(params.milestoneRows);
  const badgeRows = {
    milestones: orderedMilestones,
    types: params.milestoneRows.types,
  };

  return {
    badgeCase: buildMainlinePlayBadgeCase(badgeRows),
    ...getOverviewMilestoneSummary(
      orderedMilestones,
      getBadgeTypeByMilestoneId(badgeRows),
    ),
    lastRecordedTeam: params.lastRecordedTeam,
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
    teamPlanRows: MainlinePlayTeamPlanRows;
  },
): MainlinePlayTeamPlanData => {
  const roster = buildMainlinePlayTeamPreview(params.teamRows);

  return {
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
