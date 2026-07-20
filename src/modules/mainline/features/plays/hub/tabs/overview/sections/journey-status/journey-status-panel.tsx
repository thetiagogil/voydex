import { MilestoneSummary } from "@/modules/mainline/features/plays/hub/tabs/overview/sections/journey-status/milestone-summary";
import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import type { MainlinePlayHubData } from "@/modules/mainline/features/plays/hub/types";
import { appIcons } from "@/shared/components/app-icon";

type JourneyStatusPanelProps = {
  data: MainlinePlayHubData;
};

export const JourneyStatusPanel = ({ data }: JourneyStatusPanelProps) => {
  return (
    <MainlinePlaySectionCard
      title="Journey Status"
      contentClassName="p-0"
      showSeparator
    >
      <div className="grid md:grid-cols-2">
        <div className="p-4">
          <MilestoneSummary
            icon={appIcons.status.active}
            label="Last completed"
            milestone={data.lastCompletedMilestone}
            fallback="No completed milestones yet."
          />
        </div>
        <div className="border-app-surface-border/60 border-t p-4 md:border-t-0 md:border-l">
          <MilestoneSummary
            icon={appIcons.product.nextMilestone}
            label="Next up"
            milestone={data.nextMilestone}
            fallback="No next milestone available."
          />
        </div>
      </div>
    </MainlinePlaySectionCard>
  );
};
