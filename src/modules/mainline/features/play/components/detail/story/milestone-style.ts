import type { MainlinePlayMilestoneDetail } from "@/modules/mainline/shared/types/mainline.types";

export const getMilestoneTone = (
  milestone: MainlinePlayMilestoneDetail,
): "battle" | "decision" | "info" | "milestone" | "neutral" | "warning" => {
  if (milestone.milestone_type_slug === "decision") {
    return "decision";
  }

  if (milestone.category_slug?.includes("gym")) {
    return "warning";
  }

  if (milestone.category_slug?.includes("battle")) {
    return "battle";
  }

  if (milestone.category_slug?.includes("story")) {
    return "info";
  }

  return "milestone";
};
