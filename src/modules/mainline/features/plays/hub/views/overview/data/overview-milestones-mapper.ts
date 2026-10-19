import type {
  MainlinePlayMilestone,
  MainlinePlayMilestoneCategorySummary,
} from "@/modules/mainline/features/plays/hub/types";
import {
  numberJourneyMilestones,
  pickNextMilestoneRow,
  type PlayMilestoneState,
} from "@/modules/mainline/features/plays/shared/data/play-milestones";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

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

export type OverviewAheadMilestone = {
  /* A gym milestone's badge type, so a recorded one wears its badge. */
  badgeType: PokemonTypeSlug | null;
  milestone: OverviewMilestone;
  /* Its number in the journey; null for an optional one, as in Story. */
  sequence: number | null;
  state: PlayMilestoneState;
};

/* The next milestone and the one after: the badge case stays as tall as Recent moments beside it. */
const aheadLimit = 2;

/* Where a milestone happens, as Story and the next objective say it. */
export const getOverviewMilestoneWhere = (
  milestone: Pick<OverviewMilestone, "category_name" | "description">,
) => milestone.description ?? milestone.category_name ?? null;

/*
 * Story numbers milestones within their journey (the version group), so
 * Overview does too, counting required milestones only: the next objective's
 * place in its journey and the milestones that follow it there, recorded or
 * not, as v3's list ahead.
 */
const getOverviewJourneyAhead = (
  orderedMilestones: OverviewMilestone[],
  nextMilestone: OverviewMilestone | null,
  badgeTypeByMilestoneId: ReadonlyMap<number, PokemonTypeSlug>,
) => {
  if (!nextMilestone) {
    return { aheadMilestones: [], nextMilestonePosition: null };
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
  const aheadMilestones: OverviewAheadMilestone[] = journey
    .slice(nextIndex, nextIndex + aheadLimit)
    .map((milestone, index) => ({
      badgeType:
        milestone.milestone_id === null
          ? null
          : (badgeTypeByMilestoneId.get(milestone.milestone_id) ?? null),
      milestone,
      sequence: sequences[nextIndex + index] ?? null,
      state: milestone.is_completed ? "done" : index === 0 ? "next" : "todo",
    }));

  return {
    aheadMilestones,
    nextMilestonePosition: {
      sequence: sequences[nextIndex] ?? null,
      total,
    },
  };
};

/*
 * The next objective, chosen by the rule Story uses, and the journey ahead.
 * Pass the milestones in Story's order.
 */
export const getOverviewMilestoneSummary = (
  orderedMilestones: OverviewMilestone[],
  badgeTypeByMilestoneId: ReadonlyMap<number, PokemonTypeSlug> = new Map(),
) => {
  const nextMilestone = pickNextMilestoneRow(orderedMilestones);

  return {
    nextMilestone,
    ...getOverviewJourneyAhead(
      orderedMilestones,
      nextMilestone,
      badgeTypeByMilestoneId,
    ),
  };
};
