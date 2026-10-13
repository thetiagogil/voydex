/*
 * The one order for a Play's milestones, shared by Story and Overview so the
 * two never disagree: content scope (base game before DLC), then category,
 * then the milestone's own order within its category.
 */

type MilestoneCategoryOrder = {
  category_id: number | null;
  category_sort_order: number | null;
  content_scope_sort_order: number | null;
};

type MilestoneOrder = {
  milestone_id: number | null;
  sort_order: number | null;
};

const orderValue = (value: number | null | undefined) =>
  typeof value === "number" && Number.isFinite(value) ? value : 0;

export const compareMilestoneCategories = (
  first: MilestoneCategoryOrder,
  second: MilestoneCategoryOrder,
) =>
  orderValue(first.content_scope_sort_order) -
    orderValue(second.content_scope_sort_order) ||
  orderValue(first.category_sort_order) -
    orderValue(second.category_sort_order) ||
  orderValue(first.category_id) - orderValue(second.category_id);

export const compareMilestonesInCategory = (
  first: MilestoneOrder,
  second: MilestoneOrder,
) =>
  orderValue(first.sort_order) - orderValue(second.sort_order) ||
  orderValue(first.milestone_id) - orderValue(second.milestone_id);

/* Only these prerequisite kinds block recording; `suggested` never does. */
export const isBlockingPrerequisiteKind = (kindSlug: string) =>
  kindSlug === "required" || kindSlug === "story-unlock";
