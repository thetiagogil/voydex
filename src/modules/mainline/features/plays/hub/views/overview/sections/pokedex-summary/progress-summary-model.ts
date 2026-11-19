import { appRoutes } from "@/config/routes";
import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";

export type ProgressSummaryItem = {
  detail: string;
  href: string;
  label: string;
  percent: number;
};

const clampPercent = (value: number | null | undefined) => {
  if (typeof value !== "number" || Number.isNaN(value)) {
    return 0;
  }

  return Math.min(Math.max(Math.round(value), 0), 100);
};

const getProgressPercent = (
  explicitPercent: number | null | undefined,
  completedCount: number | null | undefined,
  totalCount: number | null | undefined,
) => {
  if (typeof explicitPercent === "number") {
    return clampPercent(explicitPercent);
  }

  if (!totalCount || totalCount <= 0) {
    return 0;
  }

  return clampPercent(((completedCount ?? 0) / totalCount) * 100);
};

const createProgressSummaryItem = (params: {
  completedCount: number | null | undefined;
  detail: string;
  explicitPercent: number | null | undefined;
  href: string;
  label: string;
  totalCount: number | null | undefined;
}): ProgressSummaryItem | null => {
  if (!params.totalCount || params.totalCount <= 0) {
    return null;
  }

  return {
    detail: params.detail,
    href: params.href,
    label: params.label,
    percent: getProgressPercent(
      params.explicitPercent,
      params.completedCount,
      params.totalCount,
    ),
  };
};

export const getProgressSummaryItems = (
  overview: MainlinePlayOverview | null,
  playId: string,
): ProgressSummaryItem[] => {
  const storyCompletedCount =
    overview?.completed_required_milestone_count ?? null;
  const storyTotalCount = overview?.required_milestone_count ?? null;
  const pokedexCompletedCount =
    overview?.caught_required_pokedex_species_count ?? null;
  const pokedexTotalCount = overview?.required_pokedex_species_count ?? null;
  const collectibleCompletedCount =
    overview?.collected_required_collectible_entry_count ?? null;
  const collectibleTotalCount =
    overview?.required_collectible_entry_count ?? null;

  return [
    createProgressSummaryItem({
      completedCount: storyCompletedCount,
      detail: `${storyCompletedCount ?? 0} of ${storyTotalCount ?? 0} milestones`,
      explicitPercent: overview?.milestone_completion_percent,
      href: appRoutes.mainlinePlayProgressStory(playId),
      label: "Story",
      totalCount: storyTotalCount,
    }),
    createProgressSummaryItem({
      completedCount: pokedexCompletedCount,
      detail: `${pokedexCompletedCount ?? 0} of ${pokedexTotalCount ?? 0} caught`,
      explicitPercent: overview?.pokedex_completion_percent,
      href: appRoutes.mainlinePlayProgressPokedex(playId),
      label: "Pokédex",
      totalCount: pokedexTotalCount,
    }),
    createProgressSummaryItem({
      completedCount: collectibleCompletedCount,
      detail: `${collectibleCompletedCount ?? 0} of ${collectibleTotalCount ?? 0} found`,
      explicitPercent: overview?.collectible_completion_percent,
      href: appRoutes.mainlinePlayProgressCollectibles(playId),
      label: "Collectibles",
      totalCount: collectibleTotalCount,
    }),
  ].filter((item): item is ProgressSummaryItem => Boolean(item));
};
