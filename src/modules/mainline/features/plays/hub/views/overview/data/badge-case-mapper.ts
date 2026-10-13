import type { OverviewMilestone } from "@/modules/mainline/features/plays/hub/views/overview/data/overview-milestones-mapper";
import {
  getMilestoneBadgeTypeId,
  getPlayStampLabel,
  getPlayStampStates,
  type PlayStamp,
} from "@/modules/mainline/features/plays/shared/data/play-stamps";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";

export type MainlinePlayBadgeCaseMilestone = Pick<
  OverviewMilestone,
  | "badge_refs"
  | "completed_at"
  | "is_completed"
  | "milestone_id"
  | "milestone_name"
  | "milestone_type_slug"
  | "version_group_id"
>;

export type MainlinePlayBadgeCaseRows = {
  /* In Story's order (see orderPlayMilestones). */
  milestones: MainlinePlayBadgeCaseMilestone[];
  types: { id: number; slug: string }[];
};

export type BadgeCase = {
  earnedGymCount: number;
  gymCount: number;
  lastEarnedAt: string | null;
  nextName: string | null;
  stamps: PlayStamp[];
};

/* Each gym milestone's badge type, so its marker and moment wear the badge. */
export const getBadgeTypeByMilestoneId = (
  rows: MainlinePlayBadgeCaseRows,
): Map<number, PokemonTypeSlug> => {
  const typeSlugById = new Map(rows.types.map((type) => [type.id, type.slug]));

  return new Map(
    rows.milestones.flatMap((milestone): [number, PokemonTypeSlug][] => {
      const typeSlug = typeSlugById.get(
        getMilestoneBadgeTypeId(milestone.badge_refs) ?? -1,
      );

      return milestone.milestone_type_slug === "gym" &&
        milestone.milestone_id !== null &&
        typeSlug &&
        isPokemonTypeSlug(typeSlug)
        ? [[milestone.milestone_id, typeSlug]]
        : [];
    }),
  );
};

/*
 * The badge case: every gym badge and the main game's Champion milestone (the
 * League's gold stamp), in Story's order. A DLC's own champion never
 * takes that place. A Play whose game has no gyms has no badge case.
 */
export const buildMainlinePlayBadgeCase = (
  rows: MainlinePlayBadgeCaseRows,
): BadgeCase | null => {
  const gyms = rows.milestones.filter(
    (milestone) => milestone.milestone_type_slug === "gym",
  );

  if (!gyms.length) {
    return null;
  }

  const badgeTypeByMilestoneId = getBadgeTypeByMilestoneId(rows);
  const league = rows.milestones.find(
    (milestone) =>
      milestone.milestone_type_slug === "champion" &&
      milestone.version_group_id === gyms[0].version_group_id,
  );
  /* In journey order: Gold's Champion comes after Johto's gyms, before Kanto's. */
  const ordered = rows.milestones.filter(
    (milestone) =>
      milestone.milestone_id !== null &&
      (milestone.milestone_type_slug === "gym" || milestone === league),
  );
  const states = getPlayStampStates(ordered, (milestone) =>
    Boolean(milestone.is_completed),
  );
  const stamps = ordered.map((milestone, index): PlayStamp => {
    const kind = milestone.milestone_type_slug === "gym" ? "gym" : "league";
    const name = milestone.milestone_name ?? "Unnamed milestone";
    const milestoneId = milestone.milestone_id ?? 0;

    return {
      badgeType: badgeTypeByMilestoneId.get(milestoneId) ?? null,
      completedAt: milestone.completed_at,
      kind,
      label: getPlayStampLabel(kind, name),
      milestoneId,
      milestoneTypeSlug: milestone.milestone_type_slug,
      name,
      state: states[index],
    };
  });
  const earnedGyms = stamps.filter(
    (stamp) => stamp.kind === "gym" && stamp.state === "earned",
  );
  const lastEarnedAt =
    earnedGyms
      .map((stamp) => stamp.completedAt)
      .filter((value): value is string => Boolean(value))
      .sort()
      .at(-1) ?? null;

  return {
    earnedGymCount: earnedGyms.length,
    gymCount: gyms.length,
    lastEarnedAt,
    nextName: stamps.find((stamp) => stamp.state === "next")?.name ?? null,
    stamps,
  };
};
