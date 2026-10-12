import { appRoutes } from "@/config/routes";
import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import type { MainlinePlayOverviewData } from "@/modules/mainline/features/plays/hub/types";
import { appIcons } from "@/shared/components/app-icon";

import { MilestoneSummary } from "./journey-status/milestone-summary";
import { getProgressSummaryItems } from "./progress-summary/progress-summary-model";
import { ProgressSummaryRow } from "./progress-summary/progress-summary-row";

type JourneyProgressSectionProps = {
  data: MainlinePlayOverviewData;
  playId: string;
};

export const JourneyProgressSection = ({
  data,
  playId,
}: JourneyProgressSectionProps) => {
  const progressItems = getProgressSummaryItems(data.overview);

  return (
    <MainlinePlaySectionCard
      title="Journey & Progress"
      action={
        <MainlinePlaySectionDestination
          href={appRoutes.mainlinePlayProgressStory(playId)}
          label="Full story"
        />
      }
      contentClassName="p-0"
      showSeparator
    >
      <div className="grid lg:grid-cols-[minmax(0,3fr)_minmax(19rem,2fr)]">
        <div className="grid md:grid-cols-2">
          <div className="p-4">
            <MilestoneSummary
              icon={appIcons.status.active}
              label="Last completed"
              milestone={data.lastCompletedMilestone}
              fallback="No completed milestones yet."
            />
          </div>
          <div className="border-line border-t p-4 md:border-t-0 md:border-l">
            <MilestoneSummary
              icon={appIcons.product.nextMilestone}
              label="Next up"
              milestone={data.nextMilestone}
              fallback="No next milestone available."
            />
          </div>
        </div>

        <div className="border-line grid content-start gap-4 border-t p-4 lg:border-t-0 lg:border-l">
          <h3 className="text-muted-foreground text-xs font-medium tracking-wide uppercase">
            Progress summary
          </h3>
          {progressItems.length ? (
            progressItems.map((item) => (
              <ProgressSummaryRow key={item.label} item={item} />
            ))
          ) : (
            <p className="text-muted-foreground text-sm">
              Progress has not been recorded yet.
            </p>
          )}
        </div>
      </div>
    </MainlinePlaySectionCard>
  );
};
