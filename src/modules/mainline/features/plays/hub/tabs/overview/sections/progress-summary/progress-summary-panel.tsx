import { getProgressSummaryItems } from "@/modules/mainline/features/plays/hub/tabs/overview/sections/progress-summary/progress-summary-model";
import { ProgressSummaryRow } from "@/modules/mainline/features/plays/hub/tabs/overview/sections/progress-summary/progress-summary-row";
import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { Button } from "@/shared/components/ui/button";

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
    <DetailSectionCard
      title="Progress Summary"
      action={
        <Button type="button" variant="ghost" size="xs" disabled>
          View all
        </Button>
      }
      contentClassName="grid gap-3"
    >
      {progressItems.map((item) => (
        <ProgressSummaryRow key={item.label} item={item} />
      ))}
    </DetailSectionCard>
  );
};
