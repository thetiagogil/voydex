import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { buildMainlinePlayHubData } from "@/modules/mainline/features/plays/hub/data/play-hub-mappers";
import {
  readMainlinePlayMilestoneRows,
  readMainlinePlayOverview,
  readMainlinePlayTeamRows,
} from "@/modules/mainline/features/plays/hub/tabs/overview/server/play-overview-reader";
import {
  readMainlinePlayGameContext,
  readMainlinePlayRuleRows,
  readMainlinePlaySummary,
} from "@/modules/mainline/features/plays/hub/server/play-hub-context-reader";
import type { MainlinePlayHubData } from "@/modules/mainline/features/plays/hub/types";
import {
  readMainlinePlayTeamTimelinePreview,
  readMainlinePlayTimelinePreview,
} from "@/modules/mainline/features/plays/hub/server/play-timeline-reader";
import { readMainlinePlayTeamPlanRows } from "@/modules/mainline/features/plays/hub/tabs/team/server/team-plan-reader";
import { isUuid } from "@/shared/utils/identifiers";

export const getMainlinePlayHubData = async (
  playId: string,
): Promise<MainlinePlayHubData | null> => {
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

  const [
    gameContext,
    overview,
    ruleRows,
    teamRows,
    milestones,
    teamPlanRows,
    teamTimelinePreview,
    timelinePreview,
  ] = await Promise.all([
    readMainlinePlayGameContext(supabase, play.game_id),
    readMainlinePlayOverview(supabase, userId, playId),
    readMainlinePlayRuleRows(supabase, playId),
    readMainlinePlayTeamRows(
      supabase,
      playId,
      play.generation_id,
      play.version_group_id,
    ),
    readMainlinePlayMilestoneRows(supabase, playId),
    readMainlinePlayTeamPlanRows(supabase, userId, playId),
    readMainlinePlayTeamTimelinePreview(supabase, playId),
    readMainlinePlayTimelinePreview(supabase, playId),
  ]);

  return buildMainlinePlayHubData({
    gameContext,
    milestones,
    overview,
    play,
    ruleRows,
    teamRows,
    teamPlanRows,
    teamTimelinePreview,
    timelinePreview,
  });
};
