import type { Json } from "@/shared/types/database.types";

/*
 * The one order and next-objective rule for a Play's milestones, shared by
 * Story, Overview and the Plays list so they never disagree: content scope
 * (base game before DLC), then category, then the milestone's own order
 * within its category.
 */

/* Where a milestone stands in a list: recorded, the next objective, or ahead. */
export type PlayMilestoneState = "done" | "next" | "todo";

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

/* The ids of the milestones that must be recorded before this one can be. */
export const getBlockingPrerequisiteIds = (prerequisites: Json | null) => {
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

type CategoryRow = MilestoneCategoryOrder;

type MilestoneRow = MilestoneOrder & { category_id: number | null };

/* A Play's milestones in Story's order: scope, then category, then their own. */
export const orderPlayMilestones = <TMilestone extends MilestoneRow>({
  categories,
  milestones,
}: {
  categories: readonly CategoryRow[];
  milestones: readonly TMilestone[];
}) => {
  const categoryById = new Map(
    categories.map((category) => [category.category_id, category]),
  );
  const categoryOf = (milestone: TMilestone): CategoryRow =>
    categoryById.get(milestone.category_id) ?? {
      category_id: milestone.category_id,
      category_sort_order: Number.MAX_SAFE_INTEGER,
      content_scope_sort_order: Number.MAX_SAFE_INTEGER,
    };

  return [...milestones].sort(
    (first, second) =>
      compareMilestoneCategories(categoryOf(first), categoryOf(second)) ||
      compareMilestonesInCategory(first, second),
  );
};

type NextMilestoneState = {
  isAvailable: boolean;
  isCompleted: boolean;
  isRequired: boolean;
};

/*
 * What to record next, the one rule Story, Overview and Plays share: the
 * first required milestone you can record now, else the first required one
 * still open, else anything still open. Pass the milestones in Story's order.
 */
export const pickNextMilestone = <TMilestone>(
  milestones: readonly TMilestone[],
  getState: (milestone: TMilestone) => NextMilestoneState,
): TMilestone | null => {
  const openRequired = milestones.filter((milestone) => {
    const state = getState(milestone);

    return state.isRequired && !state.isCompleted;
  });

  return (
    openRequired.find((milestone) => getState(milestone).isAvailable) ??
    openRequired[0] ??
    milestones.find((milestone) => !getState(milestone).isCompleted) ??
    null
  );
};

/* Raw milestone rows, read as `pickNextMilestone` needs them. */
export const pickNextMilestoneRow = <
  TMilestone extends {
    is_completed: boolean | null;
    is_required_for_completion: boolean | null;
    milestone_id: number | null;
    prerequisites: Json | null;
  },
>(
  orderedMilestones: readonly TMilestone[],
) => {
  const completedIds = new Set(
    orderedMilestones
      .filter((milestone) => milestone.is_completed)
      .map((milestone) => milestone.milestone_id),
  );

  return pickNextMilestone(orderedMilestones, (milestone) => ({
    isAvailable: getBlockingPrerequisiteIds(milestone.prerequisites).every(
      (id) => completedIds.has(id),
    ),
    isCompleted: Boolean(milestone.is_completed),
    isRequired: Boolean(milestone.is_required_for_completion),
  }));
};

/*
 * The one milestone count Story, Overview and the toasts share: only the
 * milestones a journey needs are numbered, 1 to its total in Story's order.
 * An optional one has no number (it reads "Optional"), so "Milestone 3 of 16"
 * always agrees with "3 of 16 recorded". Pass one journey in Story's order.
 */
export const numberJourneyMilestones = <TMilestone>(
  orderedMilestones: readonly TMilestone[],
  isRequired: (milestone: TMilestone) => boolean,
) => {
  let total = 0;
  const sequences = orderedMilestones.map((milestone) =>
    isRequired(milestone) ? ++total : null,
  );

  return { sequences, total };
};

/* A milestone's place in its journey, numbered by `numberJourneyMilestones`. */
export type JourneyPosition = { sequence: number | null; total: number };

export const formatJourneyPosition = ({ sequence, total }: JourneyPosition) =>
  sequence === null
    ? "Optional milestone"
    : `Milestone ${sequence} of ${total}`;

/* "the one before it", "the 3 after it": milestones recorded or cleared together. */
export const formatMilestoneRange = (
  count: number,
  direction: "after" | "before",
) => `the ${count === 1 ? "one" : count} ${direction} it`;
