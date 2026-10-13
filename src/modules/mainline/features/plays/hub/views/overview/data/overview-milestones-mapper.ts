import type {
  MainlinePlayMilestone,
  MainlinePlayMilestoneCategorySummary,
} from "@/modules/mainline/features/plays/hub/types";
import {
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
  sequence: number;
  state: PlayMilestoneState;
};

const aheadLimit = 4;

/* Where a milestone happens, as Story and the next objective say it. */
export const getOverviewMilestoneWhere = (
  milestone: Pick<OverviewMilestone, "category_name" | "description">,
) => milestone.description ?? milestone.category_name ?? null;

/*
 * Story numbers milestones within their journey (the version group), so
 * Overview does too: the next objective's place in its journey and the
 * milestones that follow it there, recorded or not, as v3's list ahead.
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
  const aheadMilestones: OverviewAheadMilestone[] = journey
    .slice(nextIndex, nextIndex + aheadLimit)
    .map((milestone, index) => ({
      badgeType:
        milestone.milestone_id === null
          ? null
          : (badgeTypeByMilestoneId.get(milestone.milestone_id) ?? null),
      milestone,
      sequence: nextIndex + index + 1,
      state: milestone.is_completed ? "done" : index === 0 ? "next" : "todo",
    }));

  return {
    aheadMilestones,
    nextMilestonePosition: { sequence: nextIndex + 1, total: journey.length },
  };
};

/*
 * The next objective, chosen by the rule Story uses, and the last milestone
 * recorded: the newest by date, else the last recorded in Story's order.
 * Pass the milestones in Story's order.
 */
export const getOverviewMilestoneSummary = (
  orderedMilestones: OverviewMilestone[],
  badgeTypeByMilestoneId: ReadonlyMap<number, PokemonTypeSlug> = new Map(),
) => {
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
  const nextMilestone = pickNextMilestoneRow(orderedMilestones);

  return {
    lastCompletedMilestone,
    nextMilestone,
    ...getOverviewJourneyAhead(
      orderedMilestones,
      nextMilestone,
      badgeTypeByMilestoneId,
    ),
  };
};
