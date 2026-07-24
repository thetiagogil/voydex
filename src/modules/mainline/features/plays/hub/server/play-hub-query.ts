import { cache } from "react";

import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  buildMainlinePlayOverviewData,
  buildMainlinePlayShellData,
  buildMainlinePlayTeamOverviewData,
  buildMainlinePlayTeamPlanData,
} from "@/modules/mainline/features/plays/hub/data/play-hub-mappers";
import {
  readMainlinePlayMilestoneRows,
  readMainlinePlayOverview,
} from "@/modules/mainline/features/plays/hub/views/overview/server/play-overview-reader";
import { readMainlinePlayTeamRows } from "@/modules/mainline/features/plays/hub/server/play-team-reader";
import {
  readMainlinePlayGameContext,
  readMainlinePlayRuleRows,
  readMainlinePlaySummary,
} from "@/modules/mainline/features/plays/hub/server/play-hub-context-reader";
import type {
  MainlinePlayOverviewData,
  MainlinePlayShellData,
  MainlinePlayTeamOverviewData,
  MainlinePlayTeamPlanData,
} from "@/modules/mainline/features/plays/hub/types";
import {
  readMainlinePlayTeamTimelinePreview,
  readMainlinePlayTimelinePreview,
} from "@/modules/mainline/features/plays/hub/server/play-timeline-reader";
import { readMainlinePlayTeamPlanRows } from "@/modules/mainline/features/plays/hub/views/team/server/team-plan-reader";
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

type MainlinePlayRequestContext = NonNullable<
  Awaited<ReturnType<typeof getMainlinePlayRequestContext>>
>;

const readMainlinePlayTeamWorkspaceRows = async (
  context: MainlinePlayRequestContext,
  playId: string,
) => {
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

  return { teamPlanRows, teamRows };
};

export const getMainlinePlayShellData = cache(
  async (playId: string): Promise<MainlinePlayShellData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const [gameContext, ruleRows] = await Promise.all([
      readMainlinePlayGameContext(context.supabase, context.play.game_id),
      readMainlinePlayRuleRows(context.supabase, playId),
    ]);

    return buildMainlinePlayShellData({
      gameContext,
      play: context.play,
      ruleRows,
    });
  },
);

export const getMainlinePlayOverviewData = cache(
  async (playId: string): Promise<MainlinePlayOverviewData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const [overview, teamRows, milestones, timelinePreview] = await Promise.all(
      [
        readMainlinePlayOverview(context.supabase, context.userId, playId),
        readMainlinePlayTeamRows(
          context.supabase,
          playId,
          context.play.generation_id,
          context.play.version_group_id,
        ),
        readMainlinePlayMilestoneRows(context.supabase, playId),
        readMainlinePlayTimelinePreview(context.supabase, playId),
      ],
    );

    return buildMainlinePlayOverviewData({
      milestones,
      overview,
      play: context.play,
      teamRows,
      timelinePreview,
    });
  },
);

export const getMainlinePlayTeamOverviewData = cache(
  async (playId: string): Promise<MainlinePlayTeamOverviewData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const [{ teamPlanRows, teamRows }, teamTimelinePreview] = await Promise.all(
      [
        readMainlinePlayTeamWorkspaceRows(context, playId),
        readMainlinePlayTeamTimelinePreview(context.supabase, playId),
      ],
    );

    return buildMainlinePlayTeamOverviewData({
      play: context.play,
      teamRows,
      teamPlanRows,
      teamTimelinePreview,
    });
  },
);

export const getMainlinePlayTeamPlanData = cache(
  async (playId: string): Promise<MainlinePlayTeamPlanData | null> => {
    const context = await getMainlinePlayRequestContext(playId);

    if (!context) {
      return null;
    }

    const { teamPlanRows, teamRows } = await readMainlinePlayTeamWorkspaceRows(
      context,
      playId,
    );

    return buildMainlinePlayTeamPlanData({
      play: context.play,
      teamPlanRows,
      teamRows,
    });
  },
);
