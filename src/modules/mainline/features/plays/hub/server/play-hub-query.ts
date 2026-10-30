import { cache } from "react";

import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  buildMainlinePlayOverviewData,
  getMainlinePlayOverviewPartnerFormIds,
  buildMainlinePlayShellData,
  buildMainlinePlayTeamRosterData,
  buildMainlinePlayTeamPlanData,
} from "@/modules/mainline/features/plays/hub/data/play-hub-mappers";
import {
  readMainlinePlayOverviewMilestoneRows,
  readMainlinePlayOverview,
} from "@/modules/mainline/features/plays/hub/views/overview/server/play-overview-reader";
import { readMainlinePlayOverviewPartnerRows } from "@/modules/mainline/features/plays/hub/views/overview/server/play-overview-partner-reader";
import { readMainlinePlayOverviewTeamRows } from "@/modules/mainline/features/plays/hub/views/overview/server/play-overview-team-reader";
import { defaultPlayTracking } from "@/config/play-tracking";
import { readPlayTracking } from "@/modules/mainline/features/plays/hub/server/play-tracking-reader";
import { readMainlinePlayCollectiblesAvailability } from "@/modules/mainline/features/plays/hub/server/play-collectibles-availability-reader";
import { readMainlinePlayTeamRows } from "@/modules/mainline/features/plays/hub/server/play-team-reader";
import {
  readMainlinePlayGameContext,
  readMainlinePlayRuleRows,
  readMainlinePlaySummary,
  readMainlinePlayTagNames,
  readPlayHeaderEditing,
} from "@/modules/mainline/features/plays/hub/server/play-hub-context-reader";
import type {
  MainlinePlayOverviewData,
  MainlinePlayShellData,
  MainlinePlayTeamRosterData,
  MainlinePlayHistoryData,
  MainlinePlayTeamPlanData,
  PlayHeaderEditing,
} from "@/modules/mainline/features/plays/hub/types";
import { readMainlinePlayMomentContext } from "@/modules/mainline/features/plays/shared/server/play-moment-context-reader";
import {
  readMainlinePlayTimeline,
  readMainlinePlayTimelinePreview,
} from "@/modules/mainline/features/plays/shared/server/play-timeline-reader";
import {
  readMainlinePlayFollowablePlans,
  readMainlinePlayOtherVersionExclusives,
  readMainlinePlayTeamPlanRows,
} from "@/modules/mainline/features/plays/hub/views/team/server/team-plan-reader";
import { emptyRuleCheckContext } from "@/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks";
import { readPlayRuleCheckContext } from "@/modules/mainline/features/plays/hub/views/team/team-roster/server/rule-check-reader";
import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import { hasAnyBattleMechanic } from "@/modules/reference/features/pokemon/data/battle-mechanics";
import { readBattleReference } from "@/modules/reference/features/pokemon/server/battle-form-reader";
import { uniqueNumberIds } from "@/shared/utils/collections";
import { buildMainlinePlayTeamAnalysisData } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/data/team-analysis-mapper";
import {
  readMainlinePlayLevelCap,
  readMainlinePlayStoryMatchupRows,
} from "@/modules/mainline/features/plays/hub/views/team/team-analysis/server/story-matchups-reader";
import { readMainlinePlayTeamAnalysisRows } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/server/team-analysis-reader";
import type {
  MainlinePlayTeamAnalysisData,
  TeamAnalysisReading,
} from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { readMainlinePlayStoryProgress } from "@/modules/mainline/features/plays/hub/views/progress/progress-story/server/story-progress-reader";
import {
  buildStoryProgressModel,
  findStoryMilestone,
} from "@/modules/mainline/features/plays/hub/views/progress/progress-story/data/story-progress-model";
import type { MainlinePlayProgressStoryData } from "@/modules/mainline/features/plays/hub/views/progress/progress-story/types";
import { readMainlinePlayPokedexProgress } from "@/modules/mainline/features/plays/hub/views/progress/progress-pokedex/server/pokedex-progress-reader";
import type { MainlinePlayProgressPokedexData } from "@/modules/mainline/features/plays/hub/views/progress/progress-pokedex/types";
import { readMainlinePlayCollectiblesProgress } from "@/modules/mainline/features/plays/hub/views/progress/progress-collectibles/server/collectibles-progress-reader";
import type { MainlinePlayProgressCollectiblesData } from "@/modules/mainline/features/plays/hub/views/progress/progress-collectibles/types";
import { readMainlinePlaySettings } from "@/modules/mainline/features/plays/hub/views/settings/server/play-settings-reader";
import type { MainlinePlaySettingsData } from "@/modules/mainline/features/plays/hub/views/settings/types";
import { isUuid } from "@/shared/utils/identifiers";

