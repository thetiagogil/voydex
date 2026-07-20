import { getProgressSummaryItems } from "@/modules/mainline/features/plays/hub/tabs/overview/sections/progress-summary/progress-summary-model";
import { ProgressSummaryRow } from "@/modules/mainline/features/plays/hub/tabs/overview/sections/progress-summary/progress-summary-row";
import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";

type ProgressSummaryPanelProps = {
  overview: MainlinePlayOverview | null;
};

export const ProgressSummaryPanel = ({
  overview,
}: ProgressSummaryPanelProps) => {
  const progressItems = getProgressSummaryItems(overview);

  if (!progressItems.length) {
    return null;
  }

  return (
    <MainlinePlaySectionCard
      title="Progress Summary"
      contentClassName="grid gap-4"
      showSeparator
    >
      {progressItems.map((item) => (
        <ProgressSummaryRow key={item.label} item={item} />
      ))}
    </MainlinePlaySectionCard>
  );
};
