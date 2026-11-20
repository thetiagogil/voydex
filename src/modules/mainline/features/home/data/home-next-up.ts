import type { MedallionContent } from "@/modules/mainline/features/plays/shared/components/medallion";
import { getMilestoneBadge } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import type { PlayBrowseStoryPosition } from "@/modules/mainline/features/plays/shared/types";
import {
  getMilestoneIcon,
  getMilestoneMedallion,
  isTrophyMilestone,
} from "@/modules/mainline/features/plays/shared/utils/milestone-icon";
import { appIcons } from "@/shared/components/app-icon";
import type { Json } from "@/shared/types/database.types";

/* What the journey card says comes next: a milestone, or the end of the story. */
export type HomeNextUp = {
  /* One line on what to do, or where it happens. */
  detail: string | null;
  medallion: MedallionContent;
  name: string;
};

/* The next milestone's row, as the journey card reads it. */
export type HomeNextMilestoneRow = {
  badge_refs: Json | null;
  category_name: string | null;
  description: string | null;
  milestone_name: string | null;
  milestone_type_slug: string | null;
};

/*
 * The journey card's "Next up": the next milestone with its medallion (its
 * badge for a gym, a gold trophy for the League, the calm blue for the
 * rest) and one line on it, or "Story complete" once every milestone is.
 * Null when the Play doesn't track Story or the milestone can't be read.
 */
export const toHomeNextUp = (
  position: PlayBrowseStoryPosition | null,
  row: HomeNextMilestoneRow | null,
  typeSlugById: ReadonlyMap<number, string>,
): HomeNextUp | null => {
  if (!position) {
    return null;
  }

  if (position.kind === "complete") {
    return {
      detail: "Every milestone recorded.",
      medallion: { icon: appIcons.milestones.hallOfFame, kind: "gold" },
      name: "Story complete",
    };
  }

  const typeSlug = row?.milestone_type_slug ?? "";

  return {
    detail: row?.description ?? row?.category_name ?? null,
    medallion: getMilestoneMedallion({
      badge: getMilestoneBadge({
        badgeRefs: row?.badge_refs ?? null,
        milestoneTypeSlug: typeSlug,
        typeSlugById,
      }),
      icon: getMilestoneIcon(typeSlug),
      isTrophy: isTrophyMilestone(typeSlug),
    }),
    name: row?.milestone_name ?? position.name,
  };
};
