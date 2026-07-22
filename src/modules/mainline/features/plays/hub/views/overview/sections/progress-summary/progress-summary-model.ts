import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";
import { appIcons, type AppIconComponent } from "@/shared/components/app-icon";

export type ProgressSummaryItem = {
  icon: AppIconComponent;
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
  explicitPercent: number | null | undefined;
  icon: AppIconComponent;
  label: string;
  totalCount: number | null | undefined;
}): ProgressSummaryItem | null => {
  if (!params.totalCount || params.totalCount <= 0) {
    return null;
  }

  return {
    icon: params.icon,
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
      explicitPercent: overview?.milestone_completion_percent,
      icon: appIcons.views.mainline.story,
      label: "Story",
      totalCount: storyTotalCount,
    }),
    createProgressSummaryItem({
      completedCount: pokedexCompletedCount,
      explicitPercent: overview?.pokedex_completion_percent,
      icon: appIcons.product.pokeball,
      label: "Pokedex",
      totalCount: pokedexTotalCount,
    }),
    createProgressSummaryItem({
      completedCount: collectibleCompletedCount,
      explicitPercent: overview?.collectible_completion_percent,
      icon: appIcons.product.collectible,
      label: "Collectibles",
      totalCount: collectibleTotalCount,
    }),
  ].filter((item): item is ProgressSummaryItem => Boolean(item));
};
