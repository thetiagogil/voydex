import { formatPlayDateTime } from "@/modules/mainline/features/plays/shared/display/play-formatters";
import type { MainlinePlayMilestone } from "@/modules/mainline/features/plays/hub/types";

export const formatMilestoneDate = (milestone: MainlinePlayMilestone) => {
  return formatPlayDateTime(
    milestone.completion_event_happened_at ?? milestone.completed_at,
    "",
  );
};
