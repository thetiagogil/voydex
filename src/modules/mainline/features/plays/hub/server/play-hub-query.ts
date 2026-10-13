import { cache } from "react";

import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  buildMainlinePlayOverviewData,
  buildMainlinePlayShellData,
  buildMainlinePlayTeamRosterData,
  buildMainlinePlayTeamPlanData,
} from "@/modules/mainline/features/plays/hub/data/play-hub-mappers";
import {
  readMainlinePlayOverviewMilestoneRows,
  readMainlinePlayOverview,
} from "@/modules/mainline/features/plays/hub/views/overview/server/play-overview-reader";
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
  MainlinePlayTeamHistoryData,
  MainlinePlayTeamPlanData,
} from "@/modules/mainline/features/plays/hub/types";
import {
  readMainlinePlayMilestoneTeamSnapshot,
  readMainlinePlayTeamTimeline,
  readMainlinePlayTimelinePreview,
} from "@/modules/mainline/features/plays/hub/server/play-timeline-reader";
import { readMainlinePlayTeamPlanRows } from "@/modules/mainline/features/plays/hub/views/team/server/team-plan-reader";
import { buildMainlinePlayTeamAnalysisData } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/data/team-analysis-mapper";
import { readMainlinePlayTeamAnalysisRows } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/server/team-analysis-reader";
import type { MainlinePlayTeamAnalysisData } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { readMainlinePlayStoryProgress } from "@/modules/mainline/features/plays/hub/views/progress/progress-story/server/story-progress-reader";
import type { MainlinePlayProgressStoryData } from "@/modules/mainline/features/plays/hub/views/progress/progress-story/types";
import { readMainlinePlayPokedexProgress } from "@/modules/mainline/features/plays/hub/views/progress/progress-pokedex/server/pokedex-progress-reader";
import type { MainlinePlayProgressPokedexData } from "@/modules/mainline/features/plays/hub/views/progress/progress-pokedex/types";
import {
  readMainlinePlayCollectiblesAvailability,
  readMainlinePlayCollectiblesProgress,
} from "@/modules/mainline/features/plays/hub/views/progress/progress-collectibles/server/collectibles-progress-reader";
import type { MainlinePlayProgressCollectiblesData } from "@/modules/mainline/features/plays/hub/views/progress/progress-collectibles/types";
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

    const data = buildMainlinePlayOverviewData({
      lastRecordedTeam: [],
      milestoneRows,
      overview,
      play: context.play,
      teamPreviewRows,
      timelinePreview,
    });
    const lastRecordedId = data.lastCompletedMilestone?.milestone_id ?? null;

    /* "Your team then" needs the last milestone, so it is read after. */
    return lastRecordedId === null
      ? data
      : {
          ...data,
          lastRecordedTeam: await readMainlinePlayMilestoneTeamSnapshot(
            context.supabase,
            playId,
            lastRecordedId,
          ),
        };
  },
);

export const getMainlinePlayTeamRosterData = cache(
  async (playId: string): Promise<MainlinePlayTeamRosterData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const teamRows = await readMainlinePlayTeamRows(
      context.supabase,
      playId,
      context.play.generation_id,
      context.play.version_group_id,
    );

    return buildMainlinePlayTeamRosterData({
      play: context.play,
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

    const [teamRows, teamPlanRows] = await Promise.all([
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
    ]);

    return buildMainlinePlayTeamPlanData({
      play: context.play,
      teamPlanRows,
      teamRows,
    });
  },
);

export const getMainlinePlayTeamAnalysisData = cache(
  async (playId: string): Promise<MainlinePlayTeamAnalysisData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const rows = await readMainlinePlayTeamAnalysisRows(
      context.supabase,
      playId,
      context.play.generation_id,
      context.play.version_group_id,
    );

    return buildMainlinePlayTeamAnalysisData({
      play: context.play,
      rows,
    });
  },
);

export const getMainlinePlayTeamHistoryData = cache(
  async (playId: string): Promise<MainlinePlayTeamHistoryData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const events = await readMainlinePlayTeamTimeline(context.supabase, playId);

    return {
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
      versionGroupSlug: context.play.version_group_slug,
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
