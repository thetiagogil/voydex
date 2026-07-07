import { JourneyStatusPanel } from "@/modules/mainline/features/plays/detail/components/overview/journey-status/journey-status-panel";
import { RecentHistoryPanel } from "@/modules/mainline/features/plays/detail/components/overview/recent-history/recent-history-panel";
import { TeamPanel } from "@/modules/mainline/features/plays/detail/components/overview/team/team-panel";
import type { MainlinePlayPageData } from "@/modules/mainline/features/plays/shared/types";

type OverviewTabProps = {
  data: MainlinePlayPageData;
};

export const OverviewTab = ({ data }: OverviewTabProps) => {
  return (
    <div className="grid items-start gap-4 xl:grid-cols-[minmax(0,2fr)_minmax(18rem,1fr)]">
      <div className="grid min-w-0 gap-4">
        <JourneyStatusPanel data={data} />
        <RecentHistoryPanel events={data.timelinePreview} />
      </div>

      <TeamPanel
        gameSlug={data.play.game_slug}
        playId={data.play.play_id}
        team={data.teamPreview}
      />
    </div>
  );
};
