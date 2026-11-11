import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";
import type { MainlinePlayOverviewMilestoneRows } from "@/modules/mainline/features/plays/hub/views/overview/data/overview-milestones-mapper";
import { getMilestoneBadgeTypeId } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

export const readMainlinePlayOverview = async (
  supabase: ServerSupabaseClient,
  userId: string,
  playId: string,
): Promise<MainlinePlayOverview | null> => {
  const overviewResult = await supabase
    .schema("views")
    .from("mainline_play_overview")
    .select("*")
    .eq("user_id", userId)
    .eq("play_id", playId)
    .maybeSingle();

  if (overviewResult.error) {
    throw new Error("Unable to load Mainline play overview.");
  }

  return overviewResult.data ?? null;
};

/*
 * Every milestone of the Play with its category order and the badge types, so
 * Overview can pick its next objective and build the badge case in Story's
 * order.
 */
export const readMainlinePlayOverviewMilestoneRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayOverviewMilestoneRows> => {
  const [categoriesResult, milestonesResult] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_play_milestone_category_summary")
      .select("category_id, category_sort_order, content_scope_sort_order")
      .eq("play_id", playId),
    supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select(
        "badge_refs, category_id, category_name, completed_at, decision_options, description, is_completed, is_required_for_completion, milestone_id, milestone_name, milestone_type_name, milestone_type_slug, prerequisites, selected_decision_option_id, snapshot_policy_slug, sort_order, version_group_id",
      )
      .eq("play_id", playId),
  ]);

  if (categoriesResult.error || milestonesResult.error) {
    throw new Error("Unable to load Mainline play milestone overview.");
  }

  const milestones = milestonesResult.data ?? [];
  const typeIds = uniqueNumberIds(
    milestones.map((milestone) =>
      getMilestoneBadgeTypeId(milestone.badge_refs),
    ),
  );
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

  return {
    categories: categoriesResult.data ?? [],
    milestones,
    types: typesResult?.data ?? [],
  };
};