const getMainlinePlayRequestContext = cache(async (playId: string) => {
  if (!isUuid(playId)) {
    return null;
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("Unable to load play for the current account.");
  }

  const play = await readMainlinePlaySummary(supabase, userId, playId);

  if (!play) {
    return null;
  }

  return { play, supabase, userId };
});

/* What the Play tracks, once per request: the tabs and the Progress pages share it. */
export const getMainlinePlayTracking = cache(async (playId: string) => {
  const context = await getMainlinePlayRequestContext(playId);

  return context
    ? readPlayTracking(context.supabase, playId)
    : defaultPlayTracking;
});

/* The team and reserve, once per request: the head's rule count and the Roster share them. */
const getMainlinePlayTeamRows = cache(async (playId: string) => {
  const context = await getMainlinePlayRequestContext(playId);

  return context
    ? readMainlinePlayTeamRows(
        context.supabase,
        playId,
        context.play.generation_id,
        context.play.version_group_id,
      )
    : null;
});

/* What the Play's rules check, once per request, as for the team rows. */
const getMainlinePlayRuleChecks = cache(async (playId: string) => {
  const context = await getMainlinePlayRequestContext(playId);

  return context
    ? readPlayRuleCheckContext(context.supabase, context.play, context.userId, {
        readLevelCap: () =>
          readMainlinePlayLevelCap(context.supabase, {
            ...context.play,
            play_id: playId,
          }),
      })
    : emptyRuleCheckContext;
});

export const getMainlinePlayShellData = cache(
  async (playId: string): Promise<MainlinePlayShellData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const [
      collectiblesAvailable,
      gameContext,
      ruleRows,
      tags,
      ruleChecks,
      tracking,
    ] = await Promise.all([
      readMainlinePlayCollectiblesAvailability(context.supabase, playId),
      readMainlinePlayGameContext(context.supabase, context.play.game_id),
      readMainlinePlayRuleRows(context.supabase, playId),
      readMainlinePlayTagNames(context.supabase, playId),
      getMainlinePlayRuleChecks(playId),
      getMainlinePlayTracking(playId),
    ]);
    /* The team is only read when a rule could be broken. */
    const teamRows = ruleChecks.rules.length
      ? await getMainlinePlayTeamRows(playId)
      : null;

    return buildMainlinePlayShellData({
      collectiblesAvailable,
      gameContext,
      play: context.play,
      ruleChecks,
      ruleRows,
      tags,
      teamRows,
      tracking,
    });
  },
);

/* The statuses and trainer names the Play head's tap-to-edit dialogs offer. */
export const getPlayHeaderEditing = cache(
  async (playId: string): Promise<PlayHeaderEditing | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    return context
      ? readPlayHeaderEditing(context.supabase, {
          currentTrainerName: context.play.trainer_name,
          playId,
          userId: context.userId,
        })
      : null;
  },
);

export const getMainlinePlayOverviewData = cache(
  async (playId: string): Promise<MainlinePlayOverviewData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const [overview, teamPreviewRows, milestoneRows, timelinePreview] =
      await Promise.all([
        readMainlinePlayOverview(context.supabase, context.userId, playId),
        readMainlinePlayOverviewTeamRows(
          context.supabase,
          playId,
          context.play.generation_id,
        ),
        readMainlinePlayOverviewMilestoneRows(context.supabase, playId),
        readMainlinePlayTimelinePreview(context.supabase, playId),
      ]);

    const partnerFormIds = getMainlinePlayOverviewPartnerFormIds({
      milestoneRows,
      overview,
      play: context.play,
    });
    const partnerRows = partnerFormIds.length
      ? await readMainlinePlayOverviewPartnerRows(
          context.supabase,
          partnerFormIds,
          context.play.generation_id,
        )
      : null;
    const data = buildMainlinePlayOverviewData({
      milestoneRows,
      overview,
      partnerRows,
      play: context.play,
      teamPreviewRows,
      timelinePreview,
    });
    const next = data.nextMilestone;

    /* A choice records through Story's form, so Overview reads it as Story does. */
    if (
      !data.freshPlay &&
      next?.milestone_id != null &&
      Array.isArray(next.decision_options) &&
      next.decision_options.length > 0
    ) {
      const story = await readMainlinePlayStoryProgress(
        context.supabase,
        playId,
      );

      return {
        ...data,
        nextDecisionMilestone: findStoryMilestone(
          buildStoryProgressModel(story),
          next.milestone_id,
        ),
      };
    }

    return data;
  },
);

