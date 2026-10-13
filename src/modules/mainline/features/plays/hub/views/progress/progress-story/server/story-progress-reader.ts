import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { readMainlinePlayMilestoneTimelineSnapshots } from "@/modules/mainline/features/plays/hub/server/play-timeline-reader";
import { uniqueNumberIds } from "@/shared/utils/collections";

import { getMilestoneBadgeTypeId } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import type { MainlinePlayProgressStoryData } from "../types";

const getDecisionPokemonFormIds = (
  milestones: MainlinePlayProgressStoryData["milestones"],
) => {
  const formIds = milestones.flatMap((milestone) => {
    if (!Array.isArray(milestone.decision_options)) {
      return [];
    }

    return milestone.decision_options.flatMap((option) => {
      if (
        !option ||
        typeof option !== "object" ||
        Array.isArray(option) ||
        typeof option.pokemon_form_id !== "number"
      ) {
        return [];
      }

      return [option.pokemon_form_id];
    });
  });

  return [...new Set(formIds)];
};

/*
 * Story's read: the Play's categories and milestones, the team snapshots
 * recorded with them, the decision Pokémon's art and the badge types, so a
 * gym badge wears its type on the stamp card and in its row.
 */
export const readMainlinePlayStoryProgress = async (
  supabase: ServerSupabaseClient,
  playId: string,
): Promise<MainlinePlayProgressStoryData> => {
  const [categoriesResult, milestonesResult, snapshotEvents] =
    await Promise.all([
      supabase
        .schema("views")
        .from("mainline_play_milestone_category_summary")
        .select(
          "category_id, category_name, category_slug, category_sort_order, completed_required_milestone_count, content_scope_sort_order, milestone_count, required_milestone_count, version_group_id, version_group_name",
        )
        .eq("play_id", playId)
        .order("content_scope_sort_order", { ascending: true })
        .order("category_sort_order", { ascending: true }),
      supabase
        .schema("views")
        .from("mainline_play_milestone_detail")
        .select(
          "badge_refs, category_id, category_name, category_slug, completed_at, completion_event_id, completion_event_team_snapshot_count, decision_options, description, is_completed, is_required_for_completion, milestone_id, milestone_name, milestone_type_name, milestone_type_slug, prerequisites, progress_notes, selected_decision_option_id, selected_decision_option_label, snapshot_policy_slug, sort_order, version_group_id",
        )
        .eq("play_id", playId)
        .order("category_sort_order", { ascending: true })
        .order("sort_order", { ascending: true }),
      readMainlinePlayMilestoneTimelineSnapshots(supabase, playId),
    ]);

  if (categoriesResult.error || milestonesResult.error) {
    throw new Error("Unable to load Mainline Story progress.");
  }

  const milestones = milestonesResult.data ?? [];
  const decisionFormIds = getDecisionPokemonFormIds(milestones);
  const badgeTypeIds = uniqueNumberIds(
    milestones.map((milestone) =>
      getMilestoneBadgeTypeId(milestone.badge_refs),
    ),
  );
  const [decisionFormsResult, badgeTypesResult] = await Promise.all([
    decisionFormIds.length
      ? supabase
          .schema("reference")
          .from("pokemon_forms")
          .select("id, sprite_slug")
          .in("id", decisionFormIds)
      : { data: [], error: null },
    badgeTypeIds.length
      ? supabase
          .schema("reference")
          .from("types")
          .select("id, slug")
          .in("id", badgeTypeIds)
      : { data: [], error: null },
  ]);

  if (decisionFormsResult.error) {
    throw new Error("Unable to load Mainline Story decision images.");
  }

  if (badgeTypesResult.error) {
    throw new Error("Unable to load Mainline Story badge types.");
  }

  return {
    badgeTypes: badgeTypesResult.data ?? [],
    categories: categoriesResult.data ?? [],
    decisionForms: decisionFormsResult.data ?? [],
    milestones,
    snapshotEvents,
  };
};
