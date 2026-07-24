import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";

import { getProgressSummaryItems } from "./progress-summary-model";
import { ProgressSummaryRow } from "./progress-summary-row";

type ProgressSummarySectionProps = {
  overview: MainlinePlayOverview | null;
};

export const ProgressSummarySection = ({
  overview,
}: ProgressSummarySectionProps) => {
  const progressItems = getProgressSummaryItems(overview);

  if (!progressItems.length) {
    return null;
  }

  return (
    <MainlinePlaySectionCard
      title="Progress Summary"
      action={<MainlinePlaySectionDestination label="Full progress" />}
      contentClassName="grid gap-4"
      showSeparator
    >
      {progressItems.map((item) => (
        <ProgressSummaryRow key={item.label} item={item} />
      ))}
    </MainlinePlaySectionCard>
  );
};
