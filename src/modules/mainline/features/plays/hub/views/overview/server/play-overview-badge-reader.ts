import type { MainlinePlayBadgeCaseRows } from "@/modules/mainline/features/plays/hub/views/overview/data/badge-case-mapper";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

import { getBadgeTypeIds } from "@/modules/mainline/features/plays/hub/views/overview/data/badge-case-mapper";

/* The Play's gym milestones and its Champion milestone, for the badge case. */
export const readMainlinePlayBadgeCaseRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayBadgeCaseRows> => {
  const milestonesResult = await supabase
    .schema("views")
    .from("mainline_play_milestone_detail")
    .select(
      "milestone_id, milestone_name, milestone_type_slug, is_completed, completed_at, sort_order, badge_refs",
    )
    .eq("play_id", playId)
    .in("milestone_type_slug", ["gym", "champion"])
    .order("sort_order", { ascending: true });

  if (milestonesResult.error) {
    throw new Error("Unable to load the Mainline Play badge case.");
  }

  const milestones = milestonesResult.data ?? [];
  const typeIds = uniqueNumberIds(getBadgeTypeIds(milestones));
  const typesResult = typeIds.length
    ? await supabase
        .schema("reference")
        .from("types")
        .select("id, slug")
        .in("id", typeIds)
    : null;

  if (typesResult?.error) {
    throw new Error("Unable to load the Mainline Play badge types.");
  }

  return { milestones, types: typesResult?.data ?? [] };
};
