import type { OverviewMilestone } from "@/modules/mainline/features/plays/hub/views/overview/data/overview-milestones-mapper";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Json } from "@/shared/types/database.types";

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
  /* In Story's order (see orderOverviewMilestones). */
  milestones: MainlinePlayBadgeCaseMilestone[];
  types: { id: number; slug: string }[];
};

export type BadgeCaseStamp = {
  completedAt: string | null;
  kind: "gym" | "league";
  milestoneId: number;
  name: string;
  state: "earned" | "next" | "todo";
  type: PokemonTypeSlug | null;
};

export type BadgeCase = {
  earnedGymCount: number;
  gymCount: number;
  lastEarnedAt: string | null;
  nextName: string | null;
  stamps: BadgeCaseStamp[];
};

const getFirstBadgeTypeId = (badgeRefs: Json | null): number | null => {
  if (!Array.isArray(badgeRefs)) {
    return null;
  }

  for (const ref of badgeRefs) {
    if (
      ref &&
      typeof ref === "object" &&
      !Array.isArray(ref) &&
      typeof ref.type_id === "number"
    ) {
      return ref.type_id;
    }
  }

  return null;
};

export const getBadgeTypeIds = (
  milestones: Pick<MainlinePlayBadgeCaseMilestone, "badge_refs">[],
) => milestones.map((milestone) => getFirstBadgeTypeId(milestone.badge_refs));

/*
 * The badge case: every gym badge in Story's order, then the main game's
 * Champion milestone as the League's gold stamp. A DLC's own champion never
 * takes that place. A Play whose game has no gyms has no badge case.
 */
export const buildMainlinePlayBadgeCase = (
  rows: MainlinePlayBadgeCaseRows,
): BadgeCase | null => {
  const typeSlugById = new Map(rows.types.map((type) => [type.id, type.slug]));
  const gyms = rows.milestones.filter(
    (milestone) => milestone.milestone_type_slug === "gym",
  );

  if (!gyms.length) {
    return null;
  }

  const league = rows.milestones.find(
    (milestone) =>
      milestone.milestone_type_slug === "champion" &&
      milestone.version_group_id === gyms[0].version_group_id,
  );
  const ordered = league ? [...gyms, league] : gyms;
  const nextMilestone = ordered.find((milestone) => !milestone.is_completed);
  const stamps = ordered.flatMap((milestone): BadgeCaseStamp[] => {
    if (milestone.milestone_id === null) {
      return [];
    }

    const typeSlug = typeSlugById.get(
      getFirstBadgeTypeId(milestone.badge_refs) ?? -1,
    );

    return [
      {
        completedAt: milestone.completed_at,
        kind: milestone.milestone_type_slug === "gym" ? "gym" : "league",
        milestoneId: milestone.milestone_id,
        name: milestone.milestone_name ?? "Unnamed milestone",
        state: milestone.is_completed
          ? "earned"
          : milestone === nextMilestone
            ? "next"
            : "todo",
        type: typeSlug && isPokemonTypeSlug(typeSlug) ? typeSlug : null,
      },
    ];
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
    nextName: nextMilestone?.milestone_name ?? null,
    stamps,
  };
};

/* A gym milestone's badge type, so its recorded moment wears the badge's medallion. */
export const getBadgeTypeByMilestoneId = (badgeCase: BadgeCase | null) => {
  return new Map(
    (badgeCase?.stamps ?? [])
      .filter((stamp) => stamp.kind === "gym" && stamp.type)
      .map((stamp) => [stamp.milestoneId, stamp.type as PokemonTypeSlug]),
  );
};
