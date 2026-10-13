import { readMainlinePlayMilestoneTimelineSnapshots } from "@/modules/mainline/features/plays/shared/server/play-timeline-reader";
import {
  parsePlayTeamSnapshot,
  type PlayTeamSnapshotMember,
} from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
import { orderPlayMilestones } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import type {
  StoryMatchupMilestone,
  StoryMatchupsRows,
} from "../data/story-matchups-model";

const readOpponentIds = (milestones: StoryMatchupMilestone[]) => [
  ...new Set(
    milestones.flatMap((milestone) =>
      Array.isArray(milestone.opponent_refs)
        ? milestone.opponent_refs.flatMap((ref) =>
            ref &&
            typeof ref === "object" &&
            !Array.isArray(ref) &&
            typeof ref.opponent_id === "number"
              ? [ref.opponent_id]
              : [],
          )
        : [],
    ),
  ),
];

/*
 * What Story matchups reads: the Play's milestones in Story's order with
 * their opponents, which game each opponent belongs to (version-only
 * leaders), and the team saved with each battle when it was recorded.
 */
export const readMainlinePlayStoryMatchupRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<StoryMatchupsRows> => {
  const [categoriesResult, milestonesResult, snapshotEvents] =
    await Promise.all([
      supabase
        .schema("views")
        .from("mainline_play_milestone_category_summary")
        .select("category_id, category_sort_order, content_scope_sort_order")
        .eq("play_id", playId),
      supabase
        .schema("views")
        .from("mainline_play_milestone_detail")
        .select(
          "badge_refs, category_id, category_name, completed_at, description, is_completed, milestone_id, milestone_name, opponent_refs, sort_order",
        )
        .eq("play_id", playId),
      readMainlinePlayMilestoneTimelineSnapshots(supabase, playId),
    ]);

  if (categoriesResult.error || milestonesResult.error) {
    throw new Error("Unable to load the Play's Story battles.");
  }

  const milestones = milestonesResult.data ?? [];
  const opponentIds = readOpponentIds(milestones);
  const opponentsResult = opponentIds.length
    ? await supabase
        .schema("tracking")
        .from("mainline_opponents")
        .select("id, game_id")
        .in("id", opponentIds)
    : null;

  if (opponentsResult?.error) {
    throw new Error("Unable to load the Play's Story opponents.");
  }

  const snapshotsByMilestoneId = new Map<number, PlayTeamSnapshotMember[]>();

  for (const event of snapshotEvents) {
    if (
      event.milestone_id !== null &&
      !snapshotsByMilestoneId.has(event.milestone_id)
    ) {
      snapshotsByMilestoneId.set(
        event.milestone_id,
        parsePlayTeamSnapshot(event.team_snapshots),
      );
    }
  }

  return {
    opponentGameIdById: new Map(
      (opponentsResult?.data ?? []).map((opponent) => [
        opponent.id,
        opponent.game_id,
      ]),
    ),
    orderedMilestones: orderPlayMilestones({
      categories: categoriesResult.data ?? [],
      milestones,
    }),
    snapshotsByMilestoneId,
  };
};
