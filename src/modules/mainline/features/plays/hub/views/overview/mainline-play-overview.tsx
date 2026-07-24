import { appRoutes } from "@/config/routes";
import type { MainlinePlayOverviewData } from "@/modules/mainline/features/plays/hub/types";

import { JourneyStatusSection } from "./sections/journey-status/journey-status-section";
import { ProgressSummarySection } from "./sections/progress-summary/progress-summary-section";
import { RecentHistorySection } from "./sections/recent-history/recent-history-section";
import { TeamSection } from "./sections/team/team-section";

type MainlinePlayOverviewProps = {
  data: MainlinePlayOverviewData;
  playId: string;
};

export const MainlinePlayOverview = ({
  data,
  playId,
}: MainlinePlayOverviewProps) => {
  return (
    <div className="grid items-start gap-3 sm:gap-4 lg:grid-cols-[minmax(0,3fr)_minmax(19rem,2fr)]">
      <div className="grid min-w-0 gap-4">
        <JourneyStatusSection data={data} />
        <RecentHistorySection events={data.timelinePreview} />
      </div>

      <div className="grid min-w-0 auto-rows-max content-start items-start gap-4">
        <TeamSection
          gameSlug={data.play.game_slug}
          href={appRoutes.mainlinePlayTeam(playId)}
          team={data.teamPreview}
        />
        <ProgressSummarySection overview={data.overview} />
      </div>
    </div>
  );
};
