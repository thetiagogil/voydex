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
import { readMainlinePlayTeamRows } from "@/modules/mainline/features/plays/hub/server/play-team-reader";
import {
  readMainlinePlayGameContext,
  readMainlinePlayRuleRows,
  readMainlinePlaySummary,
  readMainlinePlayTagNames,
} from "@/modules/mainline/features/plays/hub/server/play-hub-context-reader";
import type {
  MainlinePlayOverviewData,
  MainlinePlayShellData,
  MainlinePlayTeamRosterData,
  MainlinePlayHistoryData,
  MainlinePlayTeamPlanData,
} from "@/modules/mainline/features/plays/hub/types";
import { readMainlinePlayMomentContext } from "@/modules/mainline/features/plays/shared/server/play-moment-context-reader";
import {
  readMainlinePlayTimeline,
  readMainlinePlayTimelinePreview,
} from "@/modules/mainline/features/plays/shared/server/play-timeline-reader";
import {
  readMainlinePlayFollowablePlans,
  readMainlinePlayTeamPlanRows,
} from "@/modules/mainline/features/plays/hub/views/team/server/team-plan-reader";
import { readPlayRuleCheckContext } from "@/modules/mainline/features/plays/hub/views/team/server/rule-check-reader";
import { buildMainlinePlayTeamAnalysisData } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/data/team-analysis-mapper";
import { readMainlinePlayStoryMatchupRows } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/server/story-matchups-reader";
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
import {
  readMainlinePlayCollectiblesAvailability,
  readMainlinePlayCollectiblesProgress,
} from "@/modules/mainline/features/plays/hub/views/progress/progress-collectibles/server/collectibles-progress-reader";
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

export const getMainlinePlayShellData = cache(
  async (playId: string): Promise<MainlinePlayShellData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const [collectiblesAvailable, gameContext, ruleRows, tags] =
      await Promise.all([
        readMainlinePlayCollectiblesAvailability(context.supabase, playId),
        readMainlinePlayGameContext(context.supabase, context.play.game_id),
        readMainlinePlayRuleRows(context.supabase, playId),
        readMainlinePlayTagNames(context.supabase, playId),
      ]);

    return buildMainlinePlayShellData({
      collectiblesAvailable,
      gameContext,
      play: context.play,
      ruleRows,
      tags,
    });
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
      readMainlinePlayTeamRows(
        context.supabase,
        playId,
        context.play.generation_id,
        context.play.version_group_id,
      ),
      readPlayRuleCheckContext(context.supabase, context.play, context.userId),
    ]);

    return buildMainlinePlayTeamRosterData({
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
        gameId: context.play.game_id,
        userId: context.userId,
        versionGroupId: context.play.version_group_id,
      }),
    ]);

    return buildMainlinePlayTeamPlanData({
      followablePlans,
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
        ? readMainlinePlayStoryMatchupRows(context.supabase, playId)
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

    return readMainlinePlayPokedexProgress(context.supabase, {
      gameName: context.play.game_name,
      generationId: context.play.generation_id,
      playId,
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
