import type {
  MainlinePlayMilestone,
  MainlinePlayMilestoneCategorySummary,
} from "@/modules/mainline/features/plays/hub/types";
import {
  numberJourneyMilestones,
  pickNextMilestoneRow,
  type JourneyPosition,
} from "@/modules/mainline/features/plays/shared/data/play-milestones";

export type OverviewMilestone = Pick<
  MainlinePlayMilestone,
  | "badge_refs"
  | "category_id"
  | "category_name"
  | "completed_at"
  | "decision_options"
  | "description"
  | "is_completed"
  | "is_required_for_completion"
  | "milestone_id"
  | "milestone_name"
  | "milestone_type_name"
  | "milestone_type_slug"
  | "prerequisites"
  | "selected_decision_option_id"
  | "snapshot_policy_slug"
  | "sort_order"
  | "version_group_id"
>;

export type OverviewMilestoneCategory = Pick<
  MainlinePlayMilestoneCategorySummary,
  "category_id" | "category_sort_order" | "content_scope_sort_order"
>;

export type MainlinePlayOverviewMilestoneRows = {
  categories: OverviewMilestoneCategory[];
  milestones: OverviewMilestone[];
  types: { id: number; slug: string }[];
};

/* Where a milestone happens, as Story and the next objective say it. */
export const getOverviewMilestoneWhere = (
  milestone: Pick<OverviewMilestone, "category_name" | "description">,
) => milestone.description ?? milestone.category_name ?? null;

/*
 * Story numbers milestones within their journey (the version group), so
 * Overview does too, counting required milestones only: the next objective's
 * place in its journey.
 */
const getOverviewNextPosition = (
  orderedMilestones: OverviewMilestone[],
  nextMilestone: OverviewMilestone | null,
): JourneyPosition | null => {
  if (!nextMilestone) {
    return null;
  }

  const journey = orderedMilestones.filter(
    (milestone) =>
      milestone.version_group_id === nextMilestone.version_group_id,
  );
  const nextIndex = journey.findIndex(
    (milestone) => milestone.milestone_id === nextMilestone.milestone_id,
  );
  const { sequences, total } = numberJourneyMilestones(journey, (milestone) =>
    Boolean(milestone.is_required_for_completion),
  );

  return { sequence: sequences[nextIndex] ?? null, total };
};

/*
 * The next objective, chosen by the rule Story uses, and its place in its
 * journey. Pass the milestones in Story's order.
 */
export const getOverviewMilestoneSummary = (
  orderedMilestones: OverviewMilestone[],
) => {
  const nextMilestone = pickNextMilestoneRow(orderedMilestones);

  return {
    nextMilestone,
    nextMilestonePosition: getOverviewNextPosition(
      orderedMilestones,
      nextMilestone,
    ),
  };
};
