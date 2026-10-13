import {
  compareMilestoneCategories,
  compareMilestonesInCategory,
  isBlockingPrerequisiteKind,
} from "@/modules/mainline/features/plays/hub/data/milestone-order";
import type {
  MainlinePlayMilestone,
  MainlinePlayMilestoneCategorySummary,
} from "@/modules/mainline/features/plays/hub/types";
import type { Json } from "@/shared/types/database.types";

export type OverviewMilestone = Pick<
  MainlinePlayMilestone,
  | "badge_refs"
  | "category_id"
  | "category_name"
  | "completed_at"
  | "description"
  | "is_completed"
  | "is_required_for_completion"
  | "milestone_id"
  | "milestone_name"
  | "milestone_type_slug"
  | "prerequisites"
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

/* The Play's milestones in Story's order. */
export const orderOverviewMilestones = (
  rows: Pick<MainlinePlayOverviewMilestoneRows, "categories" | "milestones">,
) => {
  const categoryById = new Map(
    rows.categories.map((category) => [category.category_id, category]),
  );
  const categoryOf = (milestone: OverviewMilestone) =>
    categoryById.get(milestone.category_id) ?? {
      category_id: milestone.category_id,
      category_sort_order: Number.MAX_SAFE_INTEGER,
      content_scope_sort_order: Number.MAX_SAFE_INTEGER,
    };

  return [...rows.milestones].sort(
    (first, second) =>
      compareMilestoneCategories(categoryOf(first), categoryOf(second)) ||
      compareMilestonesInCategory(first, second),
  );
};

const getBlockingPrerequisiteIds = (prerequisites: Json | null) => {
  if (!Array.isArray(prerequisites)) {
    return [];
  }

  return prerequisites.flatMap((prerequisite) => {
    if (
      !prerequisite ||
      typeof prerequisite !== "object" ||
      Array.isArray(prerequisite) ||
      typeof prerequisite.prerequisite_milestone_id !== "number"
    ) {
      return [];
    }

    const kindSlug =
      typeof prerequisite.prerequisite_kind_slug === "string"
        ? prerequisite.prerequisite_kind_slug
        : "suggested";

    return isBlockingPrerequisiteKind(kindSlug)
      ? [prerequisite.prerequisite_milestone_id]
      : [];
  });
};

/*
 * The next objective and the last recorded milestone, chosen the way Story
 * chooses them: the first required milestone you can record now, else the
 * first required one still open, else anything still open.
 */
export const getOverviewMilestoneSummary = (
  orderedMilestones: OverviewMilestone[],
) => {
  const completedIds = new Set(
    orderedMilestones
      .filter((milestone) => milestone.is_completed)
      .map((milestone) => milestone.milestone_id),
  );
  const isAvailable = (milestone: OverviewMilestone) =>
    getBlockingPrerequisiteIds(milestone.prerequisites).every((id) =>
      completedIds.has(id),
    );
  const openRequired = orderedMilestones.filter(
    (milestone) =>
      milestone.is_required_for_completion && !milestone.is_completed,
  );
  const completed = orderedMilestones.filter(
    (milestone) => milestone.is_completed,
  );
  const lastCompletedMilestone =
    completed
      .filter((milestone) => milestone.completed_at)
      .sort((first, second) =>
        (second.completed_at ?? "").localeCompare(first.completed_at ?? ""),
      )[0] ??
    completed.at(-1) ??
    null;

  return {
    lastCompletedMilestone,
    nextMilestone:
      openRequired.find(isAvailable) ??
      openRequired[0] ??
      orderedMilestones.find((milestone) => !milestone.is_completed) ??
      null,
  };
};