export const getMainlinePlayTeamRosterData = cache(
  async (playId: string): Promise<MainlinePlayTeamRosterData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const [teamRows, ruleChecks] = await Promise.all([
      getMainlinePlayTeamRows(playId),
      getMainlinePlayRuleChecks(playId),
    ]);

    if (!teamRows) {
      return null;
    }

    const mechanics = resolveGameMechanics({
      gameId: context.play.game_id,
      generationId: context.play.generation_id,
      versionGroupId: context.play.version_group_id,
    });
    const battleReference = hasAnyBattleMechanic(mechanics)
      ? await readBattleReference(context.supabase, {
          formIds: uniqueNumberIds(
            teamRows.members.map((member) => member.form_id),
          ),
          generationId: context.play.generation_id,
          mechanics,
          speciesIds: uniqueNumberIds(
            teamRows.members.map((member) => member.species_id),
          ),
          versionGroupId: context.play.version_group_id,
        })
      : undefined;

    return buildMainlinePlayTeamRosterData({
      battleReference,
      play: context.play,
      ruleChecks,
      teamRows,
    });
  },
);

export const getMainlinePlayTeamPlanData = cache(
  async (playId: string): Promise<MainlinePlayTeamPlanData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const [teamRows, teamPlanRows, followablePlans] = await Promise.all([
      readMainlinePlayTeamRows(
        context.supabase,
        playId,
        context.play.generation_id,
        context.play.version_group_id,
      ),
      readMainlinePlayTeamPlanRows(
        context.supabase,
        context.userId,
        playId,
        context.play.generation_id,
      ),
      readMainlinePlayFollowablePlans(context.supabase, {
        userId: context.userId,
        versionGroupId: context.play.version_group_id,
      }),
    ]);

    const otherVersionExclusives = await readMainlinePlayOtherVersionExclusives(
      context.supabase,
      {
        formIds: teamPlanRows.rows.flatMap((row) =>
          row.target_form_id === null ? [] : [row.target_form_id],
        ),
        gameId: context.play.game_id,
        versionGroupId: context.play.version_group_id,
      },
    );

    return buildMainlinePlayTeamPlanData({
      followablePlans,
      otherVersionExclusives,
      play: context.play,
      teamPlanRows,
      teamRows,
    });
  },
);

export const getMainlinePlayTeamAnalysisData = cache(
  async (
    playId: string,
    reading: TeamAnalysisReading = "overall",
  ): Promise<MainlinePlayTeamAnalysisData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const [rows, storyRows] = await Promise.all([
      readMainlinePlayTeamAnalysisRows(
        context.supabase,
        playId,
        context.play.generation_id,
        context.play.version_group_id,
      ),
      reading === "story"
        ? readMainlinePlayStoryMatchupRows(
            context.supabase,
            playId,
            context.play.generation_id,
            { versionGroupId: context.play.version_group_id },
          )
        : null,
    ]);

    return buildMainlinePlayTeamAnalysisData({
      play: context.play,
      rows,
      storyRows,
    });
  },
);

export const getMainlinePlayHistoryData = cache(
  async (playId: string): Promise<MainlinePlayHistoryData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const events = await readMainlinePlayTimeline(context.supabase, playId);
    const momentContext = await readMainlinePlayMomentContext(
      context.supabase,
      { events, generationId: context.play.generation_id, playId },
    );

    return {
      context: momentContext,
      events,
      play: context.play,
    };
  },
);

export const getMainlinePlayProgressStoryData = cache(
  async (playId: string): Promise<MainlinePlayProgressStoryData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    return readMainlinePlayStoryProgress(context.supabase, playId);
  },
);

export const getMainlinePlayProgressPokedexData = cache(
  async (playId: string): Promise<MainlinePlayProgressPokedexData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    if (
      !context.play.game_name ||
      !context.play.version_group_slug ||
      !context.play.generation_id
    ) {
      throw new Error("This Play does not have a complete game context.");
    }

    const tracking = await getMainlinePlayTracking(playId);

    return readMainlinePlayPokedexProgress(context.supabase, {
      gameName: context.play.game_name,
      generationId: context.play.generation_id,
      playId,
      pokedexMode: tracking.pokedexMode,
    });
  },
);

export const getMainlinePlayProgressCollectiblesData = cache(
  async (
    playId: string,
  ): Promise<MainlinePlayProgressCollectiblesData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    if (!context.play.game_name) {
      throw new Error("This Play does not have a complete game context.");
    }

    return readMainlinePlayCollectiblesProgress(context.supabase, {
      gameName: context.play.game_name,
      playId,
    });
  },
);

export const getMainlinePlaySettingsData = cache(
  async (playId: string): Promise<MainlinePlaySettingsData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    return readMainlinePlaySettings(context.supabase, {
      playId,
      userId: context.userId,
    });
  },
);
