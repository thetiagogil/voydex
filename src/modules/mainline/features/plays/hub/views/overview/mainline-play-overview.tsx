import { JourneyStatusPanel } from "@/modules/mainline/features/plays/hub/views/overview/sections/journey-status/journey-status-panel";
import { ProgressSummaryPanel } from "@/modules/mainline/features/plays/hub/views/overview/sections/progress-summary/progress-summary-panel";
import { RecentHistoryPanel } from "@/modules/mainline/features/plays/hub/views/overview/sections/recent-history/recent-history-panel";
import { TeamPanel } from "@/modules/mainline/features/plays/hub/views/overview/sections/team/team-panel";
import type { MainlinePlayOverviewData } from "@/modules/mainline/features/plays/hub/types";

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
        <JourneyStatusPanel data={data} />
        <RecentHistoryPanel events={data.timelinePreview} />
      </div>

      <div className="grid min-w-0 auto-rows-max content-start items-start gap-4">
        <TeamPanel
          gameSlug={data.play.game_slug}
          href={appRoutes.mainlinePlayTeam(playId)}
          team={data.teamPreview}
        />
        <ProgressSummaryPanel overview={data.overview} />
      </div>
    </div>
  );
};
import { appRoutes } from "@/config/routes";
